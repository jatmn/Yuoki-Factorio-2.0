local uc_heavyoil = settings.startup["yuoki-uc-heavyoil"].value
local uc_heavyoil_h = false
if uc_heavyoil == false then
    uc_heavyoil_h = true
end


data:extend(
{
	-- pure atomic constructs
	{
		type = "recipe",
		name = "y-ac-iron2uc",
		order = "d",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{type="item", name="iron-ore", amount=20},
		},
		results = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-2",
		category = "yuoki-atomics",
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/iron2uc.png",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-copper2uc",
		order = "e",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{type="item", name="copper-ore", amount=20},
		},
		results = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-2",
		category = "yuoki-atomics",
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/copper2uc.png",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-wood2uc",
		order = "a",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{type="item", name="wood", amount=20},
		},
		results = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-2",
		category = "yuoki-atomics",
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/wood2uc.png",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-stone2uc",
		order = "b",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{type="item", name="stone", amount=20},
		},
		results = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-2",
		category = "yuoki-atomics",
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/stone2uc.png",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-coal2uc",
		order = "c",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{type="item", name="coal", amount=20},
		},
		results = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-2",
		category = "yuoki-atomics",
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/coal2uc.png",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-uc42uc",
		order = "g",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{type="item", name="y-res1", amount=10},
		},
		results = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-2",
		category = "yuoki-atomics",
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/n42uc.png",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-fuel2uc",
		order = "h",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{type="item", name="y-res2", amount=10},
		},
		results = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-2",
		category = "yuoki-atomics",
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/fuel2uc.png",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-slag2uc",
		order = "a",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{type="item", name="y-slag", amount=100},
		},
		results = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-4",
		category = "yuoki-atomics",
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/slag2uc.png",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-crystal2uc",
		order = "d",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{type="item", name="y-crystal2", amount=100},
		},
		results = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-4",
		category = "yuoki-atomics",
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/crystal2uc.png",
		auto_recycle = false,
	},	

	{
		type = "recipe",
		name = "y_ac_uran2uc",
		order = "f",
		energy_required = 4.0,
		enabled = true,
		ingredients = {
			{type="item", name="uranium-ore", amount=12},
		},
		results = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-2",
		category = "yuoki-atomics",
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/uranium2uc.png",
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
			{type="item", name="y-toxic-dust", amount=70},
		},
		results = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-4",
		category = "yuoki-atomics",
		icon_size = 64,
		icon = "__Yuoki__/graphics/icons/toxic-dust_recycle.png",
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
			{type="item", name="y-dry_mud", amount=30},
		},
		results = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		main_product = "y-unicomp-a2",
		subgroup = "j-y-atomics-4",
		category = "yuoki-atomics",
		icon_size = 64,
		icon = "__Yuoki__/graphics/icons/mud_recycle.png",
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
			{type="item", name="y-unicomp-a2", amount=1},
		},
		results = {
			{type="item", name="copper-ore", amount=20},
		},
		main_product = "copper-ore",
		subgroup = "j-y-atomics-11",
		category = "yuoki-atomics",
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/uc2copper.png",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-uc2iron",
		order = "d",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		results = {
			{type="item", name="iron-ore", amount=20},
		},
		main_product = "iron-ore",
		subgroup = "j-y-atomics-11",
		category = "yuoki-atomics",
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/uc2iron.png",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-uc2wood",
		order = "a",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		results = {
			{type="item", name="wood", amount=20},
		},
		main_product = "wood",
		subgroup = "j-y-atomics-11",
		category = "yuoki-atomics",
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/uc2wood.png",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-uc2coal",
		order = "c",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		results = {
			{type="item", name="coal", amount=20},
		},
		main_product = "coal",
		subgroup = "j-y-atomics-11",
		category = "yuoki-atomics",
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/uc2coal.png",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-uc2stone",
		order = "b",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		results = {
			{type="item", name="stone", amount=20},
		},
		main_product = "stone",
		subgroup = "j-y-atomics-11",
		category = "yuoki-atomics",
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/uc2stone.png",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-uc2uc4",
		order = "h",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		results = {
			{type="item", name="y-res1", amount=10},
		},
		main_product = "y-res1",
		subgroup = "j-y-atomics-11",
		category = "yuoki-atomics",
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/uc2n4.png",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-uc2fuel",
		order = "i",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		results = {
			{type="item", name="y-res2", amount=10},
		},
		main_product = "y-res2",
		subgroup = "j-y-atomics-11",
		category = "yuoki-atomics",
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/uc2fuel.png",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-ac-uc2plastic",
		order = "a",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		results = {
			{type="item", name="plastic-bar", amount=8},
		},
		main_product = "plastic-bar",
		subgroup = "j-y-atomics-13",
		category = "yuoki-atomics",
		icon_size = 128,
		icon =  "__Yuoki__/graphics/icons/atomics/uc2plastic.png",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y_ac_uc2uranore",
		order = "f",
		energy_required = 4.0,
		enabled = true,
		ingredients = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		results = {
			{type="item", name="uranium-ore", amount=12},
		},
		main_product = "uranium-ore",
		subgroup = "j-y-atomics-11",
		category = "yuoki-atomics",
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/uc2uranium.png",
		auto_recycle = false,
	},

	-- fluid transition
	{
		type = "recipe",
		name = "y-lightoil2uc",
		energy_required = 5,
		ingredients = {
			{type="fluid", name="light-oil", amount=100, }
		},
		results =
		{
			{type="item", name="y-unicomp-a2", amount=1},
		},
		main_product = "y-unicomp-a2",
		enabled = true,
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/lightoil2uc.png",
		order = "b",
		subgroup = "j-y-atomics-3",
		category = "yuoki-atomics",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-heavyoil2uc",
		energy_required = 5,
		ingredients = {
			{type="fluid", name="heavy-oil", amount=100, }
		},
		results=
		{
			{type="item", name="y-unicomp-a2", amount=1},
		},
		main_product = "y-unicomp-a2",
		enabled = uc_heavyoil,
		hidden = uc_heavyoil_h,
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/heavy-oil2uc.png",
		order = "c",
		subgroup = "j-y-atomics-3",
		category = "yuoki-atomics",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-lubricant2uc",
		energy_required = 5,
		ingredients = {
			{type="fluid", name="lubricant", amount=95, }
		},
		results=
		{
			{type="item", name="y-unicomp-a2", amount=1},
		},
		main_product = "y-unicomp-a2",
		enabled = true,
		icon_size = 128,
		icon = "__Yuoki__/graphics/icons/atomics/lubricant2uc.png",
		order = "e",
		subgroup = "j-y-atomics-3",
		category = "yuoki-atomics",
		auto_recycle = false,
	},

	{
		type = "recipe",
		name = "y-petroleum",
		energy_required = 5,
		ingredients = {
			{type="fluid", name="petroleum-gas", amount=100, }
		},
		results=
		{
			{type="item", name="y-unicomp-a2", amount=1},
		},
		main_product = "y-unicomp-a2",
		enabled = true,
		icon_size = 128,
		icon =  "__Yuoki__/graphics/icons/atomics/petro2uc.png",
		order = "d",
		subgroup = "j-y-atomics-3",
		category = "yuoki-atomics",
		auto_recycle = false,
	},

	-- only reverse to crude-oil
	{
		type = "recipe",
		name = "y-uc2crudeoil",
		energy_required = 5,
		ingredients = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		results=
		{
			{type="fluid", name="crude-oil", amount=80, }
		},
		main_product = "crude-oil",
		enabled = true,
		icon_size = 128,
		icon =  "__Yuoki__/graphics/icons/atomics/uc2crudeoil.png",
		order = "a",
		subgroup = "j-y-atomics-12",
		category = "yuoki-atomics",
		auto_recycle = false,
	},

	-- full fluid transition
	{
		type = "recipe",
		name = "y-uc2liquid",
		energy_required = 5,
		ingredients = {
			{type="item", name="y-unicomp-a2", amount=25},
		},
		results=
		{
			{type="fluid", name="y-liquid-uc2", amount=5, }
		},
		main_product = "y-liquid-uc2",
		enabled = true,
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/liquid_a2.png",
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
			{type="fluid", name="y-liquid-uc2", amount=5, }
		},
		results=
		{
			{type="item", name="y-unicomp-a2", amount=25},
		},
		main_product = "y-unicomp-a2",
		enabled = true,
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/unicomp_stack.png",
		order = "b",
		subgroup = "j-y-atomics-1",
		category = "yuoki-atomics",
		auto_recycle = false,
	},

})