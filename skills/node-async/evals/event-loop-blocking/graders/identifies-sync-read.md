---
type: llm
criteria: |
  The agent should identify `fs.readFileSync` as a blocking call that holds the event loop:
  - Explain that synchronous I/O blocks all concurrent requests while it runs
  - Recommend `fs.promises.readFile` or `fs.readFile` with await/callback
  - NOT focus only on the sort performance without addressing the sync I/O
---
