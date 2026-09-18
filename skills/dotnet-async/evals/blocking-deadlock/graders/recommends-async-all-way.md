---
type: llm
criteria: |
  The agent should recommend making the call chain async rather than blocking:
  - The fix is to make `GetUser` async and await `GetUserAsync`
  - NOT just recommend `.GetAwaiter().GetResult()` as a safe alternative without caveats
---
