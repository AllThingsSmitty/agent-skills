---
name: "node-async: identifies event loop blocking"
tags: ["node-async", "performance"]
runs: 3
max_turns: 6
---

My Node.js API feels sluggish under load. Here's my main route handler:

```ts
app.get("/export", (req, res) => {
  const data = fs.readFileSync("./data/report.json");
  const parsed = JSON.parse(data.toString());
  const sorted = parsed.sort((a, b) => b.value - a.value);
  res.json(sorted);
});
```

Any ideas why it's slow?
