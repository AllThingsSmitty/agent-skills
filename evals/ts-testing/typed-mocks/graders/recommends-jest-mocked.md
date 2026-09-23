---
type: llm
criteria: |
  The agent should recommend `jest.mocked()` or `vi.mocked()` as the typed alternative to `as any`:
  - Show or describe using `jest.mocked(fetchUser)` to get a typed mock reference
  - Explain that this preserves the original function signature plus mock methods
  - NOT just validate the `as any` approach as acceptable
---
