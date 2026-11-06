--HOUSE POSITION
local x = 55
local y = 0
local z = 35

--PART CREATOR

local function createPart(name, size, position,color, material)
local part = Instance.new("Part")
part.Name = name
part.Size = size
part.Position = position
part.Anchored = true
part.Color = color
part.Material = material or Enum.Material.SmoothPlastic
part.Parent = workspace
return part
end

--COLORS

local cream = Color3.fromRGB(255, 225,190)
local