---
name: interface-mocking
tags: ["go-testing", "mocking"]
runs: 3
max_turns: 6
---

I have a `UserService` struct that queries the database directly using `*sql.DB`. I want to unit test `UserService.GetUser` without spinning up a real database. How do I mock the DB in Go?

```go
type UserService struct {
    db *sql.DB
}

func (s *UserService) GetUser(ctx context.Context, id int) (*User, error) {
    row := s.db.QueryRowContext(ctx, "SELECT id, name, email FROM users WHERE id = $1", id)
    var u User
    if err := row.Scan(&u.ID, &u.Name, &u.Email); err != nil {
        return nil, err
    }
    return &u, nil
}
```
