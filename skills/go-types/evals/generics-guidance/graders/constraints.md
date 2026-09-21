---
type: llm
criteria: |
  The agent should show or mention using a constraint (such as constraints.Ordered or a custom interface) to restrict the type parameter, not just `any`. Should NOT show a generic that accepts `any` for a Max function since that wouldn't compile without an ordering constraint.
---
