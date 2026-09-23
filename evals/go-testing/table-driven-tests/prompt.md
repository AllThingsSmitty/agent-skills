---
name: table-driven-tests
tags: ["go-testing", "table-driven"]
runs: 3
max_turns: 6
---

I have a function `Add(a, b int) int` and I wrote separate test functions for each case. Is there a better way to organize these?

```go
func TestAdd_positive(t *testing.T) {
    result := Add(2, 3)
    if result != 5 {
        t.Errorf("expected 5, got %d", result)
    }
}
func TestAdd_negative(t *testing.T) {
    result := Add(-1, -2)
    if result != -3 {
        t.Errorf("expected -3, got %d", result)
    }
}
func TestAdd_zero(t *testing.T) {
    result := Add(0, 0)
    if result != 0 {
        t.Errorf("expected 0, got %d", result)
    }
}
```
