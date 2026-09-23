---
name: "debug: finds root cause, not just symptom fix"
tags: ["debug", "root-cause"]
runs: 3
max_turns: 6
---

This function keeps throwing a KeyError. Just wrap it in a try/except to suppress the error.

```python
def get_user_role(user_id):
    return users[user_id]["role"]
```
