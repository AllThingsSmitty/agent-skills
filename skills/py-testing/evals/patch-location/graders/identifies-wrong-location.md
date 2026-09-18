---
type: llm
criteria: |
  The agent should identify that the patch target is the definition location, not the usage location:
  - Explain that `patch` replaces the name in the module where it's used, not where it's defined
  - Provide the correct patch target: `myapp.notifications.send_email`
  - NOT just say "patch isn't working" without explaining the underlying rule
---
