---
name: "py-async: recommends gather for concurrent coroutines"
tags: ["py-async", "concurrency"]
runs: 3
max_turns: 6
---

I have three independent API calls I need to make before I can return a response. Right now I'm doing them one at a time:

```python
async def get_dashboard(user_id: str) -> dict:
    user = await fetch_user(user_id)
    stats = await fetch_stats(user_id)
    notifications = await fetch_notifications(user_id)
    return {'user': user, 'stats': stats, 'notifications': notifications}
```

Is there a faster way?
