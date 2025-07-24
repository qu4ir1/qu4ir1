--/ libary

local ReGui = loadstring(game:HttpGet('https://raw.githubusercontent.com/depthso/Dear-ReGui/refs/heads/main/ReGui.lua'))()

--/ Aimbot

local Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()
Aimbot.Load()

--/ locals

local p = game:GetService('Players').LocalPlayer
local character = p.Character or p.CharacterAdded:Wait()

--/ principal window

local Window = ReGui:TabsWindow({
	Title = "Kizz Menu",
	Size = UDim2.fromOffset(450, 260)
})

--/ options tabs

local CombatTab = Window:CreateTab({Name = 'Combat'})
local VisualTab = Window:CreateTab({Name = 'Visual'})
local MiscellaneousTab = Window:CreateTab({Name = 'Miscellaneous'})

--/ Combat section

