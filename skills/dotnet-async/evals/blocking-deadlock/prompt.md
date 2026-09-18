---
name: "dotnet-async: identifies blocking on async as deadlock risk"
tags: ["dotnet-async", "correctness"]
runs: 3
max_turns: 6
---

I have a synchronous method that needs to call an async one. I did this to bridge the gap:

```csharp
public User GetUser(string id)
{
    return GetUserAsync(id).Result;
}
```

It works in my unit tests but occasionally hangs in production. What's going on?
