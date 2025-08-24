-- item name, tech level, has custom stack icon
local itemTable = {
	{ "y-crush-yres1", 1, false },
	{ "y-crush-yres2", 1, false },
	{ "y-dirt", 1, false },
	{ "y-unicomp-a2", 1, false },
	{ "y-refined-yres1", 1, false },
	{ "y-refined-yres2", 1, false },
	{ "y-unicomp-raw", 1, false },
	{ "y-raw-fuelnium", 1, false },
	{ "y-fuel-reactor", 1, false },
	{ "y-infused-mud", 1, false },
	{ "y_drillhead", 1, false },
	{ "y_toolhead", 1, false },
	{ "yi_graphite", 1, false },
	{ "y-conductive-coil-1", 1, false },
	{ "y-orange-stuff", 1, false },
	{ "y-conductive-wire-1", 1, false },
	{ "y_structure_electric", 1, false },
	{ "y_slag_brick", 1, false },
	{ "y_slag_granulate", 1, false },
	{ "y-pure-copper", 1, false },
	{ "y-pure-iron", 1, false },
	{ "y-richdust", 1, false },
	{ "y_rwtechsign", 1, false },
	{ "ypfw_trader_sign", 1, false },
	{ "y_greensign", 1, false },
	{ "y-chip-1", 1, false },
	{ "y-chip-2", 1, false },
	{ "y-basic-t2-mf", 1, false },
	{ "y-basic-t1-mf", 1, false },
	{ "yi_magnetron", 1, false },
	{ "y-slag", 1, false },
	{ "ye_science_blue", 1, false },
	{ "y-crystal2", 1, false },
	{ "y_quantrinum_infused", 1, false },
	{ "y_crystal2_combined", 1, false },
	{ "y-bluegear", 1, false },
	{ "y_organic_dust", 1, false },
	{ "y_structure_element", 1, false },
	{ "y-heat-pipe", 1, false },
	{ "y-crystal-cnd", 1, false },
	{ "y-coal-dust", 1, false },
	{ "y_structure_vessel", 1, false },
	{ "y-quantrinum", 1, false },
	{ "y-infused-uca2", 1, false },
	{ "y_chip_plate", 1, false },
	{ "y_dotzetron", 1, false },
	{ "y-battery-single-use1", 1, false },
	{ "y-battery-single-use2", 1, false },
	{ "y-battery-single-use3", 1, false },
	{ "y_blocked_capa", 1, false },
	{ "y-bullet-case", 1, false },
	{ "y_ammo_case", 1, false },
	{ "y-coal-brikett", 1, false },
	{ "y-coal-stack", 1, false },
	{ "y-mixed-fuel", 1, false },
	{ "y-mixed-fuel-loaded", 1, false },
	{ "y-wooden-brikett", 1, false },
	{ "y-wooden-brikett-packed", 1, false },
	{ "y-c_mud", 1, false },
	{ "y-dry_mud", 1, false },
	{ "y-toxic-dust", 1, false },
}

-- This is really broken in 2.0 will re-visit later
-- JATMN 11/24/2024

--if deadlock_stacking then
--	for _, item in ipairs(itemTable) do
--		if data.raw.item[item[1]] then
--            if item[3] then
--    			deadlock.add_stack(item[1], "___Yuoki__/graphics/stacks/"..item[1].."-stack.png", "deadlock-stacking-"..item[2],32)
--            else
--                deadlock.add_stack(item[1], nil, "deadlock-stacking-"..item[2],32)
--            end
--		end
--	end
--end

--if deadlock_crating then
--  for _, item in pairs(itemTable) do
--    if data.raw.item[item[1]] then
--      deadlock_crating.add_crate(item[1], "deadlock-crating-"..item[2])
--    end
--  end
--end

-- Build out YI Logistics (JATMN)
-- From Fixes Mod
-- Group 1
-- Group 2
-- Group 3 (Not yet, these are from Engines Mod)
--data.raw.recipe["ye_tranport_tube_orange_recipe"].subgroup = "j-y-logi-3"
--data.raw.recipe["ye_tranport_tube_orange_underground_recipe"].subgroup = "j-y-logi-3"
--data.raw.recipe["ye_tranport_tube_orange_splitter_recipe"].subgroup = "j-y-logi-3"
--data.raw.recipe["ye_tranport_tube_orange_recipe"].order = "a"
--data.raw.recipe["ye_tranport_tube_orange_underground_recipe"].order = "b"
--data.raw.recipe["ye_tranport_tube_orange_splitter_recipe"].order = "b"

-- Group 4
--data.raw.recipe["ye_tranport_tube_green_recipe"].subgroup = "j-y-logi-4"
--data.raw.recipe["ye_tranport_tube_green_underground_recipe"].subgroup = "j-y-logi-4"
--data.raw.recipe["ye_tranport_tube_green_splitter_recipe"].subgroup = "j-y-logi-4"
--data.raw.recipe["ye_tranport_tube_green_recipe"].order = "a"
--data.raw.recipe["ye_tranport_tube_green_underground_recipe"].order = "b"
--data.raw.recipe["ye_tranport_tube_green_splitter_recipe"].order = "b"

