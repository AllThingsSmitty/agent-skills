---
type: llm
criteria: |
  The agent should advise on a structured communication plan during the incident:
  - Define an update cadence (e.g., every 15-30 minutes for a P1)
  - Identify who gets updates: engineering stakeholders, customer-facing teams, exec if warranted
  - Recommend a single source of truth (status page, Slack thread, incident channel)
  - Distinguish internal updates from customer-facing messaging
  An agent that only talks about debugging and doesn't address communication structure fails this grader.
---
