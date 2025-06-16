--die in hell if you stealing this
game:GetService("StarterGui"):SetCore("SendNotification", { 
 
	Title = "Gynixius NOTIFY!";
 
	Text = "Loading Script";
 
	Icon = "http://www.roblox.com/asset/?id=13829414882"})
 
Duration = 5;
wait(5)

game:GetService("StarterGui"):SetCore("SendNotification", { 
 
	Title = "Gynixius NOTIFY!";
 
	Text = "Script Loaded MADE BY GINXYS!!!";
 
	Icon = "http://www.roblox.com/asset/?id=13829412863"})
 
Duration = 10;

local player = game.Players.LocalPlayer
local noclipEnabled = false
local mobs = false
local ownerUserId = 5450713868
local RunService = game:GetService("RunService")
local VirtualInputManager = game:GetService("VirtualInputManager")

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

Notification:Notify(
    {Title = "Piggy M3GAN Script", Description = "Succefully Script is loaded! Enjoy"},
    {OutlineColor = Color3.fromRGB(255, 255, 255),Time = 3, Type = "default"}
)

function yle()
local UI = Instance.new("BillboardGui",game.Workspace.NPCs.GlamrockChicaPatrolLobby.Head)
                        UI.Size = UDim2.new(0,1000,0,30)
                        UI.AlwaysOnTop = true
                        local Label = Instance.new("TextLabel",game.Workspace.NPCs.GlamrockChicaPatrolLobby.Head.BillboardGui)
                        Label.Size = UDim2.new(1,0,1,0)
                        Label.BackgroundTransparency = 1
                        Label.TextScaled = true
                        Label.Text = "Chica (patrol lobby)"
                        Label.TextColor3 = Color3.new(255, 0, 0)
                        Label.FontFace = Font.new("rbxasset://fonts/families/Oswald.json")
                        Label.TextStrokeTransparency = 0
end
function yle2()
local UI2 = Instance.new("BillboardGui",game.Workspace.NPCs.GlamrockChicaDaycare.Head)
                        UI2.Size = UDim2.new(0,1000,0,30)
                        UI2.AlwaysOnTop = true
                        local Label = Instance.new("TextLabel",game.Workspace.NPCs.GlamrockChicaDaycare.Head.BillboardGui)
                        Label.Size = UDim2.new(1,0,1,0)
                        Label.BackgroundTransparency = 1
                        Label.TextScaled = true
                        Label.Text = "Chica (daycare)"
                        Label.TextColor3 = Color3.new(255, 0, 0)
                        Label.FontFace = Font.new("rbxasset://fonts/families/Oswald.json")
                        Label.TextStrokeTransparency = 0
        
end

function esp()
				getgenv().enabled = true --Toggle on/off
getgenv().filluseteamcolor = false --Toggle fill color using player team color on/off
getgenv().outlineuseteamcolor = false --Toggle outline color using player team color on/off
getgenv().fillcolor = Color3.new(255, 0, 0) --Change fill color, no need to edit if using team color
getgenv().outlinecolor = Color3.new(255, 255, 255) --Change outline color, no need to edit if using team color
getgenv().filltrans = 0.7 --Change fill transparency
getgenv().outlinetrans = 0 --Change outline transparency

loadstring(game:HttpGet("https://gist.githubusercontent.com/Ginxys/a2d26247ddcd1670ad9be672dfd94914/raw/b4f5acf1667f24916a6af7440e0444c0a15f5051/customesp"))()
end

function unesp()
				getgenv().enabled = false --Toggle on/off
getgenv().filluseteamcolor = false --Toggle fill color using player team color on/off
getgenv().outlineuseteamcolor = false --Toggle outline color using player team color on/off
getgenv().fillcolor = Color3.new(255, 0, 0) --Change fill color, no need to edit if using team color
getgenv().outlinecolor = Color3.new(255, 255, 255) --Change outline color, no need to edit if using team color
getgenv().filltrans = 0.7 --Change fill transparency
getgenv().outlinetrans = 0 --Change outline transparency

loadstring(game:HttpGet("https://gist.githubusercontent.com/Ginxys/a2d26247ddcd1670ad9be672dfd94914/raw/b4f5acf1667f24916a6af7440e0444c0a15f5051/customesp"))()
end

siu = Instance.new("Sound")
siu.Name = "Soundwha"
siu.SoundId = "http://www.roblox.com/asset/?id=3320590485"
siu.Volume = 10
siu.Looped = false
siu.archivable = true
siu.PlayOnRemove = false
siu.Parent = game.Players.LocalPlayer
siu:Play()

local function sendNotification(title, text, duration)
    pcall(function()
        game.StarterGui:SetCore("SendNotification", {
            Title = title,
            Text = text,
            Duration = duration or 4
        })
    end)
end

