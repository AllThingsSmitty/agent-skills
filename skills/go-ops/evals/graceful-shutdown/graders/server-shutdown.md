---
type: llm
criteria: |
  The agent should show using `http.Server` with a `Shutdown(ctx)` call (not `Close()`) so in-flight requests are allowed to complete before the server stops accepting new connections. Should mention giving the shutdown a deadline (e.g., 30-second context timeout) so the process doesn't hang indefinitely.
---
