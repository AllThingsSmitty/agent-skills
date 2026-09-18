---
type: llm
criteria: |
  The agent should recommend validating all required config at startup, not on first use:
  - Explain that failing fast at startup gives a clear error rather than a runtime crash mid-request
  - Show or describe raising an error immediately if a required env var is missing
  - NOT just recommend wrapping individual calls in try/except
---
