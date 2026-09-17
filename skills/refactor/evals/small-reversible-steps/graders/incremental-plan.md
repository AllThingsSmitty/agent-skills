---
type: llm
criteria: |
  The agent should plan the decomposition incrementally rather than proposing a big-bang rewrite:
  - Break the split into multiple small, independently-committable steps
  - Each step should leave the code in a working state
  - Avoid proposing to rewrite everything at once or create all new classes simultaneously
  A response that immediately produces a complete restructured version without discussing steps fails this grader.
---
