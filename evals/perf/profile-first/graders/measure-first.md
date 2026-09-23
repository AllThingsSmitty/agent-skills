---
type: llm
criteria: |
  The agent should insist on measuring before proposing solutions:
  - Ask for or suggest profiling/tracing the request to find the actual bottleneck
  - Not immediately suggest caching, query optimization, or scaling without knowing where time is spent
  - Establish a performance baseline before recommending changes
  An agent that immediately recommends specific optimizations without asking to measure first fails this grader.
---
