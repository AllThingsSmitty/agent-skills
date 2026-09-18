---
type: llm
criteria: |
  The agent should warn against suppressing warnings with `!` to silence them quickly:
  - Explain that the null-forgiving operator bypasses the safety guarantee
  - Advise fixing the actual nullability issue rather than suppressing the warning
---
