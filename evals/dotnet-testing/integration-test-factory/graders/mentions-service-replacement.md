---
type: llm
criteria: |
  The agent should mention replacing real dependencies (database, external services) in the test factory:
  - Describe using `WithWebHostBuilder` + `ConfigureServices` to swap in test doubles
  - Explain that this keeps tests isolated from real infrastructure
---
