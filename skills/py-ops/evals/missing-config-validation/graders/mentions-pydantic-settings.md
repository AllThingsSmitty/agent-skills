---
type: llm
criteria: |
  The agent should recommend a structured config pattern rather than ad-hoc env var reads:
  - Mention pydantic-settings, a Settings class, or equivalent as a clean solution
  - Or show a simple validation pattern that checks all required vars at import/startup time
---
