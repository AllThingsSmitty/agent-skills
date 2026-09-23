---
type: llm
criteria: |
  The agent should recommend handling SIGTERM for graceful shutdown:
  - Explain that Kubernetes sends SIGTERM before killing the pod
  - Show or describe listening for SIGTERM and calling `server.close()` to drain connections
  - NOT just recommend tuning Kubernetes `terminationGracePeriodSeconds` without addressing the app-side handler
---
