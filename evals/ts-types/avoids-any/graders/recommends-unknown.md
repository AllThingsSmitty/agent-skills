---
type: llm
criteria: |
  The agent should recommend `unknown` over `any` as the safer alternative:
  - Explain that `unknown` requires narrowing before use, preserving type safety
  - Contrast it with `any` which disables checking entirely
  - NOT just say "sure, use any" or leave any as the only option presented
---
