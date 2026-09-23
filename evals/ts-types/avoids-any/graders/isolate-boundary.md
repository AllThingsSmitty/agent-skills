---
type: llm
criteria: |
  The agent should advise isolating untyped code at the boundary rather than letting `any` propagate:
  - Mention parsing/validation at the entry point (e.g., Zod, type guards, or manual narrowing)
  - Advise against letting `any` flow through the rest of the codebase
---
