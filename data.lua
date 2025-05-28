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