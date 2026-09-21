---
name: "go-types: guides generics usage"
tags: ["go-types", "generics"]
runs: 3
max_turns: 6
---

I just upgraded to Go 1.21 and I want to take advantage of generics. I have a bunch of utility functions like this one:

```go
func Max(a, b int) int {
    if a > b {
        return a
    }
    return b
}
```

How do I make `Max` generic so it works with any numeric type? And should I go through all my similar utility functions and convert them to generics too?
