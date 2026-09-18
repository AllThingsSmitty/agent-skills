---
type: llm
criteria: |
  The agent should recommend the IOptions<T> pattern over direct IConfiguration access:
  - Suggest a typed options class bound to the configuration section
  - Inject `IOptions<EmailOptions>` instead of `IConfiguration`
  - NOT just say "check for null before using the value"
---
