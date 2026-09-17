#!/usr/bin/env bash
set -euo pipefail

# Install agent-skills into a Claude Code agents directory.
# Usage:
#   ./install.sh                    # interactive: lists skills, prompts for selection
#   ./install.sh debug test-gen     # install specific skills
#   ./install.sh all                # install every skill
#   ./install.sh --global debug     # install to ~/.claude/agents/ instead of ./.claude/agents/

SKILLS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/skills"
GLOBAL=false
SELECTED=()

# Parse flags
ARGS=()
for arg in "$@"; do
  case "$arg" in
    --global) GLOBAL=true ;;
    *) ARGS+=("$arg") ;;
  esac
done

# Discover available skills (any directory containing a SKILL.md)
AVAILABLE=()
for dir in "$SKILLS_DIR"/*/; do
  skill="$(basename "$dir")"
  if [[ -f "$dir/SKILL.md" ]]; then
    AVAILABLE+=("$skill")
  fi
done

if [[ ${#AVAILABLE[@]} -eq 0 ]]; then
  echo "No skills found in $SKILLS_DIR" >&2
  exit 1
fi

# Determine target directory
if $GLOBAL; then
  TARGET_DIR="$HOME/.claude/agents"
else
  TARGET_DIR="$(pwd)/.claude/agents"
fi

# Resolve which skills to install
if [[ ${#ARGS[@]} -eq 0 ]]; then
  # Interactive mode
  echo "Available skills:"
  for skill in "${AVAILABLE[@]}"; do
    echo "  - $skill"
  done
  echo ""
  echo "Enter skill names separated by spaces, or 'all' to install everything:"
  read -r -a SELECTED
elif [[ ${#ARGS[@]} -eq 1 && "${ARGS[0]}" == "all" ]]; then
  SELECTED=("${AVAILABLE[@]}")
else
  SELECTED=("${ARGS[@]}")
fi

# Validate selections
INVALID=()
for skill in "${SELECTED[@]}"; do
  if [[ ! -f "$SKILLS_DIR/$skill/SKILL.md" ]]; then
    INVALID+=("$skill")
  fi
done

if [[ ${#INVALID[@]} -gt 0 ]]; then
  echo "Unknown skill(s): ${INVALID[*]}" >&2
  echo "Available: ${AVAILABLE[*]}" >&2
  exit 1
fi

# Install
mkdir -p "$TARGET_DIR"

for skill in "${SELECTED[@]}"; do
  src="$SKILLS_DIR/$skill"
  dest="$TARGET_DIR/$skill"
  if [[ -d "$dest" ]]; then
    echo "Updating: $skill → $dest"
    rm -rf "$dest"
  else
    echo "Installing: $skill → $dest"
  fi
  cp -r "$src" "$dest"
done

echo ""
echo "Done. Installed ${#SELECTED[@]} skill(s) to $TARGET_DIR"
if ! $GLOBAL; then
  echo "Tip: use --global to install to ~/.claude/agents/ for use across all projects."
fi
