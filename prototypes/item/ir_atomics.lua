local uc_heavyoil = settings.startup["yuoki-uc-heavyoil"].value
local uc_heavyoil_h = false
if uc_heavyoil == false then
	uc_heavyoil_h = true
end

-- Paired ore recipes (call data:extend internally)
yi.lib.recipe.atomics.recipes_make_item("iron-ore", 64, 20, 1, "ore")
yi.lib.recipe.atomics.recipes_make_item("copper-ore", 64, 20, 1, "ore")
yi.lib.recipe.atomics.recipes_make_item("wood", 64, 20, 1, "ore")
yi.lib.recipe.atomics.recipes_make_item("stone", 64, 20, 1, "ore")
yi.lib.recipe.atomics.recipes_make_item("coal", 64, 20, 1, "ore")
yi.lib.recipe.atomics.recipes_make_item("y-res1", 64, 10, 1, "ore")
yi.lib.recipe.atomics.recipes_make_item("y-res2", 64, 10, 1, "ore")
yi.lib.recipe.atomics.recipes_make_item("uranium-ore", 64, 12, 1, "ore")

-- Configuration tables for repetitive recipes
local waste_item_recipes = {
	{ recipe_name = "y-ac-slag2uc", item_name = "y-slag", amount = 100, order = "a" },
	{ recipe_name = "y-ac-toxic2uc", item_name = "y-toxic-dust", amount = 70, order = "b" },
	{ recipe_name = "y-ac-mud2uc", item_name = "y-dry_mud", amount = 30, order = "c" },
	{ recipe_name = "y-ac-crystal2uc", item_name = "y-crystal2", amount = 100, order = "d" },
}

local fluid_down_recipes = {
	{ recipe_name = "y-lightoil2uc", fluid_name = "light-oil", amount = 100, order = "b", enabled = true },
	{
		recipe_name = "y-heavyoil2uc",
		fluid_name = "heavy-oil",
		amount = 100,
		order = "c",
		enabled = uc_heavyoil,
		hidden = uc_heavyoil_h,
	},
	{ recipe_name = "y-lubricant2uc", fluid_name = "lubricant", amount = 95, order = "e", enabled = true },
	{ recipe_name = "y-petroleum", fluid_name = "petroleum-gas", amount = 100, order = "d", enabled = true },
}

local single_up_recipes = {
	{
		type = "item",
		recipe_name = "y-ac-uc2plastic",
		name = "plastic-bar",
		amount = 8,
		order = "a",
		subgroup = "j-y-atomics-16",
	},
	{
		type = "fluid",
		recipe_name = "y-uc2crudeoil",
		name = "crude-oil",
		amount = 80,
		order = "a",
		subgroup = "j-y-atomics-14",
	},
}

local liquid_uc2_recipes = {
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
		allow_quality = false,
	},
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
		allow_quality = false,
	},
}

-- Build recipe list
local recipes = {}

-- Add waste item→unicomp recipes
for _, config in ipairs(waste_item_recipes) do
	table.insert(
		recipes,
		yi.lib.recipe.atomics.make_down_item(
			config.recipe_name,
			config.item_name,
			config.amount,
			config.order,
			"j-y-atomics-5",
			nil, -- size (default)
			true, -- enabled
			nil, -- hidden
			2.0 -- energy_required
		)
	)
end

-- Add fluid→unicomp recipes
for _, config in ipairs(fluid_down_recipes) do
	table.insert(
		recipes,
		yi.lib.recipe.atomics.make_down_fluid(
			config.recipe_name,
			config.fluid_name,
			config.amount,
			config.order,
			"j-y-atomics-7",
			nil, -- size (default)
			config.enabled,
			config.hidden,
			5.0 -- energy_required
		)
	)
end

-- Add single up recipes
for _, config in ipairs(single_up_recipes) do
	if config.type == "item" then
		table.insert(
			recipes,
			yi.lib.recipe.atomics.make_up_item(
				config.recipe_name,
				config.name,
				config.amount,
				config.order,
				config.subgroup,
				nil, -- size (default)
				true, -- enabled
				nil, -- hidden
				2.0 -- energy_required
			)
		)
	elseif config.type == "fluid" then
		table.insert(
			recipes,
			yi.lib.recipe.atomics.make_up_fluid(
				config.recipe_name,
				config.name,
				config.amount,
				config.order,
				config.subgroup,
				nil, -- size (default)
				true, -- enabled
				nil, -- hidden
				5.0 -- energy_required
			)
		)
	end
end

-- Add contaminated water recipe (special naming)
table.insert(
	recipes,
	yi.lib.recipe.atomics.make_down_fluid(
		"j-cw2uc-recipe",
		"y-con_water",
		9100,
		"a",
		"j-y-atomics-7",
		nil, -- size (default)
		true, -- enabled
		nil, -- hidden
		5.0 -- energy_required
	)
)

-- Add liquid-uc2 recipes (custom icons, keep manual)
for _, recipe in ipairs(liquid_uc2_recipes) do
	table.insert(recipes, recipe)
end

-- Extend all recipes
data:extend(recipes)
