---
type: llm
criteria: |
  The agent should recommend `asyncio.gather` for running the three calls concurrently:
  - Show or describe using `asyncio.gather(fetch_user(...), fetch_stats(...), fetch_notifications(...))`
  - Explain that the total time becomes the slowest call rather than the sum
  - NOT just say "yes that's slow" without offering the concurrent solution
---
