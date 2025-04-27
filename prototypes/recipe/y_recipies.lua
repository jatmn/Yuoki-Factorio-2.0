data:extend({

	{
		type = "recipe",
		name = "y-coal-brikett",
		enabled = true,
		energy_required = 4,
		category = "yuoki-formpress",
		ingredients = {
			{ type = "item", name = "y-coal-dust", amount = 3 },
		},
		results = {
			{ type = "item", name = "y-coal-brikett", amount = 1 },
		},
		main_product = "y-coal-brikett",
		group = "yuoki",
		subgroup = "y-fuel",
		order = "coal-b",
		icon_size = 64,
		icon = "__Yuoki__/graphics/icons/coal_brikett_32.png",
	},

	{
		type = "recipe",
		name = "y-coal-stack",
		enabled = true,
		energy_required = 4,
		category = "yuoki-formpress",
		ingredients = {
			{ type = "item", name = "y-coal-brikett", amount = 3 },
		},
		results = {
			{ type = "item", name = "y-coal-stack", amount = 1 },
			{ type = "item", name = "y_rwtechsign", amount = 1 },
		},
		main_product = "y-coal-stack",
		group = "yuoki",
		subgroup = "y-fuel",
		order = "coal-s",
		icon_size = 64,
		icon = "__Yuoki__/graphics/icons/coal_briketts.png",
	},

	-- new-coal-things 215-0103
	{
		type = "recipe",
		name = "y-coal-dust",
		enabled = true,
		energy_required = 2,
		category = "y-crushing",
		group = "yuoki",
		subgroup = "y-fuel",
		order = "coal-s",
		icon_size = 64,
		icon = "__Yuoki__/graphics/icons/coal-dust.png",
		ingredients = {
			{ type = "item", name = "coal", amount = 4 },
		},
		results = {
			{ type = "item", name = "y-coal-dust", amount = 6 },
		},
		main_product = "y-coal-dust",
	},
	{
		type = "recipe",
		name = "y-coaldust-mixing",
		enabled = true,
		energy_required = 2,
		category = "yuoki-formpress",
		group = "yuoki",
		subgroup = "y-fuel",
		order = "coal-s",
		icon_size = 64,
		icon = "__Yuoki__/graphics/icons/mix-fuel.png",
		ingredients = {
			{ type = "item", name = "y-coal-dust", amount = 2 },
			{ type = "item", name = "y-crush-yres2", amount = 2 },
		},
		results = {
			{ type = "item", name = "y-mixed-fuel", amount = 1 },
		},
		main_product = "y-mixed-fuel",
	},
	{
		type = "recipe",
		name = "y-mixfuel-load",
		enabled = true,
		energy_required = 2,
		category = "yuoki-formpress",
		group = "yuoki",
		subgroup = "y-fuel",
		order = "coal-s",
		icon_size = 64,
		icon = "__Yuoki__/graphics/icons/mix-fuel-loaded.png",
		ingredients = {
			{ type = "item", name = "y-mixed-fuel", amount = 1 },
			{ type = "item", name = "y-refined-yres2", amount = 1 },
		},
		results = {
			{ type = "item", name = "y-mixed-fuel-loaded", amount = 1 },
			{ type = "item", name = "y_rwtechsign", amount = 1 },
		},
		main_product = "y-mixed-fuel-loaded",
	},

	{
		type = "recipe",
		name = "y-wooden-brikett",
		enabled = true,
		energy_required = 9,
		ingredients = {
			{ type = "item", name = "wood", amount = 8 },
		},
		results = {
			{ type = "item", name = "y-wooden-brikett", amount = 4 },
			{ type = "item", name = "y_greensign", amount = 1 },
		},
		main_product = "y-wooden-brikett",
		group = "yuoki",
		subgroup = "y-fuel",
		order = "wooden",
		icon_size = 64,
		icon = "__Yuoki__/graphics/icons/wood_brikett_32.png",
	},

	{
		type = "recipe",
		name = "y-wooden-brikett-packed",
		enabled = true,
		energy_required = 4,
		ingredients = {
			{ type = "item", name = "y-wooden-brikett", amount = 4 },
		},
		results = {
			{ type = "item", name = "y-wooden-brikett-packed", amount = 1 },
			{ type = "item", name = "y_rwtechsign", amount = 1 },
		},
		main_product = "y-wooden-brikett-packed",
		group = "yuoki",
		subgroup = "y-fuel",
		order = "wooden",
		icon_size = 64,
		icon = "__Yuoki__/graphics/icons/wood-pellets.png",
	},

	{
		type = "recipe",
		name = "y-release-cwater",
		category = "yuoki-formpress",
		energy_required = 1,
		ingredients = {
			{ type = "fluid", name = "y-con_water", amount = 480 },
		},
		results = {
			{ type = "item", name = "y-c_mud", amount = 4 },
			{ type = "item", name = "y-toxic-dust", amount = 1 },
		},
		main_product = "y-c_mud",
		enabled = true,
		icon_size = 64,
		icon = "__Yuoki__/graphics/icons/c_mud_icon.png",
		group = "yuoki",
		subgroup = "y_line3",
		order = "a1",
	},

	{
		type = "recipe",
		name = "y-pressed_dry_mud",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-c_mud", amount = 4 },
		},
		results = {
			{ type = "item", name = "y-dry_mud", amount = 1 },
		},
		main_product = "y-dry_mud",
		icon_size = 64,
		icon = "__Yuoki__/graphics/icons/dry_mud_icon.png",
		category = "yuoki-formpress",
		group = "yuoki",
		subgroup = "y_line4",
		order = "a2",
	},

	{
		type = "recipe",
		name = "y_mud2solidfuel",
		energy_required = 3.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-dry_mud", amount = 7 },
		},
		results = {
			{ type = "item", name = "y-mixed-fuel", amount = 1 },
		},
		main_product = "y-mixed-fuel",
		icon_size = 64,
		icon = "__Yuoki__/graphics/icons/mix-fuel.png",
		category = "yuoki-formpress",
		group = "yuoki-energy",
		subgroup = "y-fuel",
		order = "a8",
	},

	{
		type = "recipe",
		name = "y_mixedfuel2rocketfuel",
		energy_required = 3.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-mixed-fuel", amount = 10 },
		},
		results = {
			{ type = "item", name = "rocket-fuel", amount = 1 },
		},
		main_product = "rocket-fuel",
		icon_size = 64,
		icon = "__base__/graphics/icons/rocket-fuel.png",
		category = "chemistry",
		group = "yuoki-energy",
		subgroup = "y-fuel",
		order = "a9",
	},

	{
		type = "recipe",
		name = "y-filtering-dust",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-c_mud", amount = 40 },
		},
		results = {
			{ type = "item", name = "y-crush-yres1", amount = 1 },
			{ type = "item", name = "y-crush-yres2", amount = 1 },
		},
		icon_size = 64,
		icon = "__Yuoki__/graphics/icons/yb-dusts.png",
		category = "yuoki-formpress",
		group = "yuoki",
		subgroup = "y_line4",
		order = "a0",
	},
})
