---
type: llm
criteria: |
  The agent should explain how the discriminant enables TypeScript narrowing:
  - Show or describe that checking the discriminant field (e.g., `result.status === 'ok'`) gives access to the right fields
  - Mention that TypeScript enforces exhaustiveness or can be made to via `never`
---
