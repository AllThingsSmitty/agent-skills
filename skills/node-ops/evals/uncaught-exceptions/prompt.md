---
name: "node-ops: advises exit on uncaught exception"
tags: ["node-ops", "reliability"]
runs: 3
max_turns: 6
---

My Node app sometimes gets into a weird state and starts returning 500s for everything. I think it's uncaught exceptions. I added this to keep it running:

```ts
process.on("uncaughtException", (err) => {
  console.error("Caught error, continuing:", err);
  // keep running
});
```

Is this the right approach?
