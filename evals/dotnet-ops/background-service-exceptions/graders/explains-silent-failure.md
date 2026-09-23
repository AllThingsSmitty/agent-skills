---
type: llm
criteria: |
  The agent should explain that unhandled exceptions in ExecuteAsync stop the background service silently:
  - The host logs the exception but does not restart the service or stop the process by default
  - The app continues running while the background service is dead
  - NOT just suggest wrapping everything in try/catch without explaining why the job stopped
---
