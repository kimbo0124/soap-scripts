--HOUSE POSITION
local x = 55
local y = 0
local z = 35

--PART COLOR

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

