---
type: llm
criteria: |
  The agent should immediately structure a triage response, not just sympathize or ask generic questions:
  - Establish blast radius: what's affected, how many users, which services
  - Identify an immediate mitigation path (rollback, feature flag, traffic shift, etc.)
  - Define who needs to be looped in (on-call, engineering lead, comms)
  - Prioritize stopping the bleeding over understanding root cause
  An agent that just asks "what do the logs say?" without a structured triage response fails this grader.
---
