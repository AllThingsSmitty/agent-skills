---
type: llm
criteria: |
  The agent should recommend a typed alternative for API response shapes:
  - Suggest TypedDict, dataclass, or Pydantic for modeling known response shapes
  - Or recommend narrowing with `object` and isinstance checks when the shape is truly unknown
  - NOT stop at "don't use Any" without offering a workable path forward
---
