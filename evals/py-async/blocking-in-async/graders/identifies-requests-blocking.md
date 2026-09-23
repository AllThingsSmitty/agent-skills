---
type: llm
criteria: |
  The agent should identify `requests` as a synchronous library that blocks the event loop:
  - Explain that using `requests` inside an `async def` blocks all concurrent requests
  - Recommend an async HTTP client (`httpx`, `aiohttp`) as the fix
  - NOT just suggest adding `await` to the `requests.get` call (it's not awaitable)
---
