---
name: "node-async: catches fire-and-forget promise danger"
tags: ["node-async", "reliability"]
runs: 3
max_turns: 6
---

I have this function that sends a welcome email after user registration. It's not critical path so I don't want to wait for it:

```ts
async function registerUser(data: RegisterDto) {
  const user = await db.users.create(data);
  sendWelcomeEmail(user.email); // intentionally not awaited
  return user;
}
```

Is this pattern okay?
