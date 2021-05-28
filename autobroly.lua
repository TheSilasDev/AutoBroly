-- LOADCHECK
if not game:IsLoaded() then
    local loadedcheck = Instance.new("Message", workspace)
    loadedcheck.Text = "Loading..."
    game.Loaded:Wait(14)
    loadedcheck:Destroy()
end
-- CREDITS
game:GetService("StarterGui"):SetCore(
    "SendNotification",
    {
        Title = "Autobroly Premium",
        Text = "By Silas"
    }
)
local plr = game.Players.LocalPlayer
game.Workspace:WaitForChild("Live")
game.Workspace.Live:WaitForChild(plr.Name)
game:GetService("RunService").RenderStepped:connect(
    function()
        game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.SP.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.SP.Text = "Made By Silas"
    end
)
-- ANTI KICK
game:WaitForChild("CoreGui")
game.CoreGui:WaitForChild("RobloxPromptGui")
game.CoreGui.RobloxPromptGui:WaitForChild("promptOverlay")
_G.xd = true 
while _G.xd do wait()
if game:GetService("CoreGui").RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt") then 
game:GetService("TeleportService"):Teleport(536102540, LocalPlayer)
end
end
-- RANDOM LOCALS
local brolyworld
local plrhealth = game:GetService("Players").LocalPlayer.Character.Humanoid.Health
local Live = game:WaitForChild("Workspace").Live
local Char = Live:WaitForChild(game.Players.LocalPlayer.Name)
local ki = Char:WaitForChild("Ki").value
local runserv = game:GetService("RunService")
-- TWEENSERVICE FUNCTION 
function TweenServ(IDK, SelectedPad, Length)
    local TweenServ =
        game:GetService("TweenService"):Create(
        IDK,
        TweenInfo.new(Length, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
        {CFrame = SelectedPad}
    )
    TweenServ:Play()
    TweenServ.Completed:Wait()
end
-- QUEUE TELEPORT
if getgenv().Settings.EarthOrQueue == "Queue" and game.PlaceId == 536102540 then
        game:GetService("TeleportService"):Teleport(3565304751)
        print("Teleported to queue")
    end

-- EARTH PAD TELEPORT
if getgenv().Settings.EarthOrQueue == "Earth" and game.PlaceId == 536102540 then
    Char.LowerTorso:Destroy()
    wait(.2)
    TweenServ(Char:WaitForChild("HumanoidRootPart"), CFrame.new(2750, 3944, -2267), 1)
end

-- QUEUE PAD TELEPORT AND BROLY WORLD CHECK
-- QUEUE PAD TELEPORT
if getgenv().Settings.EarthOrQueue == "Queue" then 
if game.PlaceId == 3565304751 then
    TweenServ(Char:WaitForChild("HumanoidRootPart"), CFrame.new(-2000, 238, -85), 2)
    wait(1)
    Char.LowerTorso:Destroy()
    local Pads = {}
    for i, v in pairs(game:WaitForChild("Workspace"):GetChildren()) do
        if v.Name:find("BrolyTeleport") then
            table.insert(Pads, v)
        end
    end
    local pad = Pads[math.random(1, 7)]
    TweenServ(Char.HumanoidRootPart, pad.PrimaryPart.CFrame, 1)
    wait(45)
    game:GetService("TeleportService"):Teleport(3565304751)
elseif game.PlaceId == 2050207304 then
    local brolyworld = true
    local B = Live:WaitForChild("Broly BR")
    local plr = game.Players.LocalPlayer
    wait(4)
end
end
-- ANTILEECH 
function antileechactualfunction()
    game:GetService("TeleportService"):Teleport(3565304751, game.Players.LocalPlayer)
end
local antileechfunction
if getgenv().Settings.AllowAntiLeechBypassPlayer == true then
    for i, v in pairs(game:GetService("Players"):GetChildren()) do
        if v ~= game:GetService("Players").LocalPlayer and string.match(getgenv().Settings.AntiLeechBypassPlayerName, v.Name) then
            print("Autobroly Started")
            antileechfunction = false
        else
            antileechactualfunction()
            print("AntiLeech used")
        end
    end
end
wait(.3)
if getgenv().Settings.antileech == true then
    if antileechfunction == false then
        print("antileech bypassed")
    elseif 
        #game.Players:GetPlayers() > 1 then
        wait()
        antileechactualfunction()
    end
end
-- FORMS
if game.PlaceId == 2050207304 then
    if plr.PlayerGui:WaitForChild("HUD").Bottom.Stats.Race.Val.Text == "Android" then
        game.Players.LocalPlayer.Backpack.ServerTraits.Transform:FireServer("g")
    else
        game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer(
            {[1] = "x"},
            CFrame.new(0, 0, 0),
            InputObject
        )
        wait(4)
        game.Players.LocalPlayer.Backpack.ServerTraits.Transform:FireServer(getgenv(),Settings.FormType)
        wait(1)
        game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer(
            {[1] = "xoff"},
            CFrame.new(0, 0, 0),
            InputObject
        )
    end
end
-- GODFORM 
if getgenv().Settings.GodForm == true then
    runserv.RenderStepped:connect(function()
        if plrhealth < 15/100 * plrhealth and ki < 15/100 * ki then
            game.Players.LocalPlayer.Backpack.ServerTraits.Transform:FireServer("g")
        end
    end)
end
-- TP TO BROLY 
local B = Live:WaitForChild("Broly BR")
local TW = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], TweenInfo.new(2, Enum.EasingStyle.Quad), {CFrame = B.HumanoidRootPart.CFrame})
TW:Play()
-- USE PET TO DAMAGE 
if brolyworld == true and getgenv().Settings.UsePetToDamage == true then
    wait(10)
    game:GetService("Players").LocalPlayer.Backpack.ServerTraits.Assist:FireServer()
