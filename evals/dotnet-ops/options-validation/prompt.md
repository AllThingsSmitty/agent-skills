---
name: "dotnet-ops: recommends IOptions with ValidateOnStart"
tags: ["dotnet-ops", "configuration"]
runs: 3
max_turns: 6
---

My ASP.NET Core app reads config like this in my services:

```csharp
public class EmailService
{
    private readonly string _smtpHost;

    public EmailService(IConfiguration config)
    {
        _smtpHost = config["Email:SmtpHost"];
    }

    public async Task SendAsync(string to, string subject)
    {
        // crashes here with NullReferenceException if SmtpHost wasn't configured
        var client = new SmtpClient(_smtpHost);
        ...
    }
}
```

Is there a better pattern?
