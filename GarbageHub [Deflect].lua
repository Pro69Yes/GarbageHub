

getgenv().Toggle = false
function AutoDeflect()
getgenv().BallDirection = Vector3.new(999999, 999999, 999999)

local plr = game.Players.LocalPlayer
local ball = false

local function getBall()
while true do game:GetService("RunService").Stepped:Wait()
if workspace:FindFirstChild("Ball") ~= nil then
ball = workspace.Ball
end
end
end

task.spawn(getBall)

while Toggle do game:GetService("RunService").Stepped:Wait()
if (ball and ball:FindFirstChild("Main") and plr.Character ~= nil) then
local distance = plr:DistanceFromCharacter(ball.Main.Position)
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.lookAt(plr.Character.HumanoidRootPart.Position, Vector3.new(ball.Main.Position.X, plr.Character.HumanoidRootPart.Position.Y, ball.Main.Position.Z))
if (distance <= 17.8) then
plr.Character:WaitForChild("Deflection").Remote:FireServer("Deflect", BallDirection)
end
end
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
local OrionWindow = OrionLib:MakeWindow({Name = "DEFLECT 🙅‍♂️ | GarbageHub", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})
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
	Name = "AutoDeflect",
	Callback = function()      		
getgenv().Toggle = Value
AutoDeflect()
  	end    
})
OrionLib:Init()




