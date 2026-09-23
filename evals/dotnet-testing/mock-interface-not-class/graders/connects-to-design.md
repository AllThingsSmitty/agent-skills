---
type: llm
criteria: |
  The agent should connect the testability problem to a design improvement:
  - A class that's hard to mock is a signal that its callers are tightly coupled to the implementation
  - Introducing an interface improves testability AND makes the dependency explicit and swappable
---
