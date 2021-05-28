
local PlayerName = game:GetService("Players").LocalPlayer.Name
local WhiteListedPlayers = {
    "gamer_9470", "Rayveus", "Draco_Meteorite52k", "ElectryTwo", "potier21", "andrej2321"
}
if table.find(WhiteListedPlayers, PlayerName) then
    print("Whitelist 1 Passed")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TheSilasDev/AutoBroly/main/autobroly.lua"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TheSilasDev/AutoBroly/main/Auto%20Rejoin.lua"))()
else
    print("not cool")
    game:GetService("Players").LocalPlayer:Kick("Not Whitelisted")
end
wait(.5)
