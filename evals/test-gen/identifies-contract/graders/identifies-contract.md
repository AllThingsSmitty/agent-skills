---
type: llm
criteria: |
  The agent should identify the behavioral contract of the function before writing tests:
  - What the function promises for each customer tier (gold, silver, other)
  - Edge cases: negative prices, unknown tiers, zero price
  - The tests should verify behavior (what the function promises) not implementation details
  A response that just writes tests without discussing the contract or edge cases fails this grader.
---
