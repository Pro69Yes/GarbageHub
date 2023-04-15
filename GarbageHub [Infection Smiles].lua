local GarbageHub = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Pro69Yes/GarbageHub/main/Mobile%20orionLib')))()
--Windows
local Window = GarbageHub:MakeWindow({
Name = "Garbage Hub | title", 
HidePremium = false, 
SaveConfig = false, 
ConfigFolder = "GarbageHubOrion"
})
--                                     /{Getgenv}/\

--                                      /{Tables}/\


--                                   /{Functions}/\







function Mobilebutton()
    local Toggle = Instance.new("ScreenGui")
local UIToggle = Instance.new("TextButton")
Toggle.Name = "Orion Hider"
Toggle.Parent = game.CoreGui.Orion

local toggleSize = UDim2.new(0, 50, 0, 50)
local togglePos = UDim2.new(0.75, -25, 0.15, 0)

UIToggle.Name = "Toggler"
UIToggle.Parent = Toggle
UIToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UIToggle.BackgroundTransparency = 1
UIToggle.Position = togglePos
UIToggle.Size = toggleSize
UIToggle.Text = ""
UIToggle.AnchorPoint = Vector2.new(0.5, 0.5) -- set the anchor point to the center
UIToggle.AutoButtonColor = false -- disable the default button color change

-- create an image label for the button's icon
local Icon = Instance.new("ImageLabel")
Icon.Name = "Icon"
Icon.BackgroundTransparency = 1

local iconSize = UDim2.new(0, 50, 0, 50)
local iconPos = UDim2.new(0.75, -25, 0.15, 0)

Icon.Position = iconPos -- center the icon
Icon.Size = iconSize
Icon.AnchorPoint = Vector2.new(0.5, 0.5) -- set the anchor point to the center
Icon.Image = "rbxassetid://7743878496" -- replace with your asset ID
Icon.ImageColor3 = Color3.new(1, 1, 1)
Icon.ImageTransparency = 0
Icon.Parent = UIToggle

-- set up the button's mouse click event
UIToggle.MouseButton1Click:Connect(function()
    game:GetService('VirtualInputManager'):SendKeyEvent(true, 'N', false, uwu)
end)

-- hide everything except the image
UIToggle:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
    for _, child in ipairs(UIToggle:GetChildren()) do
        if child ~= Icon then
            child.Visible = false
        end
    end
end)
end

local WeaponsName = {
    Bottle = true,
    Bat = true,
    Katana = true,
}


--             /{ Hide/Unhide Button (Mobile Only) }\
if game.CoreGui.RobloxGui.FluxusAndroidUI then
Mobilebutton()
elseif game.CoreGui.HydrogenGui then
Mobilebutton()
end


getgenv().SignText = false
--                                        /{Tabs}/\
local Tab = Window:MakeTab({
	Name = "Main", --The name of the tab.
	Icon = "rbxassetid://7733752575", -- The icon of the tab.
	PremiumOnly = false --Makes the tab accessible to Sirus Premium users only.
})

local Tab1 = Window:MakeTab({
	Name = "Misc", --The name of the tab.
	Icon = "rbxassetid://7734021469", -- The icon of the tab.
	PremiumOnly = false --Makes the tab accessible to Sirus Premium users only.
})
--                                        /{Interface}/\
Tab:AddToggle({
    Name = "Bypass AntiCheat",
    Default = false,
    Callback = function(Value)
        getgenv().BAC = Value
        while getgenv().BAC do wait(0.9)
            pcall(function()
                game.Workspace.Map.AntiHack:Destroy()
                game.Players.LocalPlayer.AntiFly:Destroy()
            end)
        end
    end
})
Tab:AddParagraph("Warning","The Hit Aura Only Work At Bat,Bottle")
Tab:AddToggle({
    Name = "Hit Aura",
    Default = false,
    Callback = function(Value)
        getgenv().WeaponsAura = Value
        while getgenv().WeaponsAura do
            wait()
            pcall(function()
                local character = game:GetService("Players").LocalPlayer.Character
                if character then
                    local bat = character:FindFirstChildOfClass("Tool")
                    local bottle = character:FindFirstChildOfClass("Tool")
                    if bat and bat.Name == "Bat" and bat:FindFirstChild("SwingEvent") then
                        bat.SwingEvent:FireServer()
                    end
                    if bottle and bottle.Name == "Bottle" and bottle:FindFirstChild("SwingEvent") then
                        bottle.SwingEvent:FireServer()
                    end
                end
            end)
        end
    end
})

