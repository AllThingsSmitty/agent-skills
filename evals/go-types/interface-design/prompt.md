---
name: "go-types: guides interface design"
tags: ["go-types", "interfaces"]
runs: 3
max_turns: 6
---

I'm building a Go service package for user management and I've defined this interface to represent my data layer:

```go
type UserRepository interface {
    GetUser(id string) (*User, error)
    ListUsers() ([]*User, error)
    CreateUser(u *User) error
    UpdateUser(u *User) error
    DeleteUser(id string) error
    SearchUsers(query string) ([]*User, error)
    GetUserByEmail(email string) (*User, error)
    CountUsers() (int, error)
}
```

I put this interface in the `userrepo` package alongside the implementation. Is this idiomatic Go? How should I structure it?
