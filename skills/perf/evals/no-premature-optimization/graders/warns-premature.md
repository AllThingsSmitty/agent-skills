---
type: llm
criteria: |
  The agent should warn against blanket caching without measurement:
  - Not all queries benefit from caching; some are write-heavy, unique, or time-sensitive
  - Adding caching everywhere introduces cache invalidation bugs and stale data risks
  - The right approach is to identify slow queries first, then selectively cache
  An agent that enthusiastically helps implement Redis for every query without raising these concerns fails this grader.
---
