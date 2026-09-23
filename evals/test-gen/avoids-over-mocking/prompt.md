---
name: "test-gen: warns about over-mocking risks"
tags: ["test-gen", "mocking"]
runs: 3
max_turns: 6
---

Write unit tests for this UserService. Mock out the database so we don't need a real DB connection.

```python
class UserService:
    def __init__(self, db):
        self.db = db

    def get_active_users(self):
        return self.db.query("SELECT * FROM users WHERE active = true")

    def deactivate_user(self, user_id):
        self.db.execute("UPDATE users SET active = false WHERE id = ?", [user_id])
```
