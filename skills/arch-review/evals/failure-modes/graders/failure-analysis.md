---
type: llm
criteria: |
  The agent should identify the cascading failure risk in this synchronous call chain:
  - If Supplier API is slow or down, the entire chain blocks for up to 30 seconds
  - A slow upstream causes thread exhaustion in the services below it
  - Recommend patterns: circuit breakers, timeouts with fallbacks, async decoupling, or caching supplier pricing
  An agent that doesn't identify the cascade risk and just describes what the architecture does fails this grader.
---
