---
name: "py-async: identifies blocking calls in async context"
tags: ["py-async", "performance"]
runs: 3
max_turns: 6
---

My FastAPI app feels slow under load even though I'm using async everywhere. Here's one of my endpoints:

```python
@app.get('/users/{user_id}')
async def get_user(user_id: str):
    response = requests.get(f'http://internal-api/users/{user_id}')
    return response.json()
```

What's going on?
