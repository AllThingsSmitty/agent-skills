---
name: "py-ops: recommends fail-fast config validation"
tags: ["py-ops", "reliability"]
runs: 3
max_turns: 6
---

My Python app reads config from environment variables like this:

```python
import os

DATABASE_URL = os.environ.get('DATABASE_URL')
SECRET_KEY = os.environ.get('SECRET_KEY')

def connect():
    return psycopg2.connect(DATABASE_URL)  # crashes here if DATABASE_URL is None
```

Sometimes it starts up fine but crashes on the first request when a required env var is missing. How should I handle this better?
