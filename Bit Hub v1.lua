--By Candyman#9229
--Join Discord For Updates
--https://discord.gg/4S6SBgC4DN

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Bit Hub (https://discord.gg/4S6SBgC4DN)", "Sentinel")
local Main = Window:NewTab("Main")
local TPs = Window:NewTab("TP's")
local Movement = Window:NewTab("Movement")
local OverClock = 100
local player = game.Players.LocalPlayer

local main = Main:NewSection("Main")

main:NewButton("Auto Sell BitCoin", "Auto Sells For You", function()
    while (true)  do
        wait(1)
        game:GetService("ReplicatedStorage").Events.ExchangeMoney:FireServer(true)
        end
end)

main:NewButton("Auto Sell Solaris", "Auto Sells For You", function()
    while (true)  do
        wait(1)
        game:GetService("ReplicatedStorage").Events.ExchangeMoney:FireServer(false)
        end
end)

main:NewButton("AntiAFK", "No AFK Kick", function()
    local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

end)



local Overclock = Main:NewSection("Auto Overclock")

Overclock:NewSlider("Overclock Efficiency", "How Much Overclock you want", 150, 5, function(OverClok) 
    OverClock = OverClok
end)

Overclock:NewButton("Auto Overclock", "Overclocks For You", function()
    if(true)then
        wait(1)
        game:GetService("ReplicatedStorage").Events.Overclk:InvokeServer(OverClock)
        end
end)

local movement = Movement:NewSection("Movement")

movement:NewSlider("WalkSpeed", "Changes WalkSpeed", 500, 20, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)


movement:NewSlider("JumpHight", "Changes JumpHight", 500, 50, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)


movement:NewButton("NoClip (Press F)", "Walk Thru Walls", function()
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
 
if key == "f" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
end)

local tp = TPs:NewSection("Teleports")

tp:NewDropdown("Location", "Pick Location", {"Starter Shop", "Bit Shop", "Cave Shop", "Cave Gen Shop", "Flux Cards INC", "DanT Shop Inc", "Tables & More", "MINER TOOLZ", "HSV", "Chypset", "GenEX", "Solaris Electronics", "SOLARIS GENERATORS", "OptiX", "PRISM WORKS", "XENO"}, function(currentOption)
if(currentOption == "Starter Shop") then
    player.Character:SetPrimaryPartCFrame(CFrame.new(210.622162, 5.50522709, 76.3558731, 0.37892586, -2.5826516e-08, -0.92542702, -2.3546944e-08, 1, -3.75492206e-08, 0.92542702, 3.60193475e-08, 0.37892586))
elseif(currentOption == "Bit Shop") then
    player.Character:SetPrimaryPartCFrame(CFrame.new(225.280914, 5.57847404, 172.246689, 0.165050209, -9.901858e-09, -0.98628515, 3.11166133e-08, 1, -4.8323292e-09, 0.98628515, -2.98922771e-08, 0.165050209))
elseif(currentOption == "Cave Shop") then
    player.Character:SetPrimaryPartCFrame(CFrame.new(113.180511, 16.3003178, -267.189209, 0.0205679573, 7.27786258e-08, 0.999788463, -5.28024913e-08, 1, -7.17077597e-08, -0.999788463, -5.13164409e-08, 0.0205679573))    
elseif(currentOption == "Cave Gen Shop") then
    player.Character:SetPrimaryPartCFrame(CFrame.new(23.3833122, 16.4566383, -273.127472, 0.0394768231, -4.51955131e-08, 0.99922049, -1.24503279e-08, 1, 4.57226541e-08, -0.99922049, -1.42456074e-08, 0.0394768231))        
elseif(currentOption == "Flux Cards INC") then
    player.Character:SetPrimaryPartCFrame(CFrame.new(-138.000488, 32.9369011, -227.76387, 0.997655988, -7.19964799e-09, 0.0684292316, 3.24268634e-09, 1, 5.79366848e-08, -0.0684292316, -5.75789869e-08, 0.997655988))
elseif(currentOption == "DanT Shop Inc") then
    player.Character:SetPrimaryPartCFrame(CFrame.new(-164.523468, 33.025116, -213.793274, -0.037323717, -8.02441988e-08, 0.999303222, -1.34580995e-08, 1, 7.97974948e-08, -0.999303222, -1.04703828e-08, -0.037323717))          
elseif(currentOption == "Tables & More") then
    player.Character:SetPrimaryPartCFrame(CFrame.new(-231.398117, 33.0892944, 36.1474304, -0.0994670466, 1.61723896e-08, -0.995040834, -6.41840048e-09, 1, 1.68945906e-08, 0.995040834, 8.06702616e-09, -0.0994670466))
elseif(currentOption == "MINER TOOLZ") then
    player.Character:SetPrimaryPartCFrame(CFrame.new(-226.817932, 32.9318542, 116.753441, -0.902110159, 5.32116706e-09, -0.431505829, -2.98876413e-09, 1, 1.85799607e-08, 0.431505829, 1.80508408e-08, -0.902110159))
elseif(currentOption == "HSV") then
    player.Character:SetPrimaryPartCFrame(CFrame.new(-539.744263, 33.6492996, 144.12912, -0.0173906535, 2.10733671e-08, 0.999848783, -3.39864314e-08, 1, -2.16676899e-08, -0.999848783, -3.43581092e-08, -0.0173906535))
elseif(currentOption == "Chypset") then
    player.Character:SetPrimaryPartCFrame(CFrame.new(-210.836075, 22.7923527, 296.814453, -0.599075854, -6.93177995e-08, 0.80069226, 5.58041124e-09, 1, 9.07475837e-08, -0.80069226, 5.88328781e-08, -0.599075854))
elseif(currentOption == "GenEX") then
    player.Character:SetPrimaryPartCFrame(CFrame.new(-140.259216, 37.9175224, 13828.6963, 0.986300766, 2.81707582e-08, -0.164956883, -2.45313796e-08, 1, 2.40998688e-08, 0.164956883, -1.97230996e-08, 0.986300766))
elseif(currentOption == "Solaris Electronics") then
    player.Character:SetPrimaryPartCFrame(CFrame.new(6.94969606, 37.9075432, 13752.2686, 0.921892583, -3.01202334e-08, -0.387445539, -1.9130213e-09, 1, -8.22924235e-08, 0.387445539, 7.66059642e-08, 0.921892583))
elseif(currentOption == "SOLARIS GENERATORS") then
    player.Character:SetPrimaryPartCFrame(CFrame.new(49.740715, 37.907547, 13801.8721, 0.245691031, 3.32426495e-08, -0.969348192, 3.1345067e-08, 1, 4.22385398e-08, 0.969348192, -4.07619147e-08, 0.245691031))
elseif(currentOption == "OptiX") then
    player.Character:SetPrimaryPartCFrame(CFrame.new(-260.212799, 37.9075432, 13752.2959, 0.752578437, 1.59168341e-08, -0.658502638, 8.56482263e-09, 1, 3.3959676e-08, 0.658502638, -3.11972777e-08, 0.752578437))
elseif(currentOption == "PRISM WORKS") then
    player.Character:SetPrimaryPartCFrame(CFrame.new(148.26413, 38.0318375, 13936.2197, -0.540789127, -9.10281628e-08, -0.841158211, -7.72677566e-09, 1, -1.03250031e-07, 0.841158211, -4.933705e-08, -0.540789127))
elseif(currentOption == "XENO") then
    player.Character:SetPrimaryPartCFrame(CFrame.new(72.2759399, 37.8848839, 14023.5703, -0.985583782, -2.28781349e-09, 0.169188142, 9.57762936e-09, 1, 6.93155542e-08, -0.169188142, 6.99367035e-08, -0.985583782))
                end
end)
