---
type: llm
criteria: |
  The agent should immediately and clearly identify this as a SQL injection vulnerability:
  - Explain why string concatenation with user input is dangerous
  - Show what an attacker could inject (e.g., ' OR '1'='1)
  - Recommend parameterized queries / prepared statements as the fix
  An agent that gives a vague "this might have security issues" without clearly naming SQL injection and showing the fix fails this grader.
---
