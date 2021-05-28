
local PlayerName = game:GetService("Players").LocalPlayer.Name
local WhiteListedPlayers = {"gamer_9470", "Rayveus"}
if table.find(WhiteListedPlayers, PlayerName) then
    print("Whitelist 1 Passed")
else
    print("not cool")
    game:GetService("Players").LocalPlayer:Kick("Not Whitelisted")
end
wait(.5)
