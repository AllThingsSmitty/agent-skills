---
name: "db-review: flags migration risks under concurrent load"
tags: ["db-review", "migrations"]
runs: 3
max_turns: 6
---

Is it safe to run this migration on our production database? The table has about 8 million rows and receives roughly 500 writes per second.

```sql
ALTER TABLE orders ADD COLUMN shipping_tier VARCHAR(20) NOT NULL DEFAULT 'standard';
```
