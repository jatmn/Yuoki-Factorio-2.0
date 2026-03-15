local util = require("util")

-- Multiple functions used with permission from boblibrary per Bobmeister Nov 7 2024
-- https://discord.com/channels/351216213327609858/497860215010754560/1304116352017109013

-- Recipe manipulation and generation functions for Yuoki's Factorio mod library.
if not yi then
	yi = {}
end
if not yi.lib then
	yi.lib = {}
end
if not yi.lib.recipe then
	yi.lib.recipe = {}
end
if not yi.lib.recipe.atomics then
	yi.lib.recipe.atomics = {}
end
if not yi.lib.recipe.crushing then
	yi.lib.recipe.crushing = {}
end

-- internal helper for quantity conversion between items and fluids
local function quantity_convertion(amount, old, new)
	if yi.lib.item.get_type(old) == "fluid" and yi.lib.item.get_type(new) == "item" then
		amount = math.ceil(amount / 10)
	end
	if yi.lib.item.get_type(old) == "item" and yi.lib.item.get_type(new) == "fluid" then
		amount = amount * 10
	end
	return amount
end

-- internal helper to scan ingredients
local function get_old_quantity(ingredients, old)
	local amount = 0
	for i, ingredient in pairs(ingredients) do
		local item = yi.lib.item.ingredient_simple(ingredient)
		if item then
			if item.name == old then
				amount = item.amount + amount
			end
		else
			log("recipe contains an invalid ingredient")
		end
	end
	return amount
end

-- internal helper for ingredient replacement
local function replace_ingredient(ingredients, old, new, new_type)
	local amount = get_old_quantity(ingredients, old)
	if amount > 0 then
		amount = quantity_convertion(amount, old, new)
		yi.lib.item.remove(ingredients, old)
		-- Using explicit 2.0 table format
		yi.lib.item.add(ingredients, { type = new_type, name = new, amount = amount })
		return true
	end
	return false
end
-- RECIPE FUNCTIONS
--------------------------------------------------------------------------------

-- Replace an ingredient in a specific recipe.
-- Usage: yi.lib.recipe.replace_ingredient("recipe-name", "old-item", "new-item")
--        yi.lib.recipe.replace_ingredient("y-recipe-iron", "iron-ore", "y-refined-iron")
--      recipe - Recipe name to modify (string, required)
--      old    - Old ingredient name to replace (string, required)
--      new    - New ingredient name to use instead (string, required)
-- Returns: true if replacement succeeded, false otherwise (logs error on failure)
function yi.lib.recipe.replace_ingredient(recipe, old, new)
	if type(recipe) == "string" and type(old) == "string" and type(new) == "string" and data.raw.recipe[recipe] then
		local retval = false
		local new_type = yi.lib.item.get_type(new)

		if new_type and data.raw.recipe[recipe].ingredients then
			new_type = new_type == "fluid" and "fluid" or "item"
			if replace_ingredient(data.raw.recipe[recipe].ingredients, old, new, new_type) then
				retval = true
			end
		end
		return retval
	else
		log(debug.traceback())
		yi.lib.error.recipe(recipe)
		return false
	end
end

-- Replace an ingredient in all recipes.
-- Usage: yi.lib.recipe.replace_ingredient_in_all("coal", "y-refined-coal")
--        yi.lib.recipe.replace_ingredient_in_all("iron-ore", "y-crushed-iron")
--      old - Old ingredient name to replace (string, required)
--      new - New ingredient name to use instead (string, required)
-- Returns: Nothing (iterates through all recipes, logs errors per recipe)
function yi.lib.recipe.replace_ingredient_in_all(old, new)
	if type(old) == "string" and type(new) == "string" then
		for i, recipe in pairs(data.raw.recipe) do
			yi.lib.recipe.replace_ingredient(recipe.name, old, new)
		end
	end
end

-- Add a result item to a recipe.
-- Usage: yi.lib.recipe.add_result("recipe-name", {type="item", name="iron-plate", amount=1})
--        yi.lib.recipe.add_result("y-recipe-copper", {type="fluid", name="water", amount=50})
--      recipe  - Recipe name to modify (string, required)
--      item_in - Item/fluid definition table (table, required)
--                Should contain type ("item" or "fluid"), name, and amount
-- Returns: Nothing (adds to recipe.results directly, logs error on failure)
function yi.lib.recipe.add_result(recipe, item_in)
	local item = yi.lib.item.result(item_in)
	if type(recipe) == "string" and data.raw.recipe[recipe] and item then
		data.raw.recipe[recipe].results = data.raw.recipe[recipe].results or {}
		yi.lib.item.add(data.raw.recipe[recipe].results, item)
	else
		yi.lib.error.recipe(recipe)
	end
