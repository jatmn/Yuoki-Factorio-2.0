data:extend({

	-- recipe
	{
		type = "recipe",
		name = "y-repair-durotal",
		enabled = true,
		energy_required = 3,
		ingredients = {
			{ type = "item", name = "repair-pack", amount = 1 },
			{ type = "item", name = "y-unicomp-raw", amount = 1 },
		},
		results = { { type = "item", name = "y-repair-durotal", amount = 1 } },
		main_product = "y-repair-durotal",
		--result = "y-repair-durotal",
		group = "yuoki",
		subgroup = "y-tools",
		order = "rt-1",
	},
	{
		type = "recipe",
		name = "y-repair-krakon",
		enabled = true,
		energy_required = 3,
		ingredients = {
			{ type = "item", name = "repair-pack", amount = 1 },
			{ type = "item", name = "y-unicomp-a2", amount = 1 },
		},
		results = { { type = "item", name = "y-repair-krakon", amount = 1 } },
		main_product = "y-repair-krakon",
		--result = "y-repair-krakon",
		group = "yuoki",
		subgroup = "y-tools",
		order = "rt-2",
	},
	--[[
	{
		type = "recipe",
		name = "y-axe-durotal-recipe",		
		enabled = true,
		energy_required = 4,
		ingredients = {{"wood", 1},{"y-unicomp-raw", 2},},
		result = "y-axe-duro",
		group="yuoki",
		subgroup = "y-tools",
		order="wt-1",
	},	
	]]
	{
		type = "recipe",
		name = "y_repair_quantrinum",
		enabled = true,
		energy_required = 5,
		ingredients = {
			{ type = "item", name = "repair-pack", amount = 1 },
			{ type = "item", name = "y-quantrinum", amount = 1 },
		},
		results = { { type = "item", name = "y_repair_quantrinum", amount = 1 } },
		main_product = "y_repair_quantrinum",
		--result = "y_repair_quantrinum",
		group = "yuoki",
		subgroup = "y-tools",
		order = "rt-3",
	},
	--[[
	{
		type = "recipe",
		name = "y_quantrinum_hammer_recipe",		
		enabled = true,
		energy_required = 5,
		ingredients = {{"iron-stick", 1},{"y-quantrinum", 1},},
		result = "y_quantrinum_hammer",
		group="yuoki",
		subgroup = "y-tools",
		order="wt-2",
	},	
	]]

	-- items
	{
		type = "repair-tool",
		name = "y-repair-durotal",
		icon_size = 64,
		icon = "__Yuoki__/graphics/icons/repair-durotal-icon.png",
		group = "yuoki",
		subgroup = "y-tools",
		order = "b[repair]-a[repair-pack]",
		speed = 3,
		durability = 400,
		stack_size = 75,
	},
	{
		type = "repair-tool",
		name = "y-repair-krakon",
		icon_size = 64,
		icon = "__Yuoki__/graphics/icons/repair-krakon-icon.png",
		group = "yuoki",
		subgroup = "y-tools",
		order = "b[repair]-a[repair-pack]",
		speed = 5,
		durability = 750,
		stack_size = 75,
	},
	{
		type = "repair-tool",
		name = "y_repair_quantrinum",
		icon_size = 64,
		icon = "__Yuoki__/graphics/icons/repair_quantrinum.png",
		group = "yuoki",
		subgroup = "y-tools",
		order = "b[repair]-a[repair-pack]",
		speed = 25,
		durability = 7500,
		stack_size = 25,
	},

	--[[
	{
		type = "mining-tool",
		name = "y-axe-duro",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/hammer_std.png",
		action =
		{
			type="direct",
			action_delivery =
			{
				type = "instant",
				target_effects =
				{
					type = "damage",
					damage = { amount = 18 , type = "physical"}
				}
			}
		},
		durability = 8000,
		group="yuoki",
		subgroup = "y-tools",
		order = "a[mining]-b[steel-axe]",
		speed = 9,
		stack_size = 20,
	},	
	{
		type = "mining-tool",
		name = "y_quantrinum_hammer",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/hammer_quantrinum.png",
		action =
		{
			type="direct",
			action_delivery =
			{
				type = "instant",
				target_effects =
				{
					type = "damage",
					damage = { amount = 20 , type = "physical"}
				}
			}
		},
		durability = 25000,
		group="yuoki",
		subgroup = "y-tools",
		order = "wt-2",
		speed = 20,
		stack_size = 20,
	},	
	]]
})
