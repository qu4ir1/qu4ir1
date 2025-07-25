local p = game.Players.LocalPlayer
local char = p.Character or p.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")
local rootPart = char:WaitForChild("HumanoidRootPart")
local uis = game:GetService("UserInputService")

while _G.Enabled do
	local achou = false
	for _, v in pairs(workspace:GetDescendants()) do
		if v:IsA("ProximityPrompt") and v.Parent:IsA("Attachment") and v.Parent.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Luz" and v.Parent.Parent.Parent:IsA("Model") and v.Parent.Parent.Parent:FindFirstChild("Estragado") and v.Parent.Parent.Parent.Estragado.Value == true then
			rootPart.CFrame = v.Parent.Parent.CFrame
			wait(0.1)
			fireproximityprompt(v)
			achou = true
			break
		end
	end
	if not achou then
		task.wait(1)
	end
    wait(0.05)
end