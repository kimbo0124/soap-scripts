--GROW A FLOWER
local Players = game:GetService ("Players")
local Workspace = game:GetService("Workspace")

local garden = Instance.new("Folder")
garden.Name = "GrowAflower"
garden.Parent = Workspace

--HEART COLLETION SYSTEM

Players.PlayerAdded:Connect(function(player)
local stats = Instance.new("Folder")
stats.Name = "leaderstats"
stats.Parent = player

local hearts = Instance.new("IntValue")
hearts.Name = "Hearts"
hearts.Value = 0
hearts.Parent = stats
end)

--CREATE HEARTS

for i = 1, 10 do
local heart = Instance.new("Part")
heart.Name = "LoveHearts"
heart.Shape = Enum.PartType.Ball
heart.Size = Vector3.new(2, 2, 2)
heart.Position = Vector3.new(
math.random(-35, 35),
4,
math.random(-35, 35)
)

heart.Anchored = true
heart.CanCollide = false
heart.Material = Enum.Material.Neon
heart.Color = Color3.fromRGB(255, 70, 145)
heart.Parent = garden
local collected = false

heart.Touched:Connect(function(hit)
if collected then return end

local character = hit.Parent
local player = Players:GetPlayerFromCharacter(character)

if player then
local stats = player:FindFirstChild("leaderstats")
local hearts = stats and stats:FindFirstChild("Hearts")

if hearts then
collected = true
hearts.Value = hearts.Value + 1
heart:Destroy()
print(player.Name .." collected a heart!")
end
end
end)
end

print("GROW A FLOWER is runnning!")