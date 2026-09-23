---
type: regex
pattern: "lock|concurrent|downtime|backfill|rewrite|pt-online|gh-ost|zero.downtime|nullable first"
flags: "i"
match: contains
target: last_message
---
