---
name: "ts-types: recommends discriminated unions for state"
tags: ["ts-types", "modeling"]
runs: 3
max_turns: 6
---

I have a fetch result type that can be loading, success, or error. Right now I have it as:

```ts
type FetchResult = {
  loading: boolean;
  data?: User;
  error?: string;
};
```

Is there a better way to model this?
