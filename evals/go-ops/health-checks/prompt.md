---
name: health-checks
tags: ["go-ops", "health-checks"]
runs: 3
max_turns: 6
---

I'm deploying a Go service to Kubernetes. The service connects to PostgreSQL and Redis. I need to set up liveness and readiness probes.

What should each probe check, and can you show me how to implement the HTTP handlers for both?
