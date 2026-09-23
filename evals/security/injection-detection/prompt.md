---
name: "security: identifies injection vulnerability immediately"
tags: ["security", "injection"]
runs: 3
max_turns: 6
---

Is there anything wrong with this code?

```python
def get_user(email):
    query = "SELECT * FROM users WHERE email = '" + email + "'"
    return db.execute(query)
```
