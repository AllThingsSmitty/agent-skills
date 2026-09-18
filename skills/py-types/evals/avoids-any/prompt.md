---
name: "py-types: steers away from Any"
tags: ["py-types", "type-safety"]
runs: 3
max_turns: 6
---

I'm parsing API responses in Python and the shape varies per endpoint, so I've been typing everything as `Any`. Mypy stops complaining and it's easier. Is that fine?
