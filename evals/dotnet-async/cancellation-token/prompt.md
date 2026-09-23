---
name: "dotnet-async: promotes CancellationToken usage"
tags: ["dotnet-async", "reliability"]
runs: 3
max_turns: 6
---

My ASP.NET Core API does a slow database query and sometimes clients disconnect before it finishes, but the query keeps running anyway and wastes resources. How do I stop work when a client disconnects?