end

-- Remove a result item from a recipe.
-- Usage: yi.lib.recipe.remove_result("recipe-name", "iron-plate")
--        yi.lib.recipe.remove_result("y-recipe-copper", "water")
--      recipe - Recipe name to modify (string, required)
--      item   - Item/fluid name to remove (string, required)
-- Returns: Nothing (removes from recipe.results if found)
function yi.lib.recipe.remove_result(recipe, item)
	if type(recipe) == "string" and data.raw.recipe[recipe] then
		if data.raw.recipe[recipe].results then
			yi.lib.item.remove(data.raw.recipe[recipe].results, item)
		end
	end
end

-- Replace a result item in a recipe with a new item.
-- Usage: yi.lib.recipe.replace_result("recipe-name", "old-item", "new-item", amount)
--        yi.lib.recipe.replace_result("y-recipe-steel", "steel-plate", "y-refined-steel", 2)
--      recipe - Recipe name to modify (string, required)
--      old    - Old result item name to remove (string, required)
--      new    - New result item name to add (string, required)
--      amount - Amount of new item to add (number, required)
-- Returns: Nothing (calls add_result and remove_result, logs errors on failure)
function yi.lib.recipe.replace_result(recipe, old, new, amount)
	-- 1. Add the new item (defaults to 'item' type)
	yi.lib.recipe.add_result(recipe, { type = "item", name = new, amount = amount })

	-- 2. Remove the old item
	yi.lib.recipe.remove_result(recipe, old)
end

--------------------------------------------------------------------------------
-- ATOMICS LOGIC
--------------------------------------------------------------------------------

if not yi.lib.recipe.atomics then
	yi.lib.recipe.atomics = {}
end

-- Internal helper to generate icons table for Atomics
-- Supports both items and fluids automatically
local function generate_atomics_icon(name, direction, fallback_size)
	local p_type = yi.lib.item.get_type(name)
	local source = p_type and data.raw[p_type][name]

	if not source then
		return nil
	end

	local res = {}
	if source.icons then
		res = util.table.deepcopy(source.icons)
	else
		table.insert(res, {
			icon = source.icon,
			icon_size = source.icon_size or fallback_size or 64,
			scale = 32 / (source.icon_size or fallback_size or 64),
			mipmaps = source.mipmaps,
		})
	end

	local arrow = (direction == "up") and "up-arrow" or "down-arrow"
	table.insert(res, {
		icon = "__Yuoki__/graphics/icons/atomics/atomics-" .. arrow .. ".png",
		icon_size = 128,
		scale = 0.25,
	})
	return res
end

