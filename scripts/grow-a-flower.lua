--GROW A FLOWER
local Player = game:GetService ("Players")
local Workspace = game:GetService("Workspace")

local garden = Instance.new("Folder")
garden.Name = "GrowAflower"
garden.Parent = Workspace

--HEART COLLETION SYSTEM
local stats = Instance.new("Folder")
stats.Name = "leaderstats"
stats.Parent = player

local hearts = Instance.new("IntValue")
hearts.Name = "Hearts"
hearts.Value = 0
hearts.Parent = stats
end