-- if space age
if mods["space-age"] then
	table.insert(
		data.raw["technology"]["physical-projectile-damage-1"].effects,
		{ type = "turret-attack", turret_id = "y_turret_gun1f12", modifier = 0.05 }
	)
	table.insert(
		data.raw["technology"]["physical-projectile-damage-2"].effects,
		{ type = "turret-attack", turret_id = "y_turret_gun1f12", modifier = 0.05 }
	)
	table.insert(
		data.raw["technology"]["physical-projectile-damage-3"].effects,
		{ type = "turret-attack", turret_id = "y_turret_gun1f12", modifier = 0.05 }
	)
	table.insert(
		data.raw["technology"]["physical-projectile-damage-4"].effects,
		{ type = "turret-attack", turret_id = "y_turret_gun1f12", modifier = 0.05 }
	)
	table.insert(
		data.raw["technology"]["physical-projectile-damage-5"].effects,
		{ type = "turret-attack", turret_id = "y_turret_gun1f12", modifier = 0.05 }
	)
	table.insert(
		data.raw["technology"]["physical-projectile-damage-6"].effects,
		{ type = "turret-attack", turret_id = "y_turret_gun1f12", modifier = 0.1 }
	)
	table.insert(
		data.raw["technology"]["physical-projectile-damage-7"].effects,
		{ type = "turret-attack", turret_id = "y_turret_gun1f12", modifier = 0.175 }
	)

	table.insert(
		data.raw["technology"]["physical-projectile-damage-1"].effects,
		{ type = "turret-attack", turret_id = "y_turret_gun2f12", modifier = 0.05 }
	)
	table.insert(
		data.raw["technology"]["physical-projectile-damage-2"].effects,
		{ type = "turret-attack", turret_id = "y_turret_gun2f12", modifier = 0.05 }
	)
	table.insert(
		data.raw["technology"]["physical-projectile-damage-3"].effects,
		{ type = "turret-attack", turret_id = "y_turret_gun2f12", modifier = 0.05 }
	)
	table.insert(
		data.raw["technology"]["physical-projectile-damage-4"].effects,
		{ type = "turret-attack", turret_id = "y_turret_gun2f12", modifier = 0.05 }
	)
	table.insert(
		data.raw["technology"]["physical-projectile-damage-5"].effects,
		{ type = "turret-attack", turret_id = "y_turret_gun2f12", modifier = 0.05 }
	)
	table.insert(
		data.raw["technology"]["physical-projectile-damage-6"].effects,
		{ type = "turret-attack", turret_id = "y_turret_gun2f12", modifier = 0.1 }
	)
	table.insert(
		data.raw["technology"]["physical-projectile-damage-7"].effects,
		{ type = "turret-attack", turret_id = "y_turret_gun2f12", modifier = 0.175 }
	)

	table.insert(
		data.raw["technology"]["refined-flammables-1"].effects,
		{ type = "turret-attack", turret_id = "y_turret_flame", modifier = 0.2 }
	)
	table.insert(
		data.raw["technology"]["refined-flammables-2"].effects,
		{ type = "turret-attack", turret_id = "y_turret_flame", modifier = 0.2 }
	)
	table.insert(
		data.raw["technology"]["refined-flammables-3"].effects,
		{ type = "turret-attack", turret_id = "y_turret_flame", modifier = 0.2 }
	)
	table.insert(
		data.raw["technology"]["refined-flammables-4"].effects,
		{ type = "turret-attack", turret_id = "y_turret_flame", modifier = 0.2 }
	)
	table.insert(
		data.raw["technology"]["refined-flammables-5"].effects,
		{ type = "turret-attack", turret_id = "y_turret_flame", modifier = 0.3 }
	)
	table.insert(
		data.raw["technology"]["refined-flammables-6"].effects,
		{ type = "turret-attack", turret_id = "y_turret_flame", modifier = 0.4 }
	)
	table.insert(
		data.raw["technology"]["refined-flammables-7"].effects,
		{ type = "turret-attack", turret_id = "y_turret_flame", modifier = 0.2 }
	)

	table.insert(
		data.raw["technology"]["electric-weapons-damage-2"].effects,
		{ type = "ammo-damage", ammo_category = "plasma", modifier = 0.4 }
	)
	table.insert(
		data.raw["technology"]["electric-weapons-damage-3"].effects,
		{ type = "ammo-damage", ammo_category = "plasma", modifier = 0.5 }
	)
	table.insert(
		data.raw["technology"]["electric-weapons-damage-4"].effects,
		{ type = "ammo-damage", ammo_category = "plasma", modifier = 0.6 }
	)

-- Make smart inserter into a stack inserter
data.raw["inserter"]["y-inserter-smart"].stack_size_bonus = 4
data.raw["inserter"]["y-inserter-smart"].grab_less_to_match_belt_stack = true
data.raw["inserter"]["y-inserter-smart"].wait_for_full_hand = true
data.raw["inserter"]["y-inserter-smart"].enter_drop_mode_if_held_stack_spoiled = true
data.raw["inserter"]["y-inserter-smart"].max_belt_stack_size = 4

end
