---
type: llm
---

The agent should recommend catching OS signals (SIGTERM and SIGINT) rather than using `log.Fatal` directly. Should show or describe using `signal.NotifyContext` or `signal.Notify` with a channel to detect when the process should shut down.
