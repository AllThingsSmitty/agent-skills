---
type: llm
criteria: |
  The agent should establish a safety net before touching the code:
  - Check whether tests exist and are passing before refactoring
  - If no tests exist, recommend writing characterization tests first
  - Not jump straight into refactoring a class that has no mentioned test coverage
  An agent that starts proposing code changes without addressing test coverage fails this grader.
---
