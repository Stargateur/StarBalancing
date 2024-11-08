data.raw["ammo-turret"]["gun-turret"].max_health = 1000
data.raw["ammo-turret"]["rocket-turret"].max_health = 1800

local tesla_turret = data.raw["electric-turret"]["tesla-turret"]
tesla_turret.max_health = 2000
tesla_turret.energy_source.drain = "133.7kW"
tesla_turret.energy_source.buffer_capacity = "42MJ"
tesla_turret.energy_source.input_flow_limit = "21MW"
tesla_turret.attack_parameters.ammo_type.energy_consumption = "42MJ"