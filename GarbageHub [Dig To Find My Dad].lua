function BuyAllBomb()
local args = {
    [1] = "squidward house."
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BoughtTool"):FireServer(unpack(args))
local args = {
    [1] = "Dad's Fedora"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BoughtTool"):FireServer(unpack(args))

local args = {
    [1] = "Taco Bomb"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BoughtTool"):FireServer(unpack(args))

local args = {
    [1] = "Maxwell Bomb"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BoughtTool"):FireServer(unpack(args))

local args = {
    [1] = "Chicken Bomb"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BoughtTool"):FireServer(unpack(args))

local args = {
    [1] = "Bloxy Bomb"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BoughtTool"):FireServer(unpack(args))

local args = {
    [1] = "Burger Bomb"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BoughtTool"):FireServer(unpack(args))

local args = {
    [1] = "Cola Bomb"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BoughtTool"):FireServer(unpack(args))

local args = {
    [1] = "OOF Bomb"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BoughtTool"):FireServer(unpack(args))

local args = {
    [1] = "Phone Bomb"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BoughtTool"):FireServer(unpack(args))

local args = {
    [1] = "C4"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BoughtTool"):FireServer(unpack(args))

local args = {
    [1] = "Pipe Bomb"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BoughtTool"):FireServer(unpack(args))

local args = {
    [1] = "TNT"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BoughtTool"):FireServer(unpack(args))

local args = {
    [1] = "Grenade"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BoughtTool"):FireServer(unpack(args))

local args = {
    [1] = "Dynamite"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BoughtTool"):FireServer(unpack(args))

local args = {
    [1] = "Molotov"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("BoughtTool"):FireServer(unpack(args))
end


------------------------------------------------[Library Section]------------------------------------------------
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

------------------------------------------------[KeySystem]------------------------------------------------
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro69Yes/GarbageHub/main/GarbageHub%20Keysystem'))()
------------------------------------------------[Windows]------------------------------------------------
local OrionWindow = OrionLib:MakeWindow({Name = "Garbage Hub ([1MVISITS!] Dig To Find My Dad)", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

------------[Tab Section]------------
local Tab = OrionWindow:MakeTab({
	Name = "Main",
	Icon = "",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Main Option"
})
Tab:AddButton({
	Name = "InstantWin",
	Callback = function()      		
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Aidanman14/balls/main/FindDad'),true))()
  	end    
})
Tab:AddButton({
	Name = "Buy All Bombs",
	Callback = function()
      		BuyAllBomb()
  	end    
})
Tab:AddTextbox({
	Name = "Free Money",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		local args = {
    [1] = Value
}
game:GetService("ReplicatedStorage"):WaitForChild("4576656E7473"):WaitForChild("4461696C79526577617264436F6C6C656374696F6E"):FireServer(unpack(args))
	end	  
})








OrionLib:Init()




