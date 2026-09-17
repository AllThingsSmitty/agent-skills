---
type: llm
criteria: |
  The agent should address the risks of over-mocking:
  - Mocked tests that only verify call sequences rather than behavior
  - The risk that mocks drift from the real implementation
  - Consider recommending a real test database or in-memory alternative for integration tests
  Simply writing mock-heavy tests without any of these concerns fails this grader.
---
