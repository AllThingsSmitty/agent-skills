---
type: llm
criteria: |
  The agent should recommend ValidateOnStart to catch missing config at startup:
  - Mention `.ValidateDataAnnotations().ValidateOnStart()` or equivalent
  - Explain that this surfaces missing required config at startup rather than on the first request that uses it
---
