---
type: llm
criteria: |
  The agent should identify the risks of this migration and how to run it safely:
  - Table lock risk on MySQL (or ACCESS EXCLUSIVE lock on Postgres) during ALTER TABLE
  - The NOT NULL constraint combined with a DEFAULT may cause a full table rewrite on some engines
  - At 500 writes/second, even a brief lock means dropped writes or queued connections
  - Recommend alternatives: add nullable first, backfill, then add NOT NULL constraint; or use pt-online-schema-change / gh-ost
  Saying "yes it's safe" without any caveats fails this grader.
---
