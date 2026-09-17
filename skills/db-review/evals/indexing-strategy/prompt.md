---
name: "db-review: recommends indexing strategy from query patterns"
tags: ["db-review", "indexes"]
runs: 3
max_turns: 6
---

Review this schema. Our main queries are: looking up orders by user_id, filtering by status, and sorting by created_at descending.

```sql
CREATE TABLE orders (
    id BIGINT PRIMARY KEY,
    user_id BIGINT NOT NULL,
    status VARCHAR(20) NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    created_at TIMESTAMP NOT NULL
);
```
