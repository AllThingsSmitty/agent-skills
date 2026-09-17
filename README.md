# Agent Skills

A collection of Claude Code skills for software development workflows. Stack-agnostic, principles-based — designed to work across any language or framework.

## Skills

### General Dev

| Skill | Description |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------- |
| [debug](skills/debug/SKILL.md) | Hypothesis-driven debugging: frame the problem, form a hypothesis, narrow scope, prove it, fix the root cause |
| [test-gen](skills/test-gen/SKILL.md) | Generate tests that verify contracts and edge cases, not just happy paths |
| [refactor](skills/refactor/SKILL.md) | Safe, disciplined refactoring with test-first discipline and small reversible steps |
| [pr-prep](skills/pr-prep/SKILL.md) | Pre-PR checklist: diff review, test coverage, migration safety, blast radius, PR description |

### Web / Distributed Systems

| Skill | Description |
| ----------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| [api-design](skills/api-design/SKILL.md) | REST and GraphQL API design: resource modeling, HTTP semantics, error shapes, versioning, breaking changes |
| [db-review](skills/db-review/SKILL.md) | Schema design, indexing strategy, query analysis, and safe migrations under concurrent load |
| [perf](skills/perf/SKILL.md) | Performance investigation: profiling, N+1 detection, caching strategy, load testing |
| [incident](skills/incident/SKILL.md) | Incident response: triage, blast radius, mitigation, communication cadence, post-mortem |
| [arch-review](skills/arch-review/SKILL.md) | Distributed systems review: service boundaries, failure modes, consistency, observability, operability |
| [security](skills/security/SKILL.md) | Security review: threat modeling, injection, auth/authz, secrets, dependencies, crypto, web headers |

## Installation

**macOS / Linux:**

```bash
# Install specific skills into the current project
./install.sh debug test-gen pr-prep

# Install all skills
./install.sh all

# Install globally (available in every project)
./install.sh --global all
```

**Windows (PowerShell):**

```powershell
# Install specific skills into the current project
.\install.ps1 debug, test-gen, pr-prep

# Install all skills
.\install.ps1 all

# Install globally (available in every project)
.\install.ps1 -Global all
```

Skills install into `.claude/agents/` in the current directory, or `~/.claude/agents/` with the global flag. Claude Code loads them automatically — no further configuration needed.

## Usage

Skills trigger automatically when you use relevant language in your prompts. You can also invoke them explicitly:

```
/debug  — start a debugging session
/test-gen  — generate tests for the current file or function
/refactor  — begin a refactoring
/pr-prep  — run a pre-PR readiness check
```

## Roadmap

- [ ] Language-specific tiers (TypeScript/Node, Python, .NET)
