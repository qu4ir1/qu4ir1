local Fun = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/nightmares.fun-UI-Library/main/source.lua"))()

local window = Fun.Create("UI Library")

local tab = window:Tab("Leak")

local section = tab:Section("Showcase")

section:Toggle("Toggle", function(s)
   print(s)
end)

section:Button("Button", function()
   print('rtb balapo')
end)