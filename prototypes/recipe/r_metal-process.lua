data:extend(
{

	{
		type = "recipe",
		name = "y-infused-uca2",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/infused_uca2.png",
		enabled = true,
		energy_required = 60,
		ingredients = {
			{type="item", name="y-unicomp-a2", amount=1},
		},
		results = {
			{type="item", name="y-infused-uca2", amount=1,},
			{type="item", name="y_rwtechsign", amount=1,},
		},
		main_product = "y-infused-uca2",
		subgroup = "y-fuel",
		category="yuoki-alien",
	},
	{
		type = "recipe",
		name = "y-infused-mud",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/fuel_cell_d.png",
		enabled = true,
		energy_required = 16,
		ingredients = {
			{type="item", name="y-dry_mud", amount=10},
		},
		results = {
			{type="item", name="y-infused-mud", amount=10,},
			{type="item", name="y_rwtechsign", amount=1,},
		},
		main_product = "y-infused-mud",
		subgroup = "y-fuel",
		category="yuoki-alien",
	},

	-- first step, crushing unicomp, rawfuel	
	{
		type = "recipe",
		name = "y-crush-unicomp-raw",
		category = "y-crushing",
		energy_required = 6,
		ingredients = {
			{type="item", name="y-res1", amount=1},
			{type="fluid", name="water", amount=200},
		},
		results=
		{
			{type="item", name="y-crush-yres1", amount=2, },
		},
		main_product = "y-crush-yres1",
		enabled = true,
		order = "crush_b-1",
		subgroup = "y_line3",
	},
	{
		type = "recipe",
		name = "y-crush-fuel-raw",
		category = "y-crushing",
		energy_required = 6,
		ingredients = {
			{type="item", name="y-res2", amount=1},
			{type="fluid", name="water", amount=200},
		},
		results=
		{
			{type="item", name="y-crush-yres2", amount=2, },
		},
		main_product = "y-crush-yres2",
		enabled = true,
		order = "crush_ge-1",
		subgroup = "y_line3",
	},

	-- toolhead-crushs
	{
		type = "recipe",
		name = "y-crush-blue_whead",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/dust_blue_whead.png",
		category = "y-crushing",
		energy_required = 7,
		ingredients = {
			{type="item", name="y-res1", amount=5},
			{type="item", name="y_toolhead", amount=1},
		},
		results=
		{
			{type="item", name="y-crush-yres1", amount=12, },
			{type="item", name="y_toolhead_broken", amount=1, },
		},
		main_product = "y-crush-yres1",
		enabled = true,
		order = "crush_b-2",
		subgroup = "y_line3",
	},
	{
		type = "recipe",
		name = "y-crush-green_whead",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/dust_green_whead.png",
		category = "y-crushing",
		energy_required = 7,
		ingredients = {
			{type="item", name="y-res2", amount=5},
			{type="item", name="y_toolhead", amount=1},
		},
		results=
		{
			{type="item", name="y-crush-yres2", amount=12, },
			{type="item", name="y_toolhead_broken", amount=1, },
		},
		main_product = "y-crush-yres2",
		enabled = true,
		order = "crush_g-2",
		subgroup = "y_line3",
	},

	-- mixing-recipe
	{
		type = "recipe",
		name = "y-mixing-rich",
		enabled = true,
		energy_required = 2.0,
		ingredients = {
			{type="item", name="y-crush-yres1", amount=10},
			{type="item", name="y-crush-yres2", amount=10}
		},
		results = {
			{type="item", name="y-richdust", amount=20},
		},
		main_product = "y-richdust",
		subgroup = "y_line3",
		order="m-refined-x0",
	},

	-- smeltings
	{
		type = "recipe",
		name = "y-press-richdust",
		category = "yuoki-formpress",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/uni-komp-a2-icon.png",
		enabled = true,
		energy_required = 8.0,
		ingredients = {
			{type="item", name="y-richdust", amount=20}
		},
		results = {
			{type="item", name="y-unicomp-a2", amount=1,},
			{type="item", name="y-slag", amount=1,},
		},
		main_product = "y-unicomp-a2",
		subgroup = "y_line4",
		order="m-refined-x1",
	},
	{
		type = "recipe",
		name = "y-smelt-crush-res1",
		category = "yuoki-formpress",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/n4pellets_icon.png",
		enabled = true,
		energy_required = 4.0,
		ingredients = {
			{type="item", name="y-crush-yres1", amount=3}
		},
		results = {
			{type="item", name="y-refined-yres1", amount=1,},
			{type="item", name="y-slag", amount=1,},
		},
		main_product = "y-refined-yres1",
		subgroup = "y_line4",
		order="m-refined-b1",
	},
	{
		type = "recipe",
		name = "y-unicomp-raw",
		category = "yuoki-formpress",
		enabled = true,
		energy_required = 8.0,
		ingredients = {
			{type="item", name="y-refined-yres1", amount=3},
		},
		results = {
			{type="item", name="y-unicomp-raw", amount=1},
		},
		main_product = "y-unicomp-raw",
		subgroup = "y_line4",
		order="m-refined-b2",
	},
	{
		type = "recipe",
		name = "y-smelt-crush-res2",
		category = "yuoki-formpress",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/f7pellets_icon.png",
		enabled = true,
		energy_required = 6.0,
		ingredients = {
			{type="item", name="y-crush-yres2", amount=2}
		},
		results = {
			{type="item", name="y-refined-yres2", amount=1,},
			{type="item", name="y-slag", amount=1,},
		},
		main_product = "y-refined-yres2",
		subgroup = "y_line4",
		order="m-refined-g1",
	},
	{
		type = "recipe",
		name = "y-raw-fuelnium",
		category = "yuoki-formpress",
		enabled = true,
		energy_required = 10.0,
		ingredients = {
			{type="item", name="y-refined-yres2", amount=2},
		},
		results = {
			{type="item", name="y-raw-fuelnium", amount=1},
		},
		main_product = "y-raw-fuelnium",
		subgroup = "y_line4",
		order="m-refined-g2",
	},
	{
		type = "recipe",
		name = "y-fuel-reactor",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/reactor-fuel.png",
		enabled = true,
		energy_required = 10,
		ingredients ={
			{type="item", name="y-raw-fuelnium", amount=1},
			{type="item", name="y-unicomp-raw", amount=1},
			{type="item", name="iron-plate", amount=3}
		},
		results = {
			{type="item", name="y-fuel-reactor", amount=1,},
			{type="item", name="y_rwtechsign", amount=1,},
		},
		main_product = "y-fuel-reactor",
		subgroup = "y-fuel",
	},

	-- Quantrinum
	{
		type = "recipe",
		name = "y-quantrinum",
		category = "yuoki-wonder",
		energy_required = 20,
		enabled = true,
		ingredients = {
			{type="item", name="y-unicomp-a2", amount=15},
			{type="item", name="y-raw-fuelnium", amount=12},
			{type="item", name="y-unicomp-raw", amount=12},
			{type="item", name="y-crystal2", amount=8},
		},
		results = {
			{type="item", name="y-quantrinum", amount=1,},
			{type="item", name="ye_science_blue", amount=1,},
		},
		main_product = "y-quantrinum",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/quantrinum.png",
		subgroup = "y-tech",
		order="m-quantrinum",
	},
	-- Lachnan-Crystal
	{
		type = "recipe",
		name = "y-crystal-cnd",
		category = "yuoki-wonder",
		energy_required = 30,
		enabled = true,
		ingredients = {
			{type="item", name="y-pure-iron", amount=10},
			{type="item", name="y-slag", amount=40},
			{type="item", name="y-unicomp-a2", amount=8},
			{type="item", name="y-crystal2", amount=10},
		},
		results = {
			{type="item", name="y-crystal-cnd", amount=1,},
			{type="item", name="y_rwtechsign", amount=1,},
		},
		main_product = "y-crystal-cnd",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/crystal_3.png",
		subgroup = "y-tech",
		order="m-crystal",
	},

	{
		type = "recipe",
		name = "y-pure-copper",
		category = "yuoki-archaeology-wash",
		energy_required = 3,
		ingredients = {
			{type="item", name="copper-ore", amount=5},
			{type="fluid", name="water", amount=200},
		},
		results=
		{
			{type="item", name="y-pure-copper", amount=3 },
			{type="fluid", name="y-con_water", amount=125 }
		},
		main_product = "y-pure-copper",
		enabled = true,
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/pure-copper-n.png",
		group = "yuoki",
		subgroup = "y_line2",
		order="z-b-copper",
	},

	{
		type = "recipe",
		name = "y-pure-iron",
		category = "yuoki-archaeology-wash",
		energy_required = 3,
		ingredients = {
			{type="item", name="iron-ore", amount=5},
			{type="fluid", name="water", amount=200},
		},
		results=
		{
			{type="item", name="y-pure-iron", amount=3 },
			{type="fluid", name="y-con_water", amount=125 }
		},
		main_product = "y-pure-iron",
		enabled = true,
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/pure-iron-n.png",
		group = "yuoki",
		subgroup = "y_line2",
		order="z-a-iron",
	},

	-- with tools	
	{
		type = "recipe",
		name = "y_pure_copper_wtool",
		category = "yuoki-archaeology-wash",
		energy_required = 6,
		ingredients = {
			{type="item", name="copper-ore", amount=15},
			{type="item", name="y_toolhead", amount=1},
			{type="fluid", name="water", amount=80},
		},
		results=
		{
			{type="item", name="y-pure-copper", amount=12 },
			{type="item", name="y_toolhead_broken", amount=1 },
			{type="fluid", name="y-con_water", amount=50 }
		},
		main_product = "y-pure-copper",
		enabled = true,
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/pure_copper_wt.png",
		group = "yuoki",
		subgroup = "y_line2",
		order="z-b-copper",
	},
	{
		type = "recipe",
		name = "y_pure_iron_wtool",
		category = "yuoki-archaeology-wash",
		energy_required = 6,
		ingredients = {
			{type="item", name="iron-ore", amount=15},
			{type="item", name="y_toolhead", amount=1},
			{type="fluid", name="water", amount=80},
		},
		results=
		{
			{type="item", name="y-pure-iron", amount=12 },
			{type="item", name="y_toolhead_broken", amount=1 },
			{type="fluid", name="y-con_water", amount=50 }
		},
		main_product = "y-pure-iron",
		enabled = true,
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/pure_iron_wt.png",
		group = "yuoki",
		subgroup = "y_line2",
		order="z-a-iron",
	},

	{
		type = "recipe",
		name = "y-refined-copper",
		category = "smelting",
		energy_required = 4.0,
		enabled = true,
		ingredients = {
			{type="item", name="y-pure-copper", amount=1}
		},
		results = {
			{type="item", name="copper-plate", amount=2},
		},
		main_product = "copper-plate",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/pure-copper-n.png",
		order="m-refined-copper",
	},
	{
		type = "recipe",
		name = "y-refined-iron",
		category = "smelting",
		energy_required = 4.0,
		enabled = true,
		ingredients = {
			{type="item", name="y-pure-iron", amount=1}
		},
		results = {
			{type="item", name="iron-plate", amount=2},
		},
		main_product = "iron-plate",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/pure-iron-n.png",
		order="m-refined-iron",
	},

})