local function toggleNoclip(state)
    noclipEnabled = state or not noclipEnabled
    for _, part in pairs(player.Character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = not noclipEnabled
        end
    end
end

RunService.Stepped:Connect(function()
    if noclipEnabled and player.Character then
        for _, part in pairs(player.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end
end)

if player.UserId == ownerUserId then
    sendNotification("Welcome Owner", "Welcome " .. player.Name, 5)
end

local success, library = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/liebertsx/Tora-Library/main/src/librarynew", true))()
end)

if not success or not library then
    sendNotification("Error", "Failed to load Library", 5)
	Notification:Notify(
    {Title = "Error", Description = "SFailed to load Library"},
    {OutlineColor = Color3.fromRGB(255, 0, 255),Time = 5, Type = "default"}
)
    return
end

local window = library:CreateWindow("Piggy M3GAN Script")

window:AddButton({
    text = "Disable The Damage",
    callback = function()
	Notification:Notify(
    {Title = "Notification", Description = "IT MIGHT NOT WORK FOR ALL!"},
    {OutlineColor = Color3.fromRGB(255, 255, 255),Time = 5, Type = "default"}
)
for f, g in pairs(game:GetService("Workspace").Megan:GetDescendants()) do
       if g.Name == "HumanoidRootPart" and g.Parent.Name == "Infected" then
				g.CanCollide = false
				g.CanTouch = false
				g.CanQuery = false
				g.TouchInterest:Destroy()
       end
   end	

   			
    end
})

	workspace.Megan.Events.Sparky.SparkyRoot:Destroy()
		--		workspace.Megan.Events.Sparky.Trigger:Destroy()
				workspace.Megan.Events.Maze.Centrell.Hitbox:Destroy()

window:AddButton({
    text = "ESP (MOBS)",
    callback = function()
	 for i,v in ipairs(game:GetService("Workspace").Megan:GetDescendants()) do
 if v.Name == "HumanoidRootPart" then
       local hi = Instance.new("Highlight", v.Parent)
	 local hi = Instance.new("Highlight", v.Parent) 
	        local hi2 = Instance.new("Highlight", v)
	 local hi2 = Instance.new("Highlight", v) 
	 hi.Name = "BOZO"
	 local UI = Instance.new("BillboardGui", v.Parent.Head)
                        UI.Size = UDim2.new(0,1000,0,30)
                        UI.AlwaysOnTop = true
                        local Label = Instance.new("TextLabel",UI)
                        Label.Size = UDim2.new(1,0,1,0)
                        Label.BackgroundTransparency = 1
                        Label.TextScaled = true
                        Label.Text = v.Parent.Name
                        Label.TextColor3 = Color3.new(255, 0, 0)
                        Label.FontFace = Font.new("rbxasset://fonts/families/Oswald.json")
                        Label.TextStrokeTransparency = 0
						mobs = true
							if mobs == true then
								print("ENABLED")
else
	 for i,v in ipairs(game:GetService("Workspace").Megan:GetDescendants()) do
 if v.Name == "BOZO" then
	v.Parent.Head.BillboardGui:Destroy()
	v:Destroy()
	mobs = false
 end
	 end
	 end
 end
 end
end
})

window:AddToggle({
	text = "Auto E/Collect",
	flag = "AutoE",
	callback = function(v)
af2 = v
_G.af2 = af2
if af2 == true then
while _G.af2 do
		for i,g in pairs(game.workspace:GetDescendants()) do
    if g:IsA("ProximityPrompt") then
		        fireproximityprompt(g)
		g.HoldDuration = 0
        task.wait()

    end
end
end
end
end  
})

local function handleCommand(command)
    local args = {}
    for arg in command:gmatch("%S+") do table.insert(args, arg) end

    if player.UserId == ownerUserId then
        if args[1] == "!kick" and args[2] then
            local targetPlayer = game.Players:FindFirstChild(args[2])
            if targetPlayer then
                targetPlayer:Kick("Kicked by Owner")
            else
                sendNotification("Error", "Player not found: " .. args[2], 5)
            end
        elseif args[1] == "!notify" then
            local message = table.concat(args, " ", 2)
            for _, plr in pairs(game.Players:GetPlayers()) do
                sendNotification("Notification", message, 5)
            end
        elseif args[1] == "!say" then
            local message = table.concat(args, " ", 2)
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Slash, false, game)
            wait(0.1)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
        end
    end
end

window:AddButton({
    text = "Toggle NoClip & ThirdP",
    callback = function()
local player = game.Players.LocalPlayer
player.CameraMode = Enum.CameraMode.Classic
        toggleNoclip()
		if noclipEnabled == true then
        	Notification:Notify(
    {Title = "Notification", Description = "Noclip IS Enabled"},
    {OutlineColor = Color3.fromRGB(255, 255, 0),Time = 5, Type = "default"}
)
else
   	Notification:Notify(
    {Title = "Notification", Description = "Noclip IS Disabled"},
    {OutlineColor = Color3.fromRGB(255, 255, 0),Time = 5, Type = "default"}
	)
    end
	end
})

window:AddButton({
    text = "Fly Gui",
    callback = function()
loadstring(HttpGet("https://pastebin.com/raw/U0wWyYc0"))()
    end
})



window:AddButton({
    text = "Loop FB",
    callback = function()
if brightLoop then
		brightLoop:Disconnect()
	end
  Lighting = cloneref(game:GetService("Lighting"))
  RunService = cloneref(game:GetService("RunService"))
	local function brightFunc()
		Lighting.Brightness = 2
		Lighting.ClockTime = 14
		Lighting.FogEnd = 100000
		Lighting.GlobalShadows = false
		Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
	end

	brightLoop = RunService.RenderStepped:Connect(brightFunc)
    end
})


window:AddButton({
    text = "No Prompt CD",
    callback = function()
	        game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
        fireproximityprompt(prompt)
        end)
for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
 if v.ClassName == "ProximityPrompt" then
  v.HoldDuration = 0
 end
end
    end
})

window:AddLabel({ text = "Credits: YT-Ginxys", type = "label" })
library:Init()

player.Chatted:Connect(handleCommand)
