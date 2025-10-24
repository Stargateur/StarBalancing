local kg = 1000

local ammo_turret = data.raw["ammo-turret"]
ammo_turret["gun-turret"].max_health = 1000
ammo_turret["gun-turret"].attack_parameters.range = 27

if ammo_turret["rocket-turret"] then
  ammo_turret["rocket-turret"].max_health = 1800
end

local roboport = data.raw["roboport"]["roboport"]
roboport.energy_source.input_flow_limit = "2.1MW"
roboport.energy_source.buffer_capacity = "10MJ"
roboport.recharge_minimum = "4MJ"

if data.raw["electric-turret"]["tesla-turret"] then
  local tesla_turret = data.raw["electric-turret"]["tesla-turret"]
  tesla_turret.max_health = 2000
  tesla_turret.energy_source.drain = "133.7kW"
  tesla_turret.energy_source.buffer_capacity = "43MJ"
  tesla_turret.energy_source.input_flow_limit = "43MW"
  tesla_turret.attack_parameters.ammo_type.energy_consumption = "42MJ"
end

if data.raw["cargo-bay"] and data.raw["cargo-bay"]["cargo-bay"] then
  local cargo_bay = data.raw["cargo-bay"]["cargo-bay"]
  cargo_bay.inventory_size_bonus = 128
end

if data.raw["module"]["quality-module"] then
  data.raw["module"]["quality-module"].effect.consumption = 0.4
end

if data.raw["module"]["quality-module-2"] then
  data.raw["module"]["quality-module-2"].effect.speed = -0.10
  data.raw["module"]["quality-module-2"].effect.consumption = 0.5
end

if data.raw["module"]["quality-module-3"] then
  data.raw["module"]["quality-module-3"].effect.quality = 0.4
  data.raw["module"]["quality-module-3"].effect.speed = -0.15
  data.raw["module"]["quality-module-3"].effect.consumption = 0.6
end

if data.raw["module"]["speed-module"] then
  data.raw["module"]["speed-module"].effect.quality = 0
end

if data.raw["module"]["speed-module-2"] then
  data.raw["module"]["speed-module-2"].effect.quality = 0
end

if data.raw["module"]["speed-module-3"] then
  data.raw["module"]["speed-module-3"].effect.quality = 0
end

if data.raw["module"]["efficiency-module-3"] then
  data.raw["module"]["efficiency-module-3"].effect.consumption = -0.6
end

data.raw["item"]["uranium-ore"].weight = 1000 * kg / 500
data.raw["item"]["uranium-235"].weight = 1000 * kg / 100
data.raw["item"]["uranium-238"].weight = 1000 * kg / 100

local ratio = 3
local plde = data.raw["active-defense-equipment"]["personal-laser-defense-equipment"]

if plde then
    plde.attack_parameters.damage_modifier = ratio
    plde.attack_parameters.ammo_type.energy_consumption = 400 * ratio .. "kJ"
    plde.energy_source.buffer_capacity = 400 * ratio * 10 .. "kJ"
end