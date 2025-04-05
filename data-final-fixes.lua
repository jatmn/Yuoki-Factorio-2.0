-- item name, tech level, has custom stack icon
local itemTable =
{
	{"y-crush-yres1", 1, false},
	{"y-crush-yres2", 1, false},
	{"y-dirt", 1, false},	
	{"y-unicomp-a2", 1, false},
	{"y-refined-yres1", 1, false},
	{"y-refined-yres2", 1, false},
	{"y-unicomp-raw", 1, false},
	{"y-raw-fuelnium", 1, false},
	{"y-fuel-reactor", 1, false},
	{"y-infused-mud", 1, false},
	{"y_drillhead", 1, false},
	{"y_toolhead", 1, false},		
	{"yi_graphite", 1, false},
	{"y-conductive-coil-1", 1, false},
	{"y-orange-stuff", 1, false},
	{"y-conductive-wire-1", 1, false},
	{"y_structure_electric", 1, false},
	{"y_slag_brick", 1, false},
	{"y_slag_granulate", 1, false},
	{"y-pure-copper", 1, false},
	{"y-pure-iron", 1, false},
	{"y-richdust", 1, false},
	{"y_rwtechsign", 1, false},
	{"ypfw_trader_sign", 1, false},
	{"y_greensign", 1, false},
	{"y-chip-1", 1, false},
	{"y-chip-2", 1, false},
	{"y-basic-t2-mf", 1, false},
	{"y-basic-t1-mf", 1, false},
	{"yi_magnetron", 1, false},
	{"y-slag", 1, false},
	{"ye_science_blue", 1, false},
	{"y-crystal2", 1, false},
	{"y_quantrinum_infused", 1, false},
	{"y_crystal2_combined", 1, false},
	{"y-bluegear", 1, false},
	{"y_organic_dust", 1, false},
	{"y_structure_element", 1, false},
	{"y-heat-pipe", 1, false},
	{"y-crystal-cnd", 1, false},	
	{"y-coal-dust", 1, false},
	{"y_structure_vessel", 1, false},
	{"y-quantrinum", 1, false},
	{"y-infused-uca2", 1, false},
	{"y_chip_plate", 1, false},
	{"y_dotzetron", 1, false},
	{"y-battery-single-use1", 1, false},
	{"y-battery-single-use2", 1, false},
	{"y-battery-single-use3", 1, false},
	{"y_blocked_capa", 1, false},
	{"y-bullet-case", 1, false},
	{"y_ammo_case", 1, false},
	{"y-coal-brikett", 1, false},
	{"y-coal-stack", 1, false},
	{"y-mixed-fuel", 1, false},
	{"y-mixed-fuel-loaded", 1, false},
	{"y-wooden-brikett", 1, false},
	{"y-wooden-brikett-packed", 1, false},
	{"y-c_mud", 1, false},
	{"y-dry_mud", 1, false},
	{"y-toxic-dust", 1, false},		
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

-- Group 5


-- Group 6


-- Group 7


-- Group 8



-- Group 10
data.raw.recipe["yi_roboport"].subgroup = "j-y-logi-9"

data.raw.recipe["yi_logistic-robot"].subgroup = "j-y-logi-9"
data.raw.recipe["yi_construction-robot"].subgroup = "j-y-logi-9"
data.raw.recipe["yi_roboport"].order = "1"

data.raw.recipe["yi_logistic-robot"].order = "a"
data.raw.recipe["yi_construction-robot"].order = "d"


-- Build out Atomics (JATMN)
-- From Fixes Mod
-- Atomic's Group 1 members
data.raw.recipe["y-uc2liquid"].subgroup = "j-y-atomics-1"
data.raw.recipe["y-liquid2uc"].subgroup = "j-y-atomics-1"
data.raw.recipe["y-uc2liquid"].order = "a"
data.raw.recipe["y-liquid2uc"].order = "b"

-- Atomic's Group 2 members
data.raw.recipe["y-ac-wood2uc"].subgroup = "j-y-atomics-2"
data.raw.recipe["y-ac-stone2uc"].subgroup = "j-y-atomics-2"
data.raw.recipe["y-ac-coal2uc"].subgroup = "j-y-atomics-2"
data.raw.recipe["y-ac-iron2uc"].subgroup = "j-y-atomics-2"
data.raw.recipe["y-ac-copper2uc"].subgroup = "j-y-atomics-2"
data.raw.recipe["y_ac_uran2uc"].subgroup = "j-y-atomics-2"
data.raw.recipe["y-ac-uc42uc"].subgroup = "j-y-atomics-2"
data.raw.recipe["y-ac-fuel2uc"].subgroup = "j-y-atomics-2"
data.raw.recipe["y-ac-wood2uc"].order = "a"
data.raw.recipe["y-ac-stone2uc"].order = "b"
data.raw.recipe["y-ac-coal2uc"].order = "c"
data.raw.recipe["y-ac-iron2uc"].order = "d"
data.raw.recipe["y-ac-copper2uc"].order = "e"
data.raw.recipe["y_ac_uran2uc"].order = "f"
data.raw.recipe["y-ac-uc42uc"].order = "g"
data.raw.recipe["y-ac-fuel2uc"].order = "h"

-- Atomic's Group 3 members
data.raw.recipe["y-lightoil2uc"].subgroup = "j-y-atomics-3"
data.raw.recipe["y-heavyoil2uc"].subgroup = "j-y-atomics-3"
data.raw.recipe["y-petroleum"].subgroup = "j-y-atomics-3"
data.raw.recipe["y-lubricant2uc"].subgroup = "j-y-atomics-3"
data.raw.recipe["y-lightoil2uc"].order = "b"
data.raw.recipe["y-heavyoil2uc"].order = "c"
data.raw.recipe["y-petroleum"].order = "d"
data.raw.recipe["y-lubricant2uc"].order = "e"

-- Atomic's Group 4 members
data.raw.recipe["y-ac-slag2uc"].subgroup = "j-y-atomics-4"
data.raw.recipe["y-ac-toxic2uc"].subgroup = "j-y-atomics-4"
data.raw.recipe["y-ac-mud2uc"].subgroup = "j-y-atomics-4"
data.raw.recipe["y-ac-crystal2uc"].subgroup = "j-y-atomics-4"
data.raw.recipe["y-ac-slag2uc"].order = "a"
data.raw.recipe["y-ac-toxic2uc"].order = "b"
data.raw.recipe["y-ac-mud2uc"].order = "c"
data.raw.recipe["y-ac-crystal2uc"].order = "d"

-- Atomic's Group 11 members
data.raw.recipe["y-ac-uc2wood"].subgroup = "j-y-atomics-11"
data.raw.recipe["y-ac-uc2stone"].subgroup = "j-y-atomics-11"
data.raw.recipe["y-ac-uc2coal"].subgroup = "j-y-atomics-11"
data.raw.recipe["y-ac-uc2iron"].subgroup = "j-y-atomics-11"
data.raw.recipe["y-ac-uc2copper"].subgroup = "j-y-atomics-11"
data.raw.recipe["y_ac_uc2uranore"].subgroup = "j-y-atomics-11"
data.raw.recipe["y-ac-uc2uc4"].subgroup = "j-y-atomics-11"
data.raw.recipe["y-ac-uc2fuel"].subgroup = "j-y-atomics-11"
data.raw.recipe["y-ac-uc2wood"].order = "a"
data.raw.recipe["y-ac-uc2stone"].order = "b"
data.raw.recipe["y-ac-uc2coal"].order = "c"
data.raw.recipe["y-ac-uc2iron"].order = "d"
data.raw.recipe["y-ac-uc2copper"].order = "e"
data.raw.recipe["y_ac_uc2uranore"].order = "f"
data.raw.recipe["y-ac-uc2uc4"].order = "h"
data.raw.recipe["y-ac-uc2fuel"].order = "i"

-- Atomic's Group 12 members
data.raw.recipe["y-uc2crudeoil"].subgroup = "j-y-atomics-12"
data.raw.recipe["y-uc2crudeoil"].order = "a"

-- Atomic's Group 13 members
data.raw.recipe["y-ac-uc2plastic"].subgroup = "j-y-atomics-13"
data.raw.recipe["y-ac-uc2plastic"].order = "a"