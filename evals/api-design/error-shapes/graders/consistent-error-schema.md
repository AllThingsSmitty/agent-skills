---
type: llm
criteria: |
  The agent should define a consistent, structured error response shape:
  - A common envelope (e.g., type/code, message, details/context)
  - Distinguish between different error categories with appropriate HTTP status codes
  - Not just list HTTP status codes without defining the response body shape
  An agent that only talks about status codes without defining a JSON error body schema fails this grader.
---
