---
name: "arch-review: identifies cascading failure risks"
tags: ["arch-review", "failure-modes"]
runs: 3
max_turns: 6
---

Review this architecture: our Order Service calls the Inventory Service synchronously to check stock, which in turn calls the Supplier API synchronously to get live pricing. All calls are blocking with a 30-second timeout.
