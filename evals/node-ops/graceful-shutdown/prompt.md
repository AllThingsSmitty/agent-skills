---
name: "node-ops: recommends graceful shutdown"
tags: ["node-ops", "reliability"]
runs: 3
max_turns: 6
---

We're deploying our Node.js API to Kubernetes and users are occasionally seeing errors during deployments. The rolling update kills old pods while new ones come up. How do we stop dropping requests?
