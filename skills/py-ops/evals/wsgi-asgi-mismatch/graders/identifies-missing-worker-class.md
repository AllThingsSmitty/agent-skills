---
type: llm
criteria: |
  The agent should identify that gunicorn needs the UvicornWorker class for ASGI apps:
  - Explain that plain gunicorn uses a WSGI worker which doesn't run FastAPI correctly
  - Recommend adding `--worker-class uvicorn.workers.UvicornWorker`
  - NOT just say "that's fine" or attribute the issue to worker count alone
---
