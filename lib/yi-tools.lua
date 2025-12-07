if not yi then
	yi = {}
end
if not yi.lib then
	yi.lib = {}
end
if not yi.lib.recipe then
	yi.lib.recipe = {}
end

-- Workaround for now for the broken turret direction images
blank_sprite = {
	base_visualisation = {
		animation = {
			layers = {
				{
					filename = "__Yuoki__/graphics/blank.png",
					priority = "high",
					width = 1,
					height = 1,
					shift = { 0, 0 },
					direction_count = 1,
					frame_count = 1,
					line_length = 1,
					axially_symmetrical = false,
				},
			},
		},
	},
}

-- need to update so i can get icon if its a liquid too..

if not yi.lib.recipe.atomics then
	yi.lib.recipe.atomics = {}
end

-- Used to make icons for Item -> Unicomp recipes
function yi.lib.recipe.atomics.item_down(icon_name, size)
	local item_name = data.raw.item[icon_name].icon
	local image_size = size or 64
	if type(icon_name) == "string" then
		return {
			{
				icon = item_name,
				icon_size = image_size,
			},
			{
				icon = "__Yuoki__/graphics/icons/atomics/atomics-down-arrow.png",
				icon_size = 128,
				Scale = 1,
			},
		}
	end
end

-- Used to make icons for Unicomp -> Item recipes
function yi.lib.recipe.atomics.item_up(icon_name, size)
	local item_name = data.raw.item[icon_name].icon
	local image_size = size or 64
	if type(icon_name) == "string" then
		return {
			{
				icon = item_name,
				icon_size = image_size,
			},
			{
				icon = "__Yuoki__/graphics/icons/atomics/atomics-up-arrow.png",
				icon_size = 128,
				Scale = 1,
			},
		}
	end
end

-- Used to make icons for Fluid -> Unicomp recipes
function yi.lib.recipe.atomics.fluid_down(icon_name, size)
	local item_name = data.raw.fluid[icon_name].icon
	local image_size = size or 64
	if type(icon_name) == "string" then
		return {
			{
				icon = item_name,
				icon_size = image_size,
			},
			{
				icon = "__Yuoki__/graphics/icons/atomics/atomics-down-arrow.png",
				icon_size = 128,
				Scale = 1,
			},
		}
	end
end

-- Used to make icons for Unicomp -> Fluid recipes
function yi.lib.recipe.atomics.fluid_up(icon_name, size)
	local item_name = data.raw.fluid[icon_name].icon
	local image_size = size or 64
	if type(icon_name) == "string" then
		return {
			{
				icon = item_name,
				icon_size = image_size,
			},
			{
				icon = "__Yuoki__/graphics/icons/atomics/atomics-up-arrow.png",
				icon_size = 128,
				Scale = 1,
			},
		}
	end
end

-- Used to make atomics recipes
-- Usage: yi.lib.recipe.atomics.recipes_make_item("iron-ore", 64, 10, 1, "ore")
-- 		iron-ore	- item name you want to use for the recipe
-- 		64 			- icon size of existing item
-- 		10 			- how many units of item for the recipe (example 10x iron-ore)
-- 		1 			- how many units of Unicomp is the results (usually this is 1)
--		ore			- sub_group classification this is optional..
--						(Values: ore, ore-space-age, ore-int)
function yi.lib.recipe.atomics.recipes_make_item(icon_name, size, item_amount, uni_amount, sub_group)
	local item_n = icon_name
	local image_size = size or 64
	local item_amount = item_amount or 20
	local unicomp = uni_amount or 1
	local group1 = "j-y-atomics-4"
	local group2 = "j-y-atomics-13"
	if sub_group == "ore" then -- Vanilla ores
		group1 = "j-y-atomics-2"
		group2 = "j-y-atomics-11"
	elseif sub_group == "ore-space-age" then -- Space Age ores
		group1 = "j-y-atomics-3"
		group2 = "j-y-atomics-12"
	elseif sub_group == "ore-int" then -- Integration ores
		group1 = "j-y-atomics-4"
		group2 = "j-y-atomics-13"
	else -- not specified defaults to Integration ores
		group1 = "j-y-atomics-4"
		group2 = "j-y-atomics-13"
	end

	local item_recipe = {
		type = "recipe",
		name = "y-ac-" .. item_n .. "2uc",
		localised_name = { "recipe-name.y-ac", item_n.localised_name or { "item-name." .. item_n } },
		order = "a",
		energy_required = 2,
		enabled = true,
		ingredients = {
			{ type = "item", name = item_n, amount = item_amount },
		},
		results = {
			{ type = "item", name = "y-unicomp-a2", amount = unicomp },
		},
		main_product = "y-unicomp-a2",
		subgroup = group1,
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_down(item_n, image_size),
		auto_recycle = false,
		allow_quality = false,
	}
	local uni_recipe = {
		type = "recipe",
		name = "y-ac-uc2" .. item_n,
		localised_name = { "recipe-name.y-ac-uc2", item_n.localised_name or { "item-name." .. item_n } },
		order = "a",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-unicomp-a2", amount = unicomp },
		},
		results = {
			{ type = "item", name = item_n, amount = item_amount },
		},
		main_product = item_n,
		subgroup = group2,
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_up(item_n, image_size),
		auto_recycle = false,
		allow_quality = false,
	}

	data:extend({ item_recipe, uni_recipe })
	return item_recipe, uni_recipe
