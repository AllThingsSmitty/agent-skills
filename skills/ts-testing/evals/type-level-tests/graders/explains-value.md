---
type: llm
criteria: |
  The agent should explain why type-level tests add value beyond runtime tests:
  - Note that a function can return the correct value at runtime while having a broken or widened type signature
  - Mention that type tests catch regressions in generic utilities when the implementation changes
---
