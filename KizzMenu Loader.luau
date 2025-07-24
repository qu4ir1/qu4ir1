--/ libary

local ReGui = loadstring(game:HttpGet('https://raw.githubusercontent.com/depthso/Dear-ReGui/refs/heads/main/ReGui.lua'))()

--/ locals

local p = game:GetService('Players').LocalPlayer
local character = p.Character or p.CharacterAdded:Wait()

--/ Principal window

local Window = ReGui:TabsWindow({
	Title = "Kizz Menu",
	Size = UDim2.fromOffset(300, 450)
})

print('Load completed succefully')