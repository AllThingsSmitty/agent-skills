# Contributing

This project is released with a [Contributor Code of Conduct](CODE-OF-CONDUCT.md). By participating, you agree to abide by its terms.

## Contents

- [Getting Started](#getting-started)
- [Ways to Contribute](#ways-to-contribute)
- [Skill Structure](#skill-structure)
- [Eval Structure](#eval-structure)
- [Pull Request Guidelines](#pull-request-guidelines)

## Getting Started

No build step, no package manager, no setup. Skills are markdown files. Clone the repo and start editing.

```bash
git clone https://github.com/your-username/agent-skills.git
cd agent-skills
```

To test a skill locally, install it into a project using the install script and try it in Claude Code:

```bash
./install.sh debug        # macOS/Linux
.\install.ps1 debug       # Windows (PowerShell)
```

## Ways to Contribute

### New skills

Add a skill for a domain, workflow, or language tier not yet covered. See [Skill Structure](#skill-structure) for what a skill needs.

Good candidates:
- Domains where Claude tends to give shallow or incorrect guidance without grounding
- Language-specific skills (Python, .NET, Go, etc.) that complement the general-purpose tier
- Workflow skills that bridge existing skills together

### Improving existing skills

- Better guidance in a section that's vague or incomplete
- New sections covering gaps in the current content
- More concrete examples
- Cleaner trigger descriptions (see below — these matter a lot)

### New evals

Each skill ships with at least two evals. Adding evals that test untested behaviors is high-value. See [Eval Structure](#eval-structure).

### Documentation

Updates to the README, usage examples, or install scripts are welcome. Keep examples practical and verified working.

## Skill Structure

Each skill lives at `skills/{name}/SKILL.md`. The frontmatter has two required fields:

```markdown
---
name: skill-name
description: Trigger description — see guidance below.
---
```

### The description field

This is the most important field. Claude Code uses it to decide when to activate the skill. A weak description means the skill fires on the wrong prompts, or doesn't fire at all.

A good description:
- States the domain clearly and early
- Lists specific phrasings a user might say that should trigger it
- Includes common synonyms and adjacent terms
- Is specific enough to avoid false positives on unrelated prompts

```markdown
# Too vague — fires on almost anything
description: Help with code quality and best practices.

# Good — specific domain, concrete trigger phrases
description: TypeScript type system advisor. Use this skill when designing types,
  working with generics, narrowing union types, or when the user says "how do I
  type this", "why is TypeScript complaining", "should I use any here", or
  "how do I narrow this".
```

### Skill content

Skills should be opinionated, not encyclopedic. The goal is to ground Claude in a specific, defensible approach — not to cover every possible option.

- Lead with the core principle, not background
- Use concrete examples (code snippets, not just prose)
- Include a "what to watch for in code review" section where applicable
- Keep sections focused — if a section is getting long, it's probably a separate skill

## Eval Structure

Each eval lives at `skills/{name}/evals/{eval-name}/` and contains:

```
evals/
  eval-name/
    prompt.md       ← the user prompt to test
    graders/
      grader-1.md   ← one grading criterion
      grader-2.md   ← another grading criterion
```

### prompt.md

```markdown
---
name: "skill-name: short description of what this eval tests"
tags: ["skill-name", "relevant-tag"]
runs: 3
max_turns: 6
---

The user prompt that should trigger and exercise the skill.
```

A good eval prompt:
- Is a realistic thing a user would actually say
- Exercises a specific behavior the skill is supposed to produce
- Isn't so obvious that any response would pass

### graders

Each grader tests one specific criterion:

```markdown
---
type: llm
criteria: |
  What the agent should do:
  - Specific observable behavior 1
  - Specific observable behavior 2
  - What it should NOT do (negative criterion)
---
```

Each eval should have two graders — one for the primary behavior, one for a supporting behavior or negative criterion. Keep graders focused: one thing per grader, stated as a verifiable claim about the response.

## Pull Request Guidelines

- Search open and closed PRs before submitting to avoid duplicates.
- Keep changes focused — one skill or fix per PR.
- New skills must include at least two evals with two graders each.
- The trigger `description` in the frontmatter should be reviewed carefully — it's the hardest part to get right and has the most impact.
- PR title should be clear: "Add `py-types` skill" or "Improve `debug` eval coverage for async errors".
- Check spelling and grammar — skill content is read by other developers.

If a maintainer asks for changes, update your branch and push new commits to the same PR.

Thank you for contributing!
