---@type number
---@diagnostic disable-next-line: assign-type-mismatch
local pump_speed_multiplier = settings.startup["pump_speed_multiplier"].value

local pumpTypes = { "pump", "offshore-pump" }

for _, typeName in pairs(pumpTypes) do
    for itemName, _ in pairs(data.raw[typeName]) do
        if data.raw[typeName][itemName].pumping_speed then
            data.raw[typeName][itemName].pumping_speed = math.ceil(data.raw[typeName][itemName].pumping_speed * pump_speed_multiplier)
        end
    end
end
