---
type: llm
criteria: |
  The agent should request or plan to review the actual diff/changes before giving the PR a green light:
  - Ask to see the diff, the changed files, or a description of what changed
  - Not assume the PR is ready without knowing what's in it
  - Treat PR prep as a checklist exercise, not a rubber-stamp
  An agent that provides a generic checklist without seeking information about the actual changes fails this grader.
---
