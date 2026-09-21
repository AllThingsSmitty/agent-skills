---
type: llm
---

The agent should recommend adding a context.Context parameter as the first argument to processItems so the caller can signal cancellation. The fix requires replacing the simple range loop with a select statement inside a for loop that also listens on ctx.Done(), so the goroutine exits when the context is cancelled rather than waiting indefinitely for the channel to close.

The agent should show or clearly describe corrected code equivalent to:

```go
func processItems(ctx context.Context, items <-chan Item) {
    go func() {
        for {
            select {
            case <-ctx.Done():
                return
            case item, ok := <-items:
                if !ok {
                    return
                }
                process(item)
            }
        }
    }()
}
```

The agent should note that defer cancel() must be called by the caller after creating the context so resources are released, and that this pattern gives the caller full control over the goroutine's lifetime without requiring the channel to be closed.
