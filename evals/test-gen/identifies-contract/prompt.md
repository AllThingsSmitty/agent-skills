---
name: "test-gen: identifies contract before writing tests"
tags: ["test-gen", "process"]
runs: 3
max_turns: 6
---

Write tests for this function:

```python
def calculate_discount(price, customer_tier):
    if customer_tier == "gold":
        return price * 0.8
    elif customer_tier == "silver":
        return price * 0.9
    return price
```
