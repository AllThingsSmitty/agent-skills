---
type: llm
criteria: |
  The agent should recommend a discriminated union with a shared literal discriminant field:
  - Show a union type with a `status` (or similar) literal field
  - Explain that it prevents impossible combinations like `{ loading: true, data: x, error: y }`
  - NOT just tweak the optional fields approach without addressing the core modeling problem
---
