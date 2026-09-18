---
type: llm
criteria: |
  The agent should flag the unhandled rejection risk:
  - Explain that if `sendWelcomeEmail` rejects, Node.js (v15+) will crash the process or emit an unhandled rejection
  - NOT just say "that's fine" without addressing the rejection case
---
