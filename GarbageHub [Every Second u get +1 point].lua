--                                        /\{Library}/\
local GarbageHub = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = GarbageHub:MakeWindow({
Name = "Garbage Hub | Every Second You Get +1 Points", 
HidePremium = false, 
SaveConfig = false, 
ConfigFolder = "GarbageHubOrion"
})

--                                      /\{Tables}/\
local TypeEggs = {}
TypeEggs[1] = "Noob"
TypeEggs[2] = "Starter"
TypeEggs[3] = "Rare"
TypeEggs[4] = "Pro"
TypeEggs[5] = "Epic"
TypeEggs[6] = "Legendary"
TypeEggs[7] = "Mythical"
TypeEggs[8] = "Godly"
TypeEggs[9] = "Dark"
TypeEggs[10] = "Void"

local Mode = {}
Mode[1] = "Not Safe"
Mode[2] = "Safe"

local TeleportOptions = {}
TeleportOptions[1] = "None"
TeleportOptions[2] = "Spawn"
TeleportOptions[3] = "Stage 2"
TeleportOptions[4] = "Stage 3"
TeleportOptions[5] = "Stage 4"
TeleportOptions[6] = "Stage 5"
TeleportOptions[7] = "Stage 6"
TeleportOptions[8] = "Stage 7"
TeleportOptions[9] = "Stage 8"
TeleportOptions[10] = "Stage 9"
TeleportOptions[11] = "Rebirth"
--                                     /\{Getgenv}/\
getgenv().AutoWins = false
getgenv().AutoRebirth = false
getgenv().AutoHatch = false
getgenv().TripleHatch = false
getgenv().SelectEggs = "Noob"
getgenv().SelectMode = "Not Safe"
getgenv().SafeMode = false
getgenv().Safe = false
getgenv().FakeStats = false
getgenv().FakeWins = ""
getgenv().FakePoints = ""
getgenv().FakeRebirth = ""
getgenv().SelectStage = "None"
--                                   /\{Functions}/\
function AutoWins() 
while getgenv().AutoWins do wait()
pcall(function()
firetouchinterest(game.Workspace.Wins.Stage9,game.Players.LocalPlayer.Character.HumanoidRootPart,0)
firetouchinterest(game.Workspace.Wins.Stage9,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
end)
end
end


function AutoRebirth()
while getgenv().AutoRebirth do wait()
pcall(function()
firetouchinterest(Workspace.Model.RebirthTouch,game.Players.LocalPlayer.Character.HumanoidRootPart,0)
firetouchinterest(Workspace.Model.RebirthTouch,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
end)
end
end

function AutoHatch()
while getgenv().AutoHatch do wait(0.5)
local args = {
               [1] = getgenv().SelectEggs,
               [2] = "Single"
           }
           game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("EggOpened"):InvokeServer(unpack(args))
end
end
function TripleHatch()
while getgenv().AutoHatch do wait(0.5)
local args = {
               [1] = getgenv().SelectEggs,
               [2] = "Triple"
           }
           game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("EggOpened"):InvokeServer(unpack(args))
end
end
function ManualHatch()
local args = {
               [1] = getgenv().SelectEggs,
               [2] = "Single"
           }
           game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("EggOpened"):InvokeServer(unpack(args))
end
function SafeMode()
while getgenv().SafeMode do wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(999,999,999)
firetouchinterest(game.Workspace.Wins.Stage9,game.Players.LocalPlayer.Character.HumanoidRootPart,0)
firetouchinterest(game.Workspace.Wins.Stage9,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
end
--Checker So u dont Fall From The Void And died.
if getgenv().SafeMode == false then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(517, -0, 10167)
end
end

function FakeStats()
while getgenv().FakeStats do wait()
game.Players.LocalPlayer.leaderstats.Wins.Value = getgenv().FakeWins
game.Players.LocalPlayer.leaderstats.Rebirth.Value = getgenv().FakeRebirth
game.Players.LocalPlayer.leaderstats.Points.Value = getgenv().FakePoints
end
end

function TeleportPlayer()
    if getgenv().SelectStage == "Spawn" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(517, -0, 10167)
    elseif getgenv().SelectStage == "Stage 2" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(451, -0, 10169)
    elseif getgenv().SelectStage == "Stage 3" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(417, -0, 10171)
    elseif getgenv().SelectStage == "Stage 4" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(378, -0, 10171)
    elseif getgenv().SelectStage == "Stage 5" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(318, -0, 10170)
    elseif getgenv().SelectStage == "Stage 6" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(251, -0, 10169)
    elseif getgenv().SelectStage == "Stage 7" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(188, -0, 10169)
    elseif getgenv().SelectStage == "Stage 8" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(127, -0, 10168)
    elseif getgenv().SelectStage == "Stage 9" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63, -0, 10169)
    elseif getgenv().SelectStage == "Rebirth" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(24, -0, 10166)
    end
end

function Antiafk()
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
end

function Mobilebutton()
local Toggle = Instance.new("ScreenGui")
local UIToggle = Instance.new("TextButton")
Toggle.Name = "Orion Hider"
Toggle.Parent = game.CoreGui.Orion

UIToggle.Name = "Toggler"
UIToggle.Parent = Toggle
UIToggle.BackgroundColor3 = Color3.fromRGB(0,8,8)
UIToggle.BackgroundTransparency = 0.660
UIToggle.Position = UDim2.new(0,890,0 ,0.6)
UIToggle.Size = UDim2.new(0,50 ,0 ,50)
UIToggle.Font = Enum.Font.Code
UIToggle.Text = "Hide/Unhide"
UIToggle.TextColor3 = Color3.fromRGB(255,255,255)
UIToggle.TextSize = 8
UIToggle.Selectable = false
UIToggle.TextScaled = true
UIToggle.TextXAlignment = Enum.TextXAlignment.Left
UIToggle.MouseButton1Click:connect(function()
if game.CoreGui.Orion.Enabled == true then
game.CoreGui.Orion.Enabled = false
elseif game.CoreGui.Orion.Enabled == false then
game.CoreGui.Orion.Enabled = true
end
end)
end

--             /{ Hide/Unhide Button (Mobile Only) }\
if game.CoreGui.RobloxGui.FluxusAndroidUI then
Mobilebutton()
elseif game.CoreGui.HydrogenGui then
Mobilebutton()
end
--                                        /{Tabs}/\
local Tab = Window:MakeTab({
	Name = "Tab 1", --The name of the tab.
	Icon = "rbxassetid://4483345998", -- The icon of the tab.
	PremiumOnly = false --Makes the tab accessible to Sirus Premium users only.
})
local Tab1 = Window:MakeTab({
	Name = "Tab 2", --The name of the tab.
	Icon = "rbxassetid://4483345998", -- The icon of the tab.
	PremiumOnly = false --Makes the tab accessible to Sirus Premium users only.
})
--                                    /{Tabs 1}/\
Tab:AddDropdown({
	Name = "Select Mode",
	Default = Mode[1],
	Options = Mode,
	Callback = function(Value)
		getgenv().SelectMode = Value
if getgenv().SelectMode == "Safe" then
getgenv().Safe = true
elseif getgenv().SelectMode == "Not Safe" then
getgenv().Safe = false
end
	end    
})
Tab:AddToggle({
	Name = "AutoFarm Wins", -- The name of the toggle.
	Default = false, -- The default value of the toggle.
	Callback = function(Val) -- The function of the toggle.
if getgenv().Safe == false then
getgenv().SafeMode = false
		getgenv().AutoWins = Val
AutoWins()
elseif getgenv().Safe == true then
getgenv().AutoWins = false
getgenv().SafeMode = Val
SafeMode()
end
	end    
})
Tab:AddToggle({
	Name = "Auto Rebirth", -- The name of the toggle.
	Default = false, -- The default value of the toggle.
	Callback = function(Val) -- The function of the toggle.
		getgenv().AutoRebirth = Val
AutoRebirth()
	end    
})

local Section = Tab:AddSection({
	Name = "Hatching Section"
})
Tab:AddDropdown({
	Name = "Select Eggs",
	Default = TypeEggs[1],
	Options = TypeEggs,
	Callback = function(Value)
		getgenv().SelectEggs = Value
	end    
})
Tab:AddToggle({
	Name = "Auto Single Hatch", -- The name of the toggle.
	Default = false, -- The default value of the toggle.
	Callback = function(Val) -- The function of the toggle.
		getgenv().AutoHatch = Val
AutoHatch()
	end    
})
Tab:AddToggle({
	Name = "Auto Triple Hatch (Gamepass)", -- The name of the toggle.
	Default = false, -- The default value of the toggle.
	Callback = function(Val) -- The function of the toggle.
		getgenv().TripleHatch = Val
TripleHatch()
	end    
})
Tab:AddButton({
	Name = "Manual Hatching",
	Callback = function()
      		ManualHatch()
  	end    
})
--                                  /{Tabs 2}/\
Tab1:AddButton({
	Name = "Delete Points Doors",
	Callback = function()
      		game.Workspace.PointsDoor:Destroy()
  	end    
})

Tab1:AddButton({
	Name = "Delete Wins Gate",
	Callback = function()
      		game.Workspace.WinsGate:Destroy()
  	end    
})
Tab1:AddButton({
	Name = "Delete Product",
	Callback = function()
      		game.Workspace.Products:Destroy()
  	end    
})
Tab1:AddButton({
	Name = "AntiAfk",
	Callback = function()
      		Antiafk()
  	end    
})
local Section = Tab1:AddSection({
	Name = "Fake Stats Section"
})
Tab1:AddTextbox({
	Name = "Fake Points",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().FakePoints = Value
	end	  
})
Tab1:AddTextbox({
	Name = "Fake Wins",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().FakeWins = Value
	end
})
Tab1:AddTextbox({
	Name = "Fake Rebirth",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().FakeRebirth = Value
	end	  
})
Tab1:AddToggle({
	Name = "Enable Fake Stats", -- The name of the toggle.
	Default = false, -- The default value of the toggle.
	Callback = function(Val) -- The function of the toggle.
		getgenv().FakeStats = Val
FakeStats()
end
})
local Section = Tab1:AddSection({
	Name = "Teleport Option"
})
Tab1:AddDropdown({
    Name = "Select Stage",
    Default = TeleportOptions[1],
    Options = TeleportOptions,
    Callback = function(Value)
        getgenv().SelectStage = Value
    end    
})

Tab1:AddButton({
    Name = "Teleport",
    Callback = function()
        TeleportPlayer()
    end    
})
GarbageHub:Init()