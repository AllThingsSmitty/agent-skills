---
type: llm
criteria: |
  The agent should note that concurrency applies because the calls are independent:
  - Mention that `gather` is appropriate when results don't depend on each other
  - Note that if one call depended on the result of another, sequential awaiting would still be needed for that dependency
---
