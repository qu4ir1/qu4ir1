--/ libary

local ReGui = loadstring(game:HttpGet('https://raw.githubusercontent.com/depthso/Dear-ReGui/refs/heads/main/ReGui.lua'))()

--/ locals

local p = game:GetService('Players').LocalPlayer
local character = p.Character or p.CharacterAdded:Wait()

--/ Principal window

local Window = ReGui:TabsWindow({
	Title = "Tabs window demo!",
	Size = UDim2.fromOffset(400, 350)
})