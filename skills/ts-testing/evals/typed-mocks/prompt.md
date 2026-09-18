---
name: "ts-testing: steers toward typed mocks"
tags: ["ts-testing", "mocking"]
runs: 3
max_turns: 6
---

I'm trying to mock a module in my Jest tests but TypeScript keeps complaining about the types. I just cast the mock to `any` to shut it up. Here's the pattern I'm using:

```ts
import { fetchUser } from './api';
jest.mock('./api');

const mockFetch = fetchUser as any;
mockFetch.mockResolvedValue({ id: '1', name: 'Alice' });
```

Is there a better way?
