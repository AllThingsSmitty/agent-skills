---
name: "py-ops: identifies WSGI/ASGI server mismatch"
tags: ["py-ops", "deployment"]
runs: 3
max_turns: 6
---

I built a FastAPI app and I'm deploying it with gunicorn like this:

```bash
gunicorn myapp.main:app --workers 4 --bind 0.0.0.0:8000
```

It seems to work, but I'm getting some warnings and performance feels off under load. Is there anything wrong with this setup?
