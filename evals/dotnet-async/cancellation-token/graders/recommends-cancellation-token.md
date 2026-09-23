---
type: llm
criteria: |
  The agent should recommend injecting CancellationToken into the action and threading it through:
  - Show or describe accepting `CancellationToken ct` as an action parameter (ASP.NET Core provides it automatically)
  - Pass `ct` to the database query and any other async calls in the chain
---
