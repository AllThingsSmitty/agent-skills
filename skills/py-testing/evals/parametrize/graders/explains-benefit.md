---
type: llm
criteria: |
  The agent should explain why parametrize is better than separate functions:
  - Each case gets its own pass/fail status in the output
  - Adding a new case is one line, not a new function
  - The logic under test is written once, reducing drift between cases
---
