---
type: llm
criteria: |
  The agent should explain why this causes slowness under load specifically:
  - Connect the blocking call to the single-threaded event loop model
  - Explain that every concurrent request stalls while the synchronous call runs
---