-- Generate icons for Item -> Unicomp recipes (down arrow).
-- Usage: yi.lib.recipe.atomics.item_down("iron-ore", 64)
--        yi.lib.recipe.atomics.item_down("copper-plate", 32)
--      icon_name - Item name to use as base icon (string, required)
--      size      - Icon size of existing item (number, optional, defaults to item's native size)
-- Returns: Icons table with down arrow overlay for atomics recipes
function yi.lib.recipe.atomics.item_down(icon_name, size)
	return generate_atomics_icon(icon_name, "down", size)
end

-- Generate icons for Unicomp -> Item recipes (up arrow).
-- Usage: yi.lib.recipe.atomics.item_up("plastic-bar", 64)
--        yi.lib.recipe.atomics.item_up("steel-plate", 32)
--      icon_name - Item name to use as base icon (string, required)
--      size      - Icon size of existing item (number, optional, defaults to item's native size)
-- Returns: Icons table with up arrow overlay for atomics recipes
function yi.lib.recipe.atomics.item_up(icon_name, size)
	return generate_atomics_icon(icon_name, "up", size)
end

-- Generate icons for Fluid -> Unicomp recipes (down arrow).
-- Usage: yi.lib.recipe.atomics.fluid_down("water", 64)
--        yi.lib.recipe.atomics.fluid_down("crude-oil", 32)
--      icon_name - Fluid name to use as base icon (string, required)
--      size      - Icon size of existing fluid (number, optional, defaults to fluid's native size)
-- Returns: Icons table with down arrow overlay for atomics fluid recipes
function yi.lib.recipe.atomics.fluid_down(icon_name, size)
	return generate_atomics_icon(icon_name, "down", size)
end

-- Generate icons for Unicomp -> Fluid recipes (up arrow).
-- Usage: yi.lib.recipe.atomics.fluid_up("water", 64)
--        yi.lib.recipe.atomics.fluid_up("light-oil", 32)
--      icon_name - Fluid name to use as base icon (string, required)
--      size      - Icon size of existing fluid (number, optional, defaults to fluid's native size)
-- Returns: Icons table with up arrow overlay for atomics fluid recipes
function yi.lib.recipe.atomics.fluid_up(icon_name, size)
	return generate_atomics_icon(icon_name, "up", size)
end

-- Used to make atomics recipes
-- Usage: yi.lib.recipe.atomics.recipes_make_item("iron-ore", 64, 10, 1, "ore")
--      iron-ore    - item name you want to use for the recipe
--      64          - icon size of existing item
--      10          - how many units of item for the recipe (example 10x iron-ore)
--      1           - how many units of Unicomp is the results (usually this is 1)
--      ore         - sub_group classification this is optional..
--                      (Values: ore, ore-space-age, ore-int)
function yi.lib.recipe.atomics.recipes_make_item(icon_name, size, item_amount, uni_amount, sub_group)
	local item_n = icon_name
	local item_amt = item_amount or 20
	local unicomp = uni_amount or 1

	local groups = {
		["ore"] = { g1 = "j-y-atomics-2", g2 = "j-y-atomics-11" },
		["ore-space-age"] = { g1 = "j-y-atomics-3", g2 = "j-y-atomics-12" },
		["ore-int"] = { g1 = "j-y-atomics-4", g2 = "j-y-atomics-13" },
		["default"] = { g1 = "j-y-atomics-4", g2 = "j-y-atomics-13" },
	}
	local selected = groups[sub_group] or groups["default"]

	local item_recipe = {
		type = "recipe",
		name = "y-ac-" .. item_n .. "2uc",
		localised_name = { "recipe-name.y-ac", { "item-name." .. item_n } },
		order = "a",
		energy_required = 2,
		enabled = true,
		ingredients = { { type = "item", name = item_n, amount = item_amt } },
		results = { { type = "item", name = "y-unicomp-a2", amount = unicomp } },
		main_product = "y-unicomp-a2",
		subgroup = selected.g1,
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_down(item_n, size),
		auto_recycle = false,
		allow_quality = false,
	}
	local uni_recipe = {
		type = "recipe",
		name = "y-ac-uc2" .. item_n,
		localised_name = { "recipe-name.y-ac-uc2", { "item-name." .. item_n } },
		order = "a",
		energy_required = 2.0,
		enabled = true,
		ingredients = { { type = "item", name = "y-unicomp-a2", amount = unicomp } },
		results = { { type = "item", name = item_n, amount = item_amt } },
		main_product = item_n,
		subgroup = selected.g2,
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_up(item_n, size),
		auto_recycle = false,
		allow_quality = false,
	}

	data:extend({ item_recipe, uni_recipe })
	return item_recipe, uni_recipe
end

-- Used to make atomics recipes
-- Usage: yi.lib.recipe.atomics.recipes_make_fluid("crude-oil", 64, 80, 1, "fluid")
--      crude-oil   - fluid name you want to use for the recipe
--      64          - icon size of existing item
--      80          - how many units of item for the recipe (example 10x iron-ore)
--      1           - how many units of Unicomp is the results (usually this is 1)
--      fluid       - sub_group classification this is optional..
--                      (Values: fluid, fluid-space-age, fluid-int)
function yi.lib.recipe.atomics.recipes_make_fluid(icon_name, size, item_amount, uni_amount, sub_group)
	local item_n = icon_name
	local item_amt = item_amount or 20
	local unicomp = uni_amount or 1

	local groups = {
		["fluid"] = { g1 = "j-y-atomics-7", g2 = "j-y-atomics-14" },
		["fluid-space-age"] = { g1 = "j-y-atomics-8", g2 = "j-y-atomics-14" },
		["fluid-int"] = { g1 = "j-y-atomics-9", g2 = "j-y-atomics-15" },
		["default"] = { g1 = "j-y-atomics-9", g2 = "j-y-atomics-15" },
	}
	local selected = groups[sub_group] or groups["default"]

	local item_recipe = {
		type = "recipe",
		name = "y-ac-" .. item_n .. "2uc",
		localised_name = { "recipe-name.y-ac", { "fluid-name." .. item_n } },
		order = "a",
		energy_required = 2,
		enabled = true,
		ingredients = { { type = "fluid", name = item_n, amount = item_amt } },
		results = { { type = "item", name = "y-unicomp-a2", amount = unicomp } },
		main_product = "y-unicomp-a2",
		subgroup = selected.g1,
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.fluid_down(item_n, size),
		auto_recycle = false,
		allow_quality = false,
	}
	local uni_recipe = {
		type = "recipe",
		name = "y-ac-uc2" .. item_n,
		localised_name = { "recipe-name.y-ac-uc2", { "fluid-name." .. item_n } },
		order = "a",
		energy_required = 2.0,
		enabled = true,
		ingredients = { { type = "item", name = "y-unicomp-a2", amount = unicomp } },
		results = { { type = "fluid", name = item_n, amount = item_amt } },
		main_product = item_n,
		subgroup = selected.g2,
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.fluid_up(item_n, size),
		auto_recycle = false,
		allow_quality = false,
	}

	data:extend({ item_recipe, uni_recipe })
	return item_recipe, uni_recipe
end

-- Single-direction item→unicomp recipe (down arrow)
-- Usage: yi.lib.recipe.atomics.make_down_item("y-slag", 100, "a", "j-y-atomics-5")
--        yi.lib.recipe.atomics.make_down_item("y-ac-slag2uc", "y-slag", 100, "a", "j-y-atomics-5")
-- Supports backward compatibility: first parameter can be item_name (old style) or recipe_name (new style)
--      recipe_name     - recipe name (string, optional, defaults to "y-ac-" .. item_name .. "2uc")
--      item_name       - item name (string)
--      amount          - amount of item per unicomp (number, optional, defaults to 20)
--      order           - recipe order (string, optional, defaults to "a")
--      subgroup        - recipe subgroup (string, optional, defaults to "j-y-atomics-4")
--      size            - icon size (number, optional, defaults to 64)
--      enabled         - recipe enabled (boolean, optional, defaults to true)
--      hidden          - recipe hidden (boolean, optional, defaults to false)
--      energy_required - energy required (number, optional, defaults to 2.0)
function yi.lib.recipe.atomics.make_down_item(
	recipe_name,
	item_name,
	amount,
	order,
	subgroup,
	size,
	enabled,
	hidden,
	energy_required
)
	-- Handle optional recipe_name parameter (backward compatibility)
	local item_n, item_amt, recipe_n, item_type

	-- Detect calling convention: if both recipe_name and item_name are strings, use new convention
	if recipe_name and type(recipe_name) == "string" and item_name and type(item_name) == "string" then
		-- New calling convention with explicit recipe_name
		recipe_n = recipe_name
		item_n = item_name
		item_amt = amount or 20
		-- Other parameters remain as passed
	else
		-- Old calling convention: recipe_name is actually item_name, item_name is actually amount
		energy_required = hidden
		hidden = enabled
		enabled = size
		size = subgroup
		subgroup = order
		order = amount
		item_amt = item_name or 20
		item_n = recipe_name or "unknown"
		recipe_n = "y-ac-" .. item_n .. "2uc"
	end

	item_type = yi.lib.item.get_type(item_n) or "item"
	local localised_prefix = (item_type == "fluid") and "fluid-name." or "item-name."

	local recipe = {
		type = "recipe",
		name = recipe_n,
		localised_name = { "recipe-name.y-ac", { localised_prefix .. item_n } },
		order = order or "a",
		energy_required = energy_required or 2.0,
		enabled = enabled ~= false,
		ingredients = { { type = "item", name = item_n, amount = item_amt } },
		results = { { type = "item", name = "y-unicomp-a2", amount = 1 } },
		main_product = "y-unicomp-a2",
		subgroup = subgroup or "j-y-atomics-4",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_down(item_n, size),
		auto_recycle = false,
		allow_quality = false,
	}

	if hidden then
		recipe.hidden = true
	end

	return recipe
end

-- Single-direction unicomp→item recipe (up arrow)
-- Usage: yi.lib.recipe.atomics.make_up_item("plastic-bar", 8, "a", "j-y-atomics-16")
--        yi.lib.recipe.atomics.make_up_item("y-ac-uc2plastic", "plastic-bar", 8, "a", "j-y-atomics-16")
-- Supports backward compatibility: first parameter can be item_name (old style) or recipe_name (new style)
--      recipe_name     - recipe name (string, optional, defaults to "y-ac-uc2" .. item_name)
--      item_name       - item name (string)
--      amount          - amount of item per unicomp (number, optional, defaults to 20)
--      order           - recipe order (string, optional, defaults to "a")
--      subgroup        - recipe subgroup (string, optional, defaults to "j-y-atomics-13")
--      size            - icon size (number, optional, defaults to 64)
--      enabled         - recipe enabled (boolean, optional, defaults to true)
--      hidden          - recipe hidden (boolean, optional, defaults to false)
--      energy_required - energy required (number, optional, defaults to 2.0)
function yi.lib.recipe.atomics.make_up_item(
	recipe_name,
	item_name,
	amount,
	order,
	subgroup,
	size,
	enabled,
	hidden,
	energy_required
)
	-- Handle optional recipe_name parameter (backward compatibility)
	local item_n, item_amt, recipe_n, item_type

	-- Detect calling convention: if both recipe_name and item_name are strings, use new convention
	if recipe_name and type(recipe_name) == "string" and item_name and type(item_name) == "string" then
		-- New calling convention with explicit recipe_name
		recipe_n = recipe_name
		item_n = item_name
		item_amt = amount or 20
		-- Other parameters remain as passed
	else
		-- Old calling convention: recipe_name is actually item_name, item_name is actually amount
		energy_required = hidden
		hidden = enabled
		enabled = size
		size = subgroup
		subgroup = order
		order = amount
		item_amt = item_name or 20
		item_n = recipe_name or "unknown"
		recipe_n = "y-ac-uc2" .. item_n
	end

	item_type = yi.lib.item.get_type(item_n) or "item"
	local localised_prefix = (item_type == "fluid") and "fluid-name." or "item-name."

	local recipe = {
		type = "recipe",
		name = recipe_n,
		localised_name = { "recipe-name.y-ac-uc2", { localised_prefix .. item_n } },
		order = order or "a",
		energy_required = energy_required or 2.0,
		enabled = enabled ~= false,
		ingredients = { { type = "item", name = "y-unicomp-a2", amount = 1 } },
		results = { { type = "item", name = item_n, amount = item_amt } },
		main_product = item_n,
		subgroup = subgroup or "j-y-atomics-13",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.item_up(item_n, size),
		auto_recycle = false,
		allow_quality = false,
	}

	if hidden then
		recipe.hidden = true
	end

	return recipe
end

-- Single-direction fluid→unicomp recipe (down arrow)
-- Usage: yi.lib.recipe.atomics.make_down_fluid("light-oil", 100, "b", "j-y-atomics-7")
--        yi.lib.recipe.atomics.make_down_fluid("y-lightoil2uc", "light-oil", 100, "b", "j-y-atomics-7")
-- Supports backward compatibility: first parameter can be fluid_name (old style) or recipe_name (new style)
--      recipe_name     - recipe name (string, optional, defaults to "y-" .. fluid_name .. "2uc")
--      fluid_name      - fluid name (string)
--      amount          - amount of fluid per unicomp (number, optional, defaults to 20)
--      order           - recipe order (string, optional, defaults to "a")
--      subgroup        - recipe subgroup (string, optional, defaults to "j-y-atomics-9")
--      size            - icon size (number, optional, defaults to 64)
--      enabled         - recipe enabled (boolean, optional, defaults to true)
--      hidden          - recipe hidden (boolean, optional, defaults to false)
--      energy_required - energy required (number, optional, defaults to 5.0)
function yi.lib.recipe.atomics.make_down_fluid(
	recipe_name,
	fluid_name,
	amount,
	order,
	subgroup,
	size,
	enabled,
	hidden,
	energy_required
)
	-- Handle optional recipe_name parameter (backward compatibility)
	local fluid_n, fluid_amt, recipe_n

	-- Detect calling convention: if both recipe_name and fluid_name are strings, use new convention
	if recipe_name and type(recipe_name) == "string" and fluid_name and type(fluid_name) == "string" then
		-- New calling convention with explicit recipe_name
		recipe_n = recipe_name
		fluid_n = fluid_name
		fluid_amt = amount or 20
		-- Other parameters remain as passed
	else
		-- Old calling convention: recipe_name is actually fluid_name, fluid_name is actually amount
		energy_required = hidden
		hidden = enabled
		enabled = size
		size = subgroup
		subgroup = order
		order = amount
		fluid_amt = fluid_name or 20
		fluid_n = recipe_name or "unknown"
		recipe_n = "y-" .. fluid_n .. "2uc"
	end

	local recipe = {
		type = "recipe",
		name = recipe_n,
		localised_name = { "recipe-name.y-ac", { "fluid-name." .. fluid_n } },
		order = order or "a",
		energy_required = energy_required or 5.0,
		enabled = enabled ~= false,
		ingredients = { { type = "fluid", name = fluid_n, amount = fluid_amt } },
		results = { { type = "item", name = "y-unicomp-a2", amount = 1 } },
		main_product = "y-unicomp-a2",
		subgroup = subgroup or "j-y-atomics-9",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.fluid_down(fluid_n, size),
		auto_recycle = false,
		allow_quality = false,
	}

	if hidden then
		recipe.hidden = true
	end

	return recipe
end

-- Single-direction unicomp→fluid recipe (up arrow)
-- Usage: yi.lib.recipe.atomics.make_up_fluid("crude-oil", 80, "a", "j-y-atomics-14")
--        yi.lib.recipe.atomics.make_up_fluid("y-uc2crudeoil", "crude-oil", 80, "a", "j-y-atomics-14")
-- Supports backward compatibility: first parameter can be fluid_name (old style) or recipe_name (new style)
--      recipe_name     - recipe name (string, optional, defaults to "y-uc2" .. fluid_name)
--      fluid_name      - fluid name (string)
--      amount          - amount of fluid per unicomp (number, optional, defaults to 20)
--      order           - recipe order (string, optional, defaults to "a")
--      subgroup        - recipe subgroup (string, optional, defaults to "j-y-atomics-15")
--      size            - icon size (number, optional, defaults to 64)
--      enabled         - recipe enabled (boolean, optional, defaults to true)
--      hidden          - recipe hidden (boolean, optional, defaults to false)
--      energy_required - energy required (number, optional, defaults to 5.0)
function yi.lib.recipe.atomics.make_up_fluid(
	recipe_name,
	fluid_name,
	amount,
	order,
	subgroup,
	size,
	enabled,
	hidden,
	energy_required
)
	-- Handle optional recipe_name parameter (backward compatibility)
	local fluid_n, fluid_amt, recipe_n

	-- Detect calling convention: if both recipe_name and fluid_name are strings, use new convention
	if recipe_name and type(recipe_name) == "string" and fluid_name and type(fluid_name) == "string" then
		-- New calling convention with explicit recipe_name
		recipe_n = recipe_name
		fluid_n = fluid_name
		fluid_amt = amount or 20
		-- Other parameters remain as passed
	else
		-- Old calling convention: recipe_name is actually fluid_name, fluid_name is actually amount
		energy_required = hidden
		hidden = enabled
		enabled = size
		size = subgroup
		subgroup = order
		order = amount
		fluid_amt = fluid_name or 20
		fluid_n = recipe_name or "unknown"
		recipe_n = "y-uc2" .. fluid_n
	end

	local recipe = {
		type = "recipe",
		name = recipe_n,
		localised_name = { "recipe-name.y-ac-uc2", { "fluid-name." .. fluid_n } },
		order = order or "a",
		energy_required = energy_required or 5.0,
		enabled = enabled ~= false,
		ingredients = { { type = "item", name = "y-unicomp-a2", amount = 1 } },
		results = { { type = "fluid", name = fluid_n, amount = fluid_amt } },
		main_product = fluid_n,
		subgroup = subgroup or "j-y-atomics-15",
		category = "yuoki-atomics",
		icons = yi.lib.recipe.atomics.fluid_up(fluid_n, size),
		auto_recycle = false,
		allow_quality = false,
	}

	if hidden then
		recipe.hidden = true
	end

	return recipe
end

-- Update Atomics recipes with up or down arrow
-- Usage: yi.lib.recipe.atomics.update_d_icon("item", "iron-ore", "recipe", "y-ac-iron-ore2uc", "down")
--      source_type - source entity type (string, optional, not currently used)
--      source_name - source entity name (string)
--      target_type - target entity type (string, must be valid data.raw key)
--      target_name - target entity name (string)
--      direction   - arrow direction (string, "up" or "down")
function yi.lib.recipe.atomics.update_d_icon(source_type, source_name, target_type, target_name, direction)
	local target = data.raw[target_type] and data.raw[target_type][target_name]
	if not target then
		return
	end

	local new_icons = generate_atomics_icon(source_name, direction)
	if new_icons then
		target.icons = new_icons
		target.icon = nil
		target.icon_size = nil
		target.icon_mipmaps = nil
	end
end

-- Update Atomics recipes with up or down arrow
-- Usage: yi.lib.recipe.atomics.update_auto_icon("iron-ore", "y-ac-iron-ore2uc", "down")
-- Automatically searches for target in: item, fluid, recipe, tool, capsule, ammo, gun, module, armor, item-with-entity-data
--      source_name - source entity name (string)
--      target_name - target entity name (string)
--      direction   - arrow direction (string, "up" or "down")
function yi.lib.recipe.atomics.update_auto_icon(source_name, target_name, direction)
	local search_tables =
		{ "item", "fluid", "recipe", "tool", "capsule", "ammo", "gun", "module", "armor", "item-with-entity-data" }
	local t_type = nil

	for _, t in ipairs(search_tables) do
		if data.raw[t] and data.raw[t][target_name] then
			t_type = t
			break
		end
	end

	if t_type then
		yi.lib.recipe.atomics.update_d_icon(nil, source_name, t_type, target_name, direction)
	else
		log("yi.lib smart-error: Could not find target " .. target_name)
	end
end

--------------------------------------------------------------------------------
-- CRUSHING LOGIC
--------------------------------------------------------------------------------

if not yi.lib.recipe.crushing then
	yi.lib.recipe.crushing = {}
end

-- Internal helper to handle layering and shifting for 2.0
local function build_asteroid_grid(input_slots)
	local res = {}
	for _, slot in ipairs(input_slots) do
		local p_type = yi.lib.item.get_type(slot.name)
		local source = p_type and data.raw[p_type][slot.name]

		if source then
			if source.icons then
				for _, layer in ipairs(source.icons) do
					local l = util.table.deepcopy(layer)
					l.scale = (l.scale or (32 / (source.icon_size or 64))) * slot.scale
					l.shift = {
						(l.shift and l.shift[1] or 0) + slot.shift[1],
						(l.shift and l.shift[2] or 0) + slot.shift[2],
					}
					table.insert(res, l)
				end
			else
				table.insert(res, {
					icon = source.icon,
					icon_size = source.icon_size or slot.size,
					scale = slot.scale,
					shift = slot.shift,
					mipmaps = source.mipmaps,
				})
			end
		end
	end
	return res
end

-- Generate crushing recipe icons with 1 background type + 1 main result.
-- Usage: yi.lib.recipe.crushing.asteroid_1_plus_1("stone", 64, "iron-ore", 64)
--        yi.lib.recipe.crushing.asteroid_1_plus_1("y-crushed-stone", 32, "y-iron-chunks", 32)
--      icon_bg   - Background icon name (string, required)
--      size_bg   - Background icon size (number, optional, defaults to 64)
--      icon_main - Main result icon name (string, required)
--      size_main - Main result icon size (number, optional, defaults to 64)
-- Returns: Icons table with overlapping cluster style for crushing recipes
function yi.lib.recipe.crushing.asteroid_1_plus_1(icon_bg, size_bg, icon_main, size_main)
	local slots = {
		{ name = icon_bg, size = size_bg or 64, shift = { -8, -8 }, scale = 0.2 },
		{ name = icon_main, size = size_main or 64, shift = { 0, 0 }, scale = 0.35 },
	}
	return build_asteroid_grid(slots)
end

-- Generate crushing recipe icons with 2 background types + 1 main result.
-- Usage: yi.lib.recipe.crushing.asteroid_2_plus_1("stone", 64, "coal", 64, "iron-ore", 64)
--        yi.lib.recipe.crushing.asteroid_2_plus_1("y-crushed-a", 32, "y-crushed-b", 32, "y-iron-chunks", 32)
--      icon_bg1  - First background icon name (string, required)
--      size_bg1  - First background icon size (number, optional, defaults to 64)
--      icon_bg2  - Second background icon name (string, required)
--      size_bg2  - Second background icon size (number, optional, defaults to 64)
--      icon_main - Main result icon name (string, required)
--      size_main - Main result icon size (number, optional, defaults to 64)
-- Returns: Icons table matching original 'asteroid_2' visual style
function yi.lib.recipe.crushing.asteroid_2_plus_1(icon_bg1, size_bg1, icon_bg2, size_bg2, icon_main, size_main)
	local slots = {
		{ name = icon_bg1, size = size_bg1 or 64, shift = { -8, -8 }, scale = 0.2 },
		{ name = icon_bg1, size = size_bg1 or 64, shift = { 8, -8 }, scale = 0.2 },
		{ name = icon_bg2, size = size_bg2 or 64, shift = { -8, 8 }, scale = 0.2 },
		{ name = icon_bg2, size = size_bg2 or 64, shift = { 8, 8 }, scale = 0.2 },
		{ name = icon_main, size = size_main or 64, shift = { 0, 0 }, scale = 0.35 },
	}
	return build_asteroid_grid(slots)
end

-- Generate crushing recipe icons with 3 background types + 1 main result.
-- Usage: yi.lib.recipe.crushing.asteroid_3_plus_1("stone", 64, "coal", 64, "copper-ore", 64, "iron-ore", 64)
--        yi.lib.recipe.crushing.asteroid_3_plus_1("y-crushed-a", 32, "y-crushed-b", 32, "y-crushed-c", 32, "y-iron-chunks", 32)
--      icon1    - First background icon name (string, required)
--      s1       - First background icon size (number, optional, defaults to 64)
--      icon2    - Second background icon name (string, required)
--      s2       - Second background icon size (number, optional, defaults to 64)
--      icon3    - Third background icon name (string, required)
--      s3       - Third background icon size (number, optional, defaults to 64)
--      icon_main - Main result icon name (string, required)
--      s_main   - Main result icon size (number, optional, defaults to 64)
-- Returns: Icons table with 3 background cluster style for crushing recipes
function yi.lib.recipe.crushing.asteroid_3_plus_1(icon1, s1, icon2, s2, icon3, s3, icon_main, s_main)
	local slots = {
		{ name = icon1, size = s1 or 64, shift = { -8, -8 }, scale = 0.2 },
		{ name = icon2, size = s2 or 64, shift = { 8, -8 }, scale = 0.2 },
		{ name = icon3, size = s3 or 64, shift = { 0, 8 }, scale = 0.2 },
		{ name = icon_main, size = s_main or 64, shift = { 0, 0 }, scale = 0.35 },
	}
	return build_asteroid_grid(slots)
end

-- Alias for asteroid_2_plus_1 (legacy compatibility).
-- Usage: yi.lib.recipe.crushing.asteroid_2("stone", 64, "coal", 64, "iron-ore", 64)
--        yi.lib.recipe.crushing.asteroid_2("y-crushed-a", 32, "y-crushed-b", 32, "y-iron-chunks", 32)
--      icon1 - First background icon name (string, required)
--      s1    - First background icon size (number, optional, defaults to 64)
--      icon2 - Second background icon name (string, required)
--      s2    - Second background icon size (number, optional, defaults to 64)
--      icon3 - Main result icon name (string, required)
--      s3    - Main result icon size (number, optional, defaults to 64)
-- Returns: Same as asteroid_2_plus_1 (icons table with 2 background types + 1 result)
function yi.lib.recipe.crushing.asteroid_2(icon1, s1, icon2, s2, icon3, s3)
	return yi.lib.recipe.crushing.asteroid_2_plus_1(icon1, s1, icon2, s2, icon3, s3)
end

--------------------------------------------------------------------------------
-- ENERGY QUALITY
--------------------------------------------------------------------------------

-- Wrap the quality multiplier in a function or a safe check
