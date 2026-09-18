---
type: llm
criteria: |
  The agent should recommend exiting after an uncaught exception, not continuing:
  - Explain that after an uncaught exception the process state is indeterminate
  - Advise logging the error and calling `process.exit(1)`, then letting the process manager restart
  - NOT endorse the "catch and continue" pattern as safe
---
