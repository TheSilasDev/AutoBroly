-- KEY CHECK
if getgenv().PublicKey == "K6d2Jfswe48dlHlsjdH" then
    print("Key Whitelisted")
    game:GetService("StarterGui"):SetCore(
    "SendNotification",
    {
        Title = "Key Whitelisted",
        Text = "By Silas"
    }
)
    else
    game:GetService("Players").LocalPlayer:Kick("Not Whitelisted")
end
