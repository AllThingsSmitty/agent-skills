---
type: llm
criteria: |
  The agent should advise against using a plain untyped dict for structured data:
  - Explain that `dict` loses the shape and mypy can't check field access
  - Recommend either TypedDict or dataclass as appropriate to the use case
---
