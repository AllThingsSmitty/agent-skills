---
name: "refactor: requires tests before touching code"
tags: ["refactor", "safety"]
runs: 3
max_turns: 6
---

This class is a mess. Refactor it:

```python
class OrderProcessor:
    def process(self, o, u, p):
        if p == "card":
            if o["total"] > 1000:
                d = o["total"] * 0.05
                o["total"] -= d
            r = self.charge_card(u["card"], o["total"])
            if r:
                self.send_email(u["email"], o)
                self.update_inventory(o["items"])
        elif p == "cash":
            self.record_cash(o)
            self.send_email(u["email"], o)
            self.update_inventory(o["items"])
```
