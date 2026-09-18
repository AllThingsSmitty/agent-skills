---
name: "py-testing: recommends parametrize over repeated tests"
tags: ["py-testing", "test-design"]
runs: 3
max_turns: 6
---

I'm testing a password validation function and I have a bunch of separate test cases:

```python
def test_valid_password_long():
    assert validate_password('Abcdef123!') is True

def test_valid_password_with_special():
    assert validate_password('Hello@World1') is True

def test_invalid_password_too_short():
    assert validate_password('Ab1!') is False

def test_invalid_password_no_number():
    assert validate_password('Abcdefgh!') is False

def test_invalid_password_no_special():
    assert validate_password('Abcdefgh1') is False
```

Is there a better pattern?
