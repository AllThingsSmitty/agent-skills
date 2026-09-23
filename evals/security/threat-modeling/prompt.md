---
name: "security: applies threat modeling to login endpoint"
tags: ["security", "auth"]
runs: 3
max_turns: 6
---

Can you do a security review of our login endpoint? It accepts a username and password, validates credentials against the database, and returns a JWT token.
