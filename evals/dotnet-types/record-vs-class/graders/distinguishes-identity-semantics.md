---
type: llm
criteria: |
  The agent should explain the core distinction: value equality (record) vs reference identity (class):
  - Records are equal when their data is equal; classes are equal when they're the same object
  - For a domain entity like an Order that has a unique ID and mutable lifecycle state, class is more appropriate
  - For data transfer objects or value objects (Money, Address), record is more appropriate
---
