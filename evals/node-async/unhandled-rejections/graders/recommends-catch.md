---
type: llm
criteria: |
  The agent should recommend an explicit `.catch()` handler for intentional fire-and-forget:
  - Show or describe attaching `.catch((err) => logger.error(...))` on the unawaited call
  - Confirm that fire-and-forget is acceptable as a pattern when the rejection is handled
---
