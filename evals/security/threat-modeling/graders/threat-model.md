---
type: llm
criteria: |
  The agent should apply a structured security review to the login endpoint, covering multiple threat categories:
  - Brute force / credential stuffing protection (rate limiting, lockout)
  - SQL injection if credentials are used in queries
  - Token security: JWT signing, expiry, storage recommendations
  - Timing attacks on credential comparison
  - Input validation
  An agent that only mentions one or two issues without systematic threat coverage fails this grader.
---