Tab:AddToggle({
    Name = "Infect Aura",
    Default = false,
    Callback = function(Value)
        getgenv().InfectAura = Value
        while getgenv().InfectAura do wait()
            pcall(function()
            game:GetService("Players").LocalPlayer.Character.Infected.InfectEvent:FireServer()
        end)
end
    end
})


local SteppedConnection = nil
Tab:AddToggle({
    Name = "No-Slowdown",
    Default = false,
    Callback = function(Value)
        getgenv().NoSlowDown = Value
        if getgenv().NoSlowDown then
            SteppedConnection = game:GetService("RunService").Stepped:Connect(function()
                pcall(function()
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 17
                end)
            end)
        else
            if SteppedConnection then
                SteppedConnection:Disconnect()
                SteppedConnection = nil
            end
        end
    end
})

Tab:AddToggle({
    Name = "Allow Jumping",
    Default = false,
    Callback = function(Value)
        getgenv().NoSlowDown = Value
        if getgenv().NoSlowDown then
            SteppedConnection = game:GetService("RunService").Stepped:Connect(function()
                pcall(function()
                    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 55
                end)
            end)
        else
            if SteppedConnection then
                SteppedConnection:Disconnect()
                SteppedConnection = nil
            end
        end
    end
})

Tab:AddToggle({
    Name = "Player Esp",
    Default = false,
    Callback = function(Value)
        getgenv().Esp = Value
        getgenv().uselocalplayer = false
        getgenv().filluseteamcolor = true
        getgenv().outlineuseteamcolor = true
        getgenv().filltrans = 0.8
        getgenv().outlinetrans = 0.8
        getgenv().fillcolor = Color3.new(0, 0, 0)
        getgenv().outlinecolor = Color3.new(1, 1, 1)
        local holder = game.CoreGui:FindFirstChild("ESPHolder") or Instance.new("Folder")
        if enabled == false then
            holder:Destroy()
        end

        if holder.Name == "Folder" then
            holder.Name = "ESPHolder"
            holder.Parent = game.CoreGui
        end

        if uselocalplayer == false and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
            holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
        end

        while getgenv().Esp do
            task.wait()
            for _,v in pairs(game.Players:GetChildren()) do
                local chr = v.Character
                if chr ~= nil then
                    local torso = chr:FindFirstChild("Torso")
                    local left_arm = chr:FindFirstChild("Left Arm")
                    local right_arm = chr:FindFirstChild("Right Arm")
                    local left_leg = chr:FindFirstChild("Left Leg")
                    local right_leg = chr:FindFirstChild("Right Leg")
                    if torso and left_arm and right_arm and left_leg and right_leg then
                        local esp = holder:FindFirstChild(v.Name) or Instance.new("Highlight")
                        esp.Name = v.Name
                        if uselocalplayer == false and esp.Name == game.Players.LocalPlayer.Name then
                        else
                            esp.Parent = holder
                            if filluseteamcolor then
                                esp.FillColor = v.TeamColor.Color
                            else
                                esp.FillColor = fillcolor
                            end
                            if outlineuseteamcolor then
                                esp.OutlineColor = v.TeamColor.Color
                            else
                                esp.OutlineColor = outlinecolor
                            end
                            esp.FillTransparency = filltrans
                            esp.OutlineTransparency = outlinetrans
                            esp.Adornee = chr
                            esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        end
                    end
                end
            end
        end
    end
})


Tab1:AddButton({
	Name = "Self Infect",
	Callback = function()
      		firetouchinterest(game.Players.LocalPlayer.Character.Head, game.("Workspace").Map.Infectors.Infector.Part, 0)
wait(0.1)
firetouchinterest(game.Players.LocalPlayer.Character.Head, game.("Workspace").Map.Infectors.Infector.Part, 1)
  	end    
})
Tab1:AddTextbox({
	Name = "Change Sign Text",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().SignText = Value
	end	  
})
Tab1:AddButton({
	Name = "Set Sign Text",
	Callback = function()
      		game:GetService("Workspace").Map.ConstantTerrain.CustomizeSign.SurfaceGui.TextLabel.Text = getgenv().SignText
  	end    
})
GarbageHub:Init()  