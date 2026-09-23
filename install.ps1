# Install proven-skills into a Claude Code skills directory.
# Usage:
#   .\install.ps1                     # interactive: lists skills, prompts for selection
#   .\install.ps1 debug, test-gen     # install specific skills
#   .\install.ps1 all                 # install every skill
#   .\install.ps1 -Global debug       # install to ~/.claude/skills/ instead of .\.claude\skills\

param(
    [switch]$Global,
    [Parameter(ValueFromRemainingArguments)]
    [string[]]$Skills
)

$ErrorActionPreference = 'Stop'
$SkillsDir = Join-Path $PSScriptRoot 'skills'

# Discover available skills (any directory containing a SKILL.md)
$Available = Get-ChildItem -Path $SkillsDir -Directory |
    Where-Object { Test-Path (Join-Path $_.FullName 'SKILL.md') } |
    Select-Object -ExpandProperty Name

if ($Available.Count -eq 0) {
    Write-Error "No skills found in $SkillsDir"
    exit 1
}

# Determine target directory
if ($Global) {
    $TargetDir = Join-Path (Join-Path $HOME '.claude') 'skills'
} else {
    $TargetDir = Join-Path (Join-Path (Get-Location) '.claude') 'skills'
}

# Resolve which skills to install
$Selected = @()

if ($Skills.Count -eq 0) {
    # Interactive mode
    Write-Host "Available skills:"
    $Available | ForEach-Object { Write-Host "  - $_" }
    Write-Host ""
    $selection = Read-Host "Enter skill names separated by spaces, or 'all' to install everything"
    $Skills = $selection -split '\s+' | Where-Object { $_ }
}

if ($Skills.Count -eq 1 -and $Skills[0] -eq 'all') {
    $Selected = $Available
} else {
    $Selected = $Skills
}

# Validate selections
$Invalid = $Selected | Where-Object { -not (Test-Path (Join-Path (Join-Path $SkillsDir $_) 'SKILL.md')) }

if ($Invalid) {
    Write-Error "Unknown skill(s): $($Invalid -join ', ')`nAvailable: $($Available -join ', ')"
    exit 1
}

# Install
if (-not (Test-Path $TargetDir)) {
    New-Item -ItemType Directory -Path $TargetDir -Force | Out-Null
}

foreach ($skill in $Selected) {
    $src  = Join-Path $SkillsDir $skill
    $dest = Join-Path $TargetDir $skill

    if (Test-Path $dest) {
        Write-Host "Updating:   $skill -> $dest"
        Remove-Item -Recurse -Force $dest
    } else {
        Write-Host "Installing: $skill -> $dest"
    }

    Copy-Item -Recurse $src $dest
}

Write-Host ""
Write-Host "Done. Installed $($Selected.Count) skill(s) to $TargetDir"
if (-not $Global) {
    Write-Host "Tip: use -Global to install to ~/.claude/skills/ for use across all projects."
}
