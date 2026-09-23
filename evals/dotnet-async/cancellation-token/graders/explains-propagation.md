---
type: llm
criteria: |
  The agent should explain that cancellation requires propagation through the whole call chain:
  - The token must be passed to every downstream async call to have effect
  - A token accepted but not passed further provides no cancellation benefit
---
