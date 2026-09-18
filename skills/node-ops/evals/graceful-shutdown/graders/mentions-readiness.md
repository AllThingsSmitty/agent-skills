---
type: llm
criteria: |
  The agent should connect the readiness probe to the shutdown sequence:
  - Mention that the readiness endpoint should return 503 once shutdown begins
  - Explain this is how the load balancer stops routing new traffic to the draining pod
---
