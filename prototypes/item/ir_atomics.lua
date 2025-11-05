local uc_heavyoil = settings.startup["yuoki-uc-heavyoil"].value
local uc_heavyoil_h = false
if uc_heavyoil == false then
	uc_heavyoil_h = true
end

data:extend({
	-- pure atomic constructs
	{
		type = "recipe",
		name = "y-ac-iron2uc",
		order = "d",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "iron-ore", amount = 20 },
		},
		results = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-2",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_down("iron-ore"),
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-copper2uc",
		order = "e",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "copper-ore", amount = 20 },
		},
		results = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-2",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_down("copper-ore"),
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-wood2uc",
		order = "a",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "wood", amount = 20 },
		},
		results = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-2",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_down("wood"),
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-stone2uc",
		order = "b",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "stone", amount = 20 },
		},
		results = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-2",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_down("stone"),
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-coal2uc",
		order = "c",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "coal", amount = 20 },
		},
		results = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-2",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_down("coal"),
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-uc42uc",
		order = "g",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-res1", amount = 10 },
		},
		results = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-2",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_down("y-res1"),
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-fuel2uc",
		order = "h",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-res2", amount = 10 },
		},
		results = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-2",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_down("y-res2"),
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-slag2uc",
		order = "a",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-slag", amount = 100 },
		},
		results = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-5",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_down("y-slag"),
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-crystal2uc",
		order = "d",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-crystal2", amount = 100 },
		},
		results = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-5",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_down("y-crystal2"),
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y_ac_uran2uc",
		order = "f",
		energy_required = 4.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "uranium-ore", amount = 12 },
		},
		results = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-2",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_down("uranium-ore"),
		auto_recycle = false,
	},

	-- toxic-dust-recycle
	{
		type = "recipe",
		name = "y-ac-toxic2uc",
		order = "b",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-toxic-dust", amount = 70 },
		},
		results = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-5",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_down("y-toxic-dust"),
		auto_recycle = false,
	},

	-- mud-ball-recycle
	{
		type = "recipe",
		name = "y-ac-mud2uc",
		order = "c",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-dry_mud", amount = 30 },
		},
		results = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-5",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_down("y-dry_mud"),
		auto_recycle = false,
	},

	-- reverse atomic transfers and ++
	{
		type = "recipe",
		name = "y-ac-uc2copper",
		order = "e",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		results = {
			{ type = "item", name = "copper-ore", amount = 20 },
		},
		main_product = "copper-ore",
		subgroup = "j-y-atomics-11",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_up("copper-ore"),
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-uc2iron",
		order = "d",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		results = {
			{ type = "item", name = "iron-ore", amount = 20 },
		},
		main_product = "iron-ore",
		subgroup = "j-y-atomics-11",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_up("iron-ore"),
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-uc2wood",
		order = "a",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		results = {
			{ type = "item", name = "wood", amount = 20 },
		},
		main_product = "wood",
		subgroup = "j-y-atomics-11",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_up("wood"),
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-uc2coal",
		order = "c",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		results = {
			{ type = "item", name = "coal", amount = 20 },
		},
		main_product = "coal",
		subgroup = "j-y-atomics-11",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_up("coal"),
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-uc2stone",
		order = "b",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		results = {
			{ type = "item", name = "stone", amount = 20 },
		},
		main_product = "stone",
		subgroup = "j-y-atomics-11",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_up("stone"),
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-uc2uc4",
		order = "h",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		results = {
			{ type = "item", name = "y-res1", amount = 10 },
		},
		main_product = "y-res1",
		subgroup = "j-y-atomics-11",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_up("y-res1"),
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-uc2fuel",
		order = "i",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		results = {
			{ type = "item", name = "y-res2", amount = 10 },
		},
		main_product = "y-res2",
		subgroup = "j-y-atomics-11",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_up("y-res2"),
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-uc2plastic",
		order = "a",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		results = {
			{ type = "item", name = "plastic-bar", amount = 8 },
		},
		main_product = "plastic-bar",
		subgroup = "j-y-atomics-16",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_up("plastic-bar"),
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y_ac_uc2uranore",
		order = "f",
		energy_required = 4.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		results = {
			{ type = "item", name = "uranium-ore", amount = 12 },
		},
		main_product = "uranium-ore",
		subgroup = "j-y-atomics-11",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_up("uranium-ore"),
		auto_recycle = false,
	},

	-- fluid transition
	{
		type = "recipe",
		name = "y-lightoil2uc",
		energy_required = 5,
		ingredients = {
			{ type = "fluid", name = "light-oil", amount = 100 },
		},
		results = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		main_product = "y-unicomp-a2",
		enabled = true,
		icons = yi.lib.recipe.atomics.fluid_down("light-oil"),
		order = "b",
		subgroup = "j-y-atomics-10",
		category = "yuoki-atomics",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-heavyoil2uc",
		energy_required = 5,
		ingredients = {
			{ type = "fluid", name = "heavy-oil", amount = 100 },
		},
		results = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		main_product = "y-unicomp-a2",
		enabled = uc_heavyoil,
		hidden = uc_heavyoil_h,
		icons = yi.lib.recipe.atomics.fluid_down("heavy-oil"),
		order = "c",
		subgroup = "j-y-atomics-10",
		category = "yuoki-atomics",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-lubricant2uc",
		energy_required = 5,
		ingredients = {
			{ type = "fluid", name = "lubricant", amount = 95 },
		},
		results = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		main_product = "y-unicomp-a2",
		enabled = true,
		icons = yi.lib.recipe.atomics.fluid_down("lubricant"),
		order = "e",
		subgroup = "j-y-atomics-10",
		category = "yuoki-atomics",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-petroleum",
		energy_required = 5,
		ingredients = {
			{ type = "fluid", name = "petroleum-gas", amount = 100 },
		},
		results = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		main_product = "y-unicomp-a2",
		enabled = true,
		icons = yi.lib.recipe.atomics.fluid_down("petroleum-gas"),
		order = "d",
		subgroup = "j-y-atomics-10",
		category = "yuoki-atomics",
		auto_recycle = false,
	},

	-- only reverse to crude-oil
	{
		type = "recipe",
		name = "y-uc2crudeoil",
		energy_required = 5,
		ingredients = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		results = {
			{ type = "fluid", name = "crude-oil", amount = 80 },
		},
		main_product = "crude-oil",
		enabled = true,
		icons = yi.lib.recipe.atomics.fluid_up("crude-oil"),
		order = "a",
		subgroup = "j-y-atomics-14",
		category = "yuoki-atomics",
		auto_recycle = false,
	},

	-- full fluid transition
	{
		type = "recipe",
		name = "y-uc2liquid",
		energy_required = 5,
		ingredients = {
			{ type = "item", name = "y-unicomp-a2", amount = 25 },
		},
		results = {
			{ type = "fluid", name = "y-liquid-uc2", amount = 5 },
		},
		main_product = "y-liquid-uc2",
		enabled = true,
		icon_size = 64,
		icon = "__Yuoki__/graphics/icons/liquid_a2.png",
		order = "a",
		subgroup = "j-y-atomics-1",
		category = "yuoki-atomics",
		auto_recycle = false,
	},

	-- and fluid reverse
	{
		type = "recipe",
		name = "y-liquid2uc",
		energy_required = 5,
		ingredients = {
			{ type = "fluid", name = "y-liquid-uc2", amount = 5 },
		},
		results = {
			{ type = "item", name = "y-unicomp-a2", amount = 25 },
		},
		main_product = "y-unicomp-a2",
		enabled = true,
		icon_size = 64,
		icon = "__Yuoki__/graphics/icons/unicomp_stack.png",
		order = "b",
		subgroup = "j-y-atomics-1",
		category = "yuoki-atomics",
		auto_recycle = false,
	},

	-- contaminated water to unicomp
	{
		type = "recipe",
		name = "j-cw2uc-recipe",
		energy_required = 5,
		ingredients = {
			{ type = "fluid", name = "y-con_water", amount = 9100 },
		},
		results = {
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		main_product = "y-unicomp-a2",
		enabled = true,
		icons = yi.lib.recipe.atomics.fluid_down("y-con_water"),
		order = "a",
		subgroup = "j-y-atomics-10",
		category = "yuoki-atomics",
	},
})