end
-- USE PET TO HEAL 
if brolyworld == true and getgenv().Settings.UsePetToHeal == true then
    repeat 
        if Char.Humanoid.Health < getgenv().Settings.UsePetToHealAtHealthPer/100 * plrhealth then
            game:GetService("Players").LocalPlayer.Backpack.ServerTraits.Assist:FireServer()
        end
    until Char.Humanoid.Health == plrhealth * 2
end

-- MOVESPAM
game.Workspace.Camera.FieldOfView = 120
local Char = game:GetService("Players").LocalPlayer.Character
game:GetService("RunService").RenderStepped:connect(
            function()
                Char.Humanoid:ChangeState(11)
                game.Workspace.CurrentCamera.CFrame =
                    CFrame.new(Char.HumanoidRootPart.Position, B.HumanoidRootPart.Position) * CFrame.new(0, 2, 10)
                if Char:FindFirstChild("Attacking") then
                    Char.Attacking:Destroy()
                end
                if Char:FindFirstChild("Action") then
                    Char.Action:Destroy()
                end
                if Char:FindFirstChild("Slow") then
                    Char.Slow:Destroy()
                end
                if Char:FindFirstChild("Using") then
                    Char.Using:Destroy()
                end
                if Char:FindFirstChild("MoveStart") then
                    Char.MoveStart:Destroy()
                end
                if Char.Humanoid.Health < 1.5 then
                    game:GetService("TeleportService"):Teleport(3565304751)
                end
                game.Players.LocalPlayer.Backpack.ServerTraits.EatSenzu:FireServer(true)
                if Char.Humanoid.Health < 50 then
                    game.Players.LocalPlayer.Backpack.ServerTraits.Transform:FireServer("h")
                end
                if game.Players.LocalPlayer.Character.Ki.Value < 32 then
                    _G.HardPunch = true
                    local A_1 = {
                        [1] = "m2"
                    }
                    local A_2 =
                        CFrame.new(
                        -5885.95947,
                        17.9874992,
                        -4159.84717,
                        -0.104352206,
                        0.396405816,
                        -0.912125587,
                        -0,
                        0.917132735,
                        0.398581922,
                        0.994540393,
                        0.0415929034,
                        -0.0957048237
                    )
                    local A_3 = nil
                    local A_4 = false
                    local Event = game:GetService("Players").LocalPlayer.Backpack.ServerTraits.Input
                    Event:FireServer(A_1, A_2, A_3, A_4)
                    wait()
                    _G.HardPunch = true
                end
                Char.HumanoidRootPart.CFrame =
                    game.Workspace.Live["Broly BR"].HumanoidRootPart.CFrame * CFrame.new(0, 0, 4.20)
                Char.HumanoidRootPart.CFrame = CFrame.new(Char.HumanoidRootPart.Position, B.HumanoidRootPart.Position)
            end
        )
        game.Players.LocalPlayer.Backpack["Dragon Crush"].Parent = Char
        Char["Dragon Crush"].Activator["Flip"]:Destroy()
        Char["Dragon Crush"].Activator["Throw"]:Destroy()
        Char["Dragon Crush"].Activator["Blocked"]:Destroy()
        Char["Dragon Crush"].Activator["HitDown"]:Destroy()
        Char["Dragon Crush"].Activator["BoneBreak"]:Destroy()
        wait(4)
        Char["Dragon Crush"]:Activate()
        wait(1)
        Char["Dragon Crush"]:Deactivate()
        Char["Dragon Crush"].Parent = game.Players.LocalPlayer.Backpack
        wait(1)
        repeat
game.Workspace.Live['Broly BR'].LowerTorso.Anchored =
game.Workspace.Live['Broly BR'].UpperTorso.Anchored
            game:GetService("RunService").RenderStepped:Wait()
            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if
                    v.Name == Move1 or
                    v.Name == Move2 or 
                    v.Name == Move3 or 
                    v.Name == Move4 or 
                    v.Name == Move5 or
                    v.Name == Move6 or
                    v.Name == Move7 or
                    v.Name == Move8 or
                    v.Name == Move9 or
                    v.Name == Move10 or
                    v.Name == Move11 or
                    v.Name == Move12 or
                    v.Name == Move13
                 then
                    v.Parent = game:GetService("Workspace").Live[game.Players.LocalPlayer.Name]
                    wait()
                    v:Activate()
                    v:Deactivate()
                    v.Parent = game.Players.LocalPlayer.Backpack
                end
            end
        until B.Humanoid.Health < .1
        if getgenv().Settings.EarthOrQueue == "Queue" then
        game:GetService("TeleportService"):Teleport(3565304751)
        print("Teleported to queue")
        else
            game:GetService("TeleportService"):Teleport(536102540)
            print("Teleported to earth")
        end
