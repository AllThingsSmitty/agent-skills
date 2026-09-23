---
type: llm
criteria: |
  The agent should recommend defining a narrow interface for the database operations UserService actually needs (e.g., a UserRepository interface with one or two methods), then injecting it into UserService instead of *sql.DB directly. Should NOT recommend mocking *sql.DB directly or using a library that patches concrete types.
---
