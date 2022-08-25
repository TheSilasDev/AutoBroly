
local PlayerName = game:GetService("Players").LocalPlayer.Name
local WhiteListedPlayers = {
    "gamer_9470", "Rayveus", "ElectryTwo", "potier21", "andrej2321", "fordelletedbyroblox", "Draco_Meteorite52k", "1Synde", "LxstCaII", "TheDemonK1ngDiablo"
}
if table.find(WhiteListedPlayers, PlayerName) then
    print("Whitelist 1 Passed")
else
    print("not cool")
    game:GetService("Players").LocalPlayer:Kick("Not Whitelisted")
end
wait(.5)
