---
type: llm
criteria: |
  The agent should identify the risk surface of this PR and what could break:
  - The middleware change could affect every request across all services
  - The non-nullable schema change requires a safe migration strategy (backfill, default, deploy order)
  - Identify who or what is downstream and could be impacted
  An agent that doesn't flag the broad blast radius of these two changes fails this grader.
---
