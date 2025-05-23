
--K2 compatibility
if mods["Krastorio2"] then
	
	if settings.startup["wret-change-K2-beacon"].value then
	local singularity_beacon = data.raw["beacon"]["kr-singularity-beacon"]
	singularity_beacon.icons_positioning = {
		{
		inventory_index = defines.inventory.beacon_modules,
		max_icons_per_row = 4,
		scale = .3,
		separation_multiplier = 1.1,
		multi_row_initial_height_modifier = -1.2
		}
	}
	singularity_beacon.module_slots = 16
	singularity_beacon.energy_usage = "800kW"
	singularity_beacon.distribution_effectivity = 1.5
	singularity_beacon.supply_area_distance = 1
	end
	
	if settings.startup["wret-overload-enable-beaconmk3"].value == true then
		data.raw["recipe"]["wr-beacon-3"].ingredients = {
			{type = "item", name = "wr-beacon-2", amount = 1},
			{type = "item", name = "kr-imersium-beam", amount = 4},
			{type = "item", name = "kr-ai-core", amount = 20},
			{type = "item", name = "copper-cable", amount = 30},
			{type = "item", name = "kr-energy-control-unit", amount = 20},
			{type = "item", name = "substation", amount = 4},
			{type = "item", name = "kr-advanced-radar", amount = 4}
		}
		data.raw["technology"]["effect-transmission-3"].prerequisites = {
			"effect-transmission-2", 
			"space-science-pack", 
			"electric-energy-distribution-2",
			"kr-ai-core",
			"kr-energy-control-unit",
			"kr-advanced-radar"
		}
		data.raw["technology"]["effect-transmission-3"].unit.ingredients = {
			{"production-science-pack", 1},
			{"utility-science-pack", 1},
			{"space-science-pack", 1},
			{"kr-matter-tech-card", 1},
			{"kr-advanced-tech-card", 1}
		}
		data.raw["technology"]["effect-transmission-3"].prerequisites = {
			"effect-transmission", 
			"utility-science-pack",
		}
	end
	
	if settings.startup["wret-overload-enable-beaconmk2"].value == true then
		data.raw["recipe"]["wr-beacon-2"].ingredients = {
			{type = "item", name = "beacon", amount = 1},
			{type = "item", name = "low-density-structure", amount = 20},
			{type = "item", name = "processing-unit", amount = 20},
			{type = "item", name = "copper-cable", amount = 20},
			{type = "item", name = "radar", amount = 4}
		}
		data.raw["technology"]["effect-transmission-2"].unit.ingredients = {
			{"production-science-pack", 1},
			{"utility-science-pack", 1},
			{"space-science-pack", 1},
		}
	end
end