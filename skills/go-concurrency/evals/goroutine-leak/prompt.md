---
name: goroutine-leak
tags:
  - go-concurrency
  - goroutines
runs: 3
max_turns: 6
---

A colleague shared this Go function with you and asked for a review. Take a look at the code below and identify any concurrency problems. Explain what the issue is and how you would fix it.

```go
func processItems(items <-chan Item) {
    go func() {
        for item := range items {
            process(item)
        }
    }()
}
```

What happens if the caller abandons the operation and never closes the `items` channel? How would you fix this?