end

-- Used to make atomics recipes
-- Usage: yi.lib.recipe.atomics.recipes_make_fluid("crude-oil", 64, 80, 1, "fluid")
-- 		crude-oil	- fluid name you want to use for the recipe
-- 		64 			- icon size of existing item
-- 		80 			- how many units of item for the recipe (example 10x iron-ore)
-- 		1 			- how many units of Unicomp is the results (usually this is 1)
--		fluid		- sub_group classification this is optional..
--						(Values: fluid, fluid-space-age, fluid-int)
function yi.lib.recipe.atomics.recipes_make_fluid(icon_name, size, item_amount, uni_amount, sub_group)
	local item_n = icon_name
	local image_size = size or 64
	local item_amount = item_amount or 20
	local unicomp = uni_amount or 1
	local group1 = "j-y-atomics-9"
	local group2 = "j-y-atomics-15"
	if sub_group == "fluid" then -- Vanilla fluids
		group1 = "j-y-atomics-7"
		group2 = "j-y-atomics-14"
	elseif sub_group == "fluid-space-age" then -- Space Age fluids
		group1 = "j-y-atomics-8"
		group2 = "j-y-atomics-14"
	elseif sub_group == "fluid-int" then -- Integration fluids
		group1 = "j-y-atomics-9"
		group2 = "j-y-atomics-15"
	else -- not specified defaults to Integration fluids
		group1 = "j-y-atomics-9"
		group2 = "j-y-atomics-15"
	end

	local item_recipe = {
		type = "recipe",
		name = "y-ac-" .. item_n .. "2uc",
		localised_name = { "recipe-name.y-ac", item_n.localised_name or { "fluid-name." .. item_n } },
		order = "a",
		energy_required = 2,
		enabled = true,
		ingredients = {
			{ type = "fluid", name = item_n, amount = item_amount },
		},
		results = {
			{ type = "item", name = "y-unicomp-a2", amount = unicomp },
		},
		main_product = "y-unicomp-a2",
		subgroup = group1,
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.fluid_down(item_n, image_size),
		auto_recycle = false,
		allow_quality = false,
	}
	local uni_recipe = {
		type = "recipe",
		name = "y-ac-uc2" .. item_n,
		localised_name = { "recipe-name.y-ac-uc2", item_n.localised_name or { "fluid-name." .. item_n } },
		order = "a",
		energy_required = 2.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-unicomp-a2", amount = unicomp },
		},
		results = {
			{ type = "fluid", name = item_n, amount = item_amount },
		},
		main_product = item_n,
		subgroup = group2,
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.fluid_up(item_n, image_size),
		auto_recycle = false,
		allow_quality = false,
	}

	data:extend({ item_recipe, uni_recipe })
	return item_recipe, uni_recipe
end

-- Crushing
if not yi.lib.recipe.crushing then
	yi.lib.recipe.crushing = {}
end

-- Used to make icons for Asteroid Chunk(2) -> resource recipes
function yi.lib.recipe.crushing.asteroid_2(icon_name1, size1, icon_name2, size2, icon_name3, size3)
	local item_name1 = data.raw.item[icon_name1].icon
	local image_size1 = size1 or 64
	local item_name2 = data.raw.item[icon_name2].icon
	local image_size2 = size2 or 64
	local item_name3 = data.raw.item[icon_name3].icon
	local image_size3 = size3 or 64
	if type(icon_name1) == "string" then
		return {
			{
				icon = item_name1,
				icon_size = image_size1,
				scale = 0.2,
				shift = { -8, -8 },
			},
			{
				icon = item_name1,
				icon_size = image_size1,
				scale = 0.2,
				shift = { 8, -8 },
			},

			{
				icon = item_name2,
				icon_size = image_size2,
				scale = 0.2,
				shift = { -8, 8 },
			},
			{
				icon = item_name2,
				icon_size = image_size2,
				scale = 0.2,
				shift = { 8, 8 },
			},
			{
				icon = item_name3,
				icon_size = image_size3,
				scale = 0.35,
				shift = { 0, 0 },
			},
		}
	end
end

if mods["space-age"] then
yi_energy_usage_quality_multiplier = {
	normal = 1,
	uncommon = 1.15,
	rare = 1.25,
	epic = 1.35,
	legendary = 1.45,
}
else
yi_energy_usage_quality_multiplier = {
	normal = 1
}
end