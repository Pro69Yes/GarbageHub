-----------------------------------------------[Toggler]-----------------------------------------------
getgenv().AutoClick = false
getgenv().AutoCollect = false
getgenv().AutoRent = false
getgenv().Godmode = false
getgenv().RandomItems = false
-----------------------------------------------[Function]-----------------------------------------------
function godmode()
while getgenv().Godmode == true do
task.wait()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("whyisntitwork"):FireServer(unpack(args))
end
end
function AutoRent()
while getgenv().AutoRent == true do task.wait(60)
local args = {
    [1] = 600
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("DenjiMoney"):FireServer(unpack(args))
	end
end
function AutoClick()
while getgenv().AutoClick == true do task.wait(0.5)
local args = {
    [1] = game:GetService("Players").LocalPlayer
}
workspace:WaitForChild("pochita"):WaitForChild("Part"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end
end
function AutoCollectMoney()
while getgenv().AutoCollect == true do task.wait()
firetouchinterest(Workspace.CASHBABY,game.Players.LocalPlayer.Character.HumanoidRootPart,0)
wait()
firetouchinterest(Workspace.CASHBABY,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
	end
end

------------------------------------------------[Library Section]------------------------------------------------
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

------------------------------------------------[KeySystem]------------------------------------------------
local Window = Rayfield:CreateWindow({
   Name = "GarbageHub Loader",
   LoadingTitle = "Loading . . . .",
   LoadingSubtitle = "By ForgorMoment",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Garbage Hub",
      Subtitle = "Key System",
      Note = "Key : forgor",
      FileName = "SiriusKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "forgor"
   }
})
Rayfield:Destroy()
------------------------------------------------[Windows]------------------------------------------------
local OrionWindow = OrionLib:MakeWindow({Name = "🏴‍☠️Raise a Pochita [ONE PIECE 2] | GarbageHub", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})
------------[Tab Section]------------
local Tab = OrionWindow:MakeTab({
	Name = "Main",
	Icon = "",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Main Option"
})
Tab:AddToggle({
	Name = "AutoClick Pochita",
	Default = false,
	Callback = function(V)
		getgenv().AutoClick = V
AutoClick()
	end    
})
Tab:AddToggle({
	Name = "AutoCollect Money",
	Default = false,
	Callback = function(Va)
		getgenv().AutoCollect = Va
AutoCollectMoney()
 end    
})
Tab:AddToggle({
	Name = "AutoRent",
	Default = false,
	Callback = function(Val)
		getgenv().AutoRent = Val
AutoRent()
    end
})
Tab:AddToggle({
	Name = "GodMode",
	Default = false,
	Callback = function(Vl)
		getgenv().Godmode = Vl
godmode()
    end
})
Tab:AddButton({
	Name = "Infinite Money",
	Callback = function()      		
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro69Yes/sussy-Script/main/RaiseAPochitaINFmoney'))()
  	end    
})
Tab:AddButton({
	Name = "Free Golden Bat",
	Callback = function()      		
local args = {
    [1] = game:GetService("Players").LocalPlayer
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("goldenEvent"):FireServer(unpack(args))
  	end    
})
Tab:AddButton({
	Name = "Free Rebirth",
	Callback = function()      	
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("giverebirth"):FireServer()
wait()	
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GiveChainsaw"):FireServer()
  	end    
})
local Tab1 = OrionWindow:MakeTab({
	Name = "Item Quest",
	Icon = "",
	PremiumOnly = false
})
local Section1 = Tab1:AddSection({
	Name = "Items Quest Option"
})
Tab1:AddButton({
	Name = "Slime [Rimuru]",
	Callback = function()      		
firetouchinterest(Workspace.Slime.Handle,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
  	end    
})
Tab1:AddButton({
	Name = "Amogus [Rinna]",
	Callback = function()      		
firetouchinterest(Workspace.amogus.Handle,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
  	end    
})
Tab1:AddButton({
	Name = "Bullet [Aki]",
	Callback = function()      		
firetouchinterest(Workspace.Bullet.Handle,game.Players.LocalPlayer.Character.HumanoidRootPart,1) 
  	end    
})
Tab1:AddButton({
	Name = "Cookie [?]",
	Callback = function()      		
firetouchinterest(Workspace.Cookies.Handle,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
  	end    
})
Tab1:AddButton({
	Name = "Nichirin [Zenitsu]",
	Callback = function()      		
firetouchinterest(Workspace.Nichirin.Handle,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
  	end    
})
Tab1:AddButton({
	Name = "BodyPillow [thoru]",
	Callback = function()      		
firetouchinterest(Workspace.BodyPillow.Handle,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
  	end    
})
Tab1:AddButton({
	Name = "Diary [Jotaro]",
	Callback = function()      		
firetouchinterest(Workspace.Diary.Handle,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
  	end    
})
local Tab2 = OrionWindow:MakeTab({
	Name = "Teleport",
	Icon = "",
	PremiumOnly = false
})
local Section2 = Tab2:AddSection({
	Name = "Teleport Option"
})
Tab2:AddButton({
	Name = "Home",
	Callback = function()      		
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(34, 10, 107)
  	end    
})
Tab2:AddButton({
	Name = "Floor 2",
	Callback = function()      		
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(45, 29, 95)
  	end    
})
Tab2:AddButton({
	Name = "Mission Board Room",
	Callback = function()      		
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63, 10, 108)
  	end    
})
Tab2:AddButton({
	Name = "UnderGround",
	Callback = function()      		
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-135, -39, 157)
  	end    
})
Tab2:AddButton({
	Name = "Astolfo Room [Rebirth]",
	Callback = function()      		
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-242, 8, -74)
  	end    
})
local Section3 = Tab2:AddSection({
	Name = "Zone Teleport Option"
})
Tab2:AddButton({
	Name = "Eternity Devil Hotel",
	Callback = function()      		
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-232, -117, 89)
  	end    
})
Tab2:AddButton({
	Name = "Darkness Devil Room",
	Callback = function()      		
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-298, -61, -6)
  	end    
})
Tab2:AddButton({
	Name = "Geshin Impact",
	Callback = function()      		
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-298, 8, 448)
  	end    
})
Tab2:AddButton({
	Name = "OnePiece",
	Callback = function()      		
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-396, 7, 373)
  	end    
})
Tab2:AddButton({
	Name = "OnePiece 2",
	Callback = function()      		
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1660, -1, 471)
  	end    
})
local Section3 = Tab2:AddSection({
	Name = "Shop Teleport Option"
})
Tab2:AddButton({
	Name = "Phone Shop",
	Callback = function()      		
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(22, 12, 109)
  	end    
})
Tab2:AddButton({
	Name = "Makima Shop",
	Callback = function()      		
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9889, 2454, -6592)
  	end    
})
Tab2:AddButton({
	Name = "E-Eleven Shop",
	Callback = function()      		
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-222, 8, 291)
  	end 
})   
  Tab2:AddButton({
	Name = "Bar Shop",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-361, 20, 618)
	end
})
Tab2:AddButton({
	Name = "Pepsi Shop",
	Callback = function()      		
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-207, 8, 520)
  	end    
})
Tab2:AddButton({
	Name = "OnePiece Shop",
	Callback = function()      		
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-417, 7, 267)
  	end    
})
Tab2:AddButton({
	Name = "Hill Shop",
	Callback = function()      		
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-423, 52, 28)
  	end    
})
local Tab4 = OrionWindow:MakeTab({
	Name = "Food",
	Icon = "",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Food Option"
})
Tab4:AddButton({
	Name = "Cheese",
	Callback = function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage"):WaitForChild("FoodFolder"):WaitForChild("cheeseEvent"):FireServer(unpack(args))

end
})
Tab4:AddButton({
	Name = "Meat",
	Callback = function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage"):WaitForChild("FoodFolder"):WaitForChild("meatEvent"):FireServer(unpack(args))
end
})
Tab4:AddButton({
	Name = "Cooked Fish",
	Callback = function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage"):WaitForChild("FoodFolder"):WaitForChild("CookedFishGive"):FireServer(unpack(args))
end
})
Tab4:AddButton({
	Name = "Pizza",
	Callback = function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage"):WaitForChild("FoodFolder"):WaitForChild("pizzaGive"):FireServer(unpack(args))
end
})
Tab4:AddButton({
	Name = "Borger",
	Callback = function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage"):WaitForChild("FoodFolder"):WaitForChild("BorgerEvent"):FireServer(unpack(args))
end
})
Tab4:AddButton({
	Name = "Sushi",
	Callback = function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage"):WaitForChild("FoodFolder"):WaitForChild("SushiGive"):FireServer(unpack(args))
end
})
Tab4:AddButton({
	Name = "HamBurger",
	Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("FoodFolder"):WaitForChild("burgerGive"):FireServer()

end
})



local Tab3 = OrionWindow:MakeTab({
	Name = "Misc",
	Icon = "",
	PremiumOnly = false
})
local Section3 = Tab3:AddSection({
	Name = "Misc Option"
})
Tab3:AddButton({
	Name = "Instant Proximity Prompt",
	Callback = function()
	game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
  fireproximityprompt(prompt)
end)
	end
})
Tab3:AddTextbox({
	Name = "Speed [Mobile]",
	Default = "",
	TextDisappear = true,
	Callback = function(s)
		game.Players.LocalPlayer.character.Humanoid.WalkSpeed = s
		end
})
Tab3:AddSlider({
	Name = "Speed",
	Min = 16,
	Max = 1000,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(sw)
		game.Players.LocalPlayer.character.Humanoid.WalkSpeed = sw
	end    
})
OrionLib:Init()




