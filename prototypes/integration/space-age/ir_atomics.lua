if mods["space-age"] then
	data:extend({
		-- Calcite
		{
			type = "recipe",
			name = "y-ac-calcite2uc",
			order = "a",
			energy_required = 2,
			enabled = true,
			ingredients = {
				{ type = "item", name = "calcite", amount = 10 },
			},
			results = {
				{ type = "item", name = "y-unicomp-a2", amount = 1 },
			},
			main_product = "y-unicomp-a2",
			subgroup = "j-y-atomics-3",
			category = "yuoki-atomics",
			icons = yi.lib.recipe.atomics.item_down("calcite"),
			auto_recycle = false,
		},

		{
			type = "recipe",
			name = "y-ac-uc2calcite",
			order = "a",
			energy_required = 2,
			enabled = true,
			ingredients = {
				{ type = "item", name = "y-unicomp-a2", amount = 1 },
			},
			results = {
				{ type = "item", name = "calcite", amount = 10 },
			},
			main_product = "calcite",
			subgroup = "j-y-atomics-12",
			category = "yuoki-atomics",
			icons = yi.lib.recipe.atomics.item_up("calcite"),
			auto_recycle = false,
		},

		-- Tungsten ore
		{
			type = "recipe",
			name = "y-ac-tungsten2uc",
			order = "b",
			energy_required = 2,
			enabled = true,
			ingredients = {
				{ type = "item", name = "tungsten-ore", amount = 10 },
			},
			results = {
				{ type = "item", name = "y-unicomp-a2", amount = 1 },
			},
			main_product = "y-unicomp-a2",
			subgroup = "j-y-atomics-3",
			category = "yuoki-atomics",
			icons = yi.lib.recipe.atomics.item_down("tungsten-ore"),
			auto_recycle = false,
		},

		{
			type = "recipe",
			name = "y-ac-uc2tungsten",
			order = "b",
			energy_required = 2,
			enabled = true,
			ingredients = {
				{ type = "item", name = "y-unicomp-a2", amount = 1 },
			},
			results = {
				{ type = "item", name = "tungsten-ore", amount = 10 },
			},
			main_product = "tungsten-ore",
			subgroup = "j-y-atomics-12",
			category = "yuoki-atomics",
			icons = yi.lib.recipe.atomics.item_up("tungsten-ore"),
			auto_recycle = false,
		},

		-- Holmium ore
		{
			type = "recipe",
			name = "y-ac-holmium2uc",
			order = "c",
			energy_required = 2,
			enabled = true,
			ingredients = {
				{ type = "item", name = "holmium-ore", amount = 10 },
			},
			results = {
				{ type = "item", name = "y-unicomp-a2", amount = 1 },
			},
			main_product = "y-unicomp-a2",
			subgroup = "j-y-atomics-3",
			category = "yuoki-atomics",
			icons = yi.lib.recipe.atomics.item_down("holmium-ore"),
			auto_recycle = false,
		},

		{
			type = "recipe",
			name = "y-ac-uc2holmium",
			order = "c",
			energy_required = 2.0,
			enabled = true,
			ingredients = {
				{ type = "item", name = "y-unicomp-a2", amount = 1 },
			},
			results = {
				{ type = "item", name = "holmium-ore", amount = 10 },
			},
			main_product = "holmium-ore",
			subgroup = "j-y-atomics-12",
			category = "yuoki-atomics",
			icons = yi.lib.recipe.atomics.item_up("holmium-ore"),
			auto_recycle = false,
		},
	})
end
