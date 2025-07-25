--/ libary

local ReGui = loadstring(game:HttpGet('https://raw.githubusercontent.com/depthso/Dear-ReGui/refs/heads/main/ReGui.lua'))()

--/ Aimbot

local Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()
Aimbot.Load()

--/ Global variables

_G.EletricistaAtivado = false

--/ locals

local p = game:GetService('Players').LocalPlayer
local character = p.Character or p.CharacterAdded:Wait()
local rootPart = character:WaitForChild('HumanoidRootPart')


--/ Custom themes

ReGui:DefineTheme("RedWhite", {
    -- Text
    TitleAlign = Enum.TextXAlignment.Center,
    TextDisabled = Color3.fromRGB(180, 180, 180),
    Text = Color3.fromRGB(0, 0, 0),

    -- Frame backgrounds
    FrameBg = Color3.fromRGB(245, 245, 245),
    FrameBgTransparency = 0,
    FrameBgActive = Color3.fromRGB(255, 230, 230),
    FrameBgTransparencyActive = 0,

    -- Controls
    CheckMark = Color3.fromRGB(200, 0, 0),
    SliderGrab = Color3.fromRGB(200, 0, 0),
    ButtonsBg = Color3.fromRGB(200, 0, 0),
    CollapsingHeaderBg = Color3.fromRGB(255, 240, 240),
    CollapsingHeaderText = Color3.fromRGB(150, 0, 0),
    RadioButtonHoveredBg = Color3.fromRGB(255, 200, 200),

    -- Window elements
    WindowBg = Color3.fromRGB(255, 255, 255),
    TitleBarBg = Color3.fromRGB(255, 240, 240),
    TitleBarBgActive = Color3.fromRGB(255, 220, 220),

    -- Borders and resizing
    Border = Color3.fromRGB(220, 0, 0),
    ResizeGrab = Color3.fromRGB(180, 0, 0),
    RegionBgTransparency = 1,

    -- Accents
    AccentLight = Color3.fromRGB(255, 100, 100),
    AccentDark = Color3.fromRGB(180, 0, 0),
    AccentYellow = ReGui.Accent.Yellow,
    AccentOrange = ReGui.Accent.Orange,
    AccentGreen = ReGui.Accent.Green,
    AccentRed = ReGui.Accent.Red,

    -- Botões
    ButtonBg = Color3.fromRGB(220, 0, 0),
    ButtonBgHover = Color3.fromRGB(255, 0, 0),
    ButtonText = Color3.fromRGB(255, 255, 255),

    -- Inputs e sliders
    InputBg = Color3.fromRGB(255, 240, 240),
    InputBgActive = Color3.fromRGB(255, 220, 220),
    SliderBg = Color3.fromRGB(255, 210, 210),
    SliderBgActive = Color3.fromRGB(255, 160, 160),

    -- Tooltips/popups
    PopupBg = Color3.fromRGB(255, 240, 240),
    TooltipText = Color3.fromRGB(50, 0, 0),

    -- Tabelas/grids
    TableHeaderBg = Color3.fromRGB(255, 225, 225),
    TableRowBg = Color3.fromRGB(255, 245, 245),
    TableRowBgAlt = Color3.fromRGB(255, 240, 240),

    -- Tabs
    TabBg = Color3.fromRGB(255, 240, 240),
    TabBgHover = Color3.fromRGB(255, 220, 220),
    TabBgActive = Color3.fromRGB(255, 180, 180),
    TabText = Color3.fromRGB(180, 0, 0),
    TabTextDisabled = Color3.fromRGB(200, 200, 200),
    TabTextActive = Color3.fromRGB(255, 0, 0),
})

--/ principal window

local Window = ReGui:TabsWindow({
	Title = "Kizz Menu | "..game.Name,
	Size = UDim2.fromOffset(450, 260),
    Theme = 'RedWhite'
})

--/ options tabs

local FarmingTab = Window:CreateTab({Name = 'Farming'})
local MiscellaneousTab = Window:CreateTab({Name = 'Miscellaneous'})

--/ Farming section

local elecSeparator = FarmingTab:Separator({Text="AutoFarm | Eletricista"})

--/ Farming header

local FarmingHeader = FarmingTab:CollapsingHeader()

FarmingHeader:Label({
    Text = "AutoFarm eletricista irá te teleportar para todos os postes quebrados do servidor arrumando eles, quando os postes acabarem ele esperará outro poste quebrar para ir arrumar automáticamente.",
    TextWrapped = true,
})

local checkboxEletricista = FarmingHeader:Checkbox({
	Value = false,
	Label = "Check box",
	Callback = function(self, Value: boolean)
		_G.EletricistaAtivado = not _G.EletricistaAtivado
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
	end
})

