---
type: regex
pattern: "profile|trace|measure|benchmark|baseline|bottleneck|where.*time|flame"
flags: "i"
match: contains
target: last_message
---
