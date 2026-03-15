local util = require("util")

-- Multiple functions used with permission from boblibrary per Bobmeister Nov 7 2024
-- https://discord.com/channels/351216213327609858/497860215010754560/1304116352017109013

-- Item manipulation functions for Yuoki's Factorio mod library.
if not yi then
	yi = {}
end
if not yi.lib then
	yi.lib = {}
end
if not yi.lib.item then
	yi.lib.item = {}
end



-- Hide an item from all menus and UI.
-- Sets the 'hidden' property to true for the given item.
-- Usage: yi.lib.item.hide("old-item")
--        yi.lib.item.hide("y-obsolete-item")
--      item_name - Name of item to hide (string, required)
-- Returns: Nothing (sets hidden=true on item prototype, logs error on failure)
function yi.lib.item.hide(item_name)
	if type(item_name) == "string" then
		-- Updated to check 2.0 item types via get_type
		local p_type = yi.lib.item.get_type(item_name)
		if p_type and data.raw[p_type] and data.raw[p_type][item_name] then
			data.raw[p_type][item_name].hidden = true
		end
	else
		log(debug.traceback())
		-- yi.lib.error.item will be available when yi-error is loaded
		if yi.lib.error and yi.lib.error.item then
			yi.lib.error.item(item_name)
		else
			log("Error: yi.lib.error.item not available yet")
		end
	end
end

-- Determine the actual prototype type of an item/fluid.
-- Searches data.raw for the given name across all item-like categories.
-- Usage: yi.lib.item.get_type("iron-plate")
--        yi.lib.item.get_type("water")
--        yi.lib.item.get_type("y-unicomp-a2")
--      name - Item/fluid name to look up (string, required)
-- Returns: Prototype type string ("item", "fluid", "tool", etc.) or nil if not found
function yi.lib.item.get_type(name)
	local item_type = nil
	if type(name) == "string" then
		-- 2.0 now includes more item types in data.raw
		local search_types = { "item", "tool", "ammo", "gun", "armor", "capsule", "module", "item-with-entity-data" }
		for _, type_name in ipairs(search_types) do
			if data.raw[type_name] and data.raw[type_name][name] then
				item_type = type_name
				break
			end
		end
		if not item_type and data.raw.fluid and data.raw.fluid[name] then
			item_type = "fluid"
		end
	else
		log("Item name is not a string")
	end
	return item_type
end

-- Parse ingredient inputs into a standardized ingredient table.
-- Validates basic structure but does not check if the item actually exists.
-- Usage: yi.lib.item.ingredient_simple({type="item", name="iron-ore", amount=2})
--        yi.lib.item.ingredient_simple({name="water", amount=50})
--        yi.lib.item.ingredient_simple("copper-ore")
--      inputs - Ingredient table or structure to parse (table or string, required)
--               If string, assumes type="item" and amount=1
-- Returns: Standardized ingredient table {type, name, amount} or nil if invalid
function yi.lib.item.ingredient_simple(inputs)
	local item = {}

	if type(inputs) == "table" then
		-- Factorio 2.0: Short-hand array {"item", 1} is invalid.
		-- This parser ensures results always use the explicit table format.
		if inputs.name and type(inputs.name) == "string" then
			item.name = inputs.name
		else
			log(debug.traceback())
			log("Unable to determine an ingredient name")
			return nil
		end

		if inputs.amount and type(inputs.amount) == "number" then
			item.amount = inputs.amount
		else
			log(debug.traceback())
			log("Unable to determine an ingredient amount")
			return nil
		end

		if inputs.type then
			item.type = inputs.type
		end
		if inputs.temperature then
			item.temperature = inputs.temperature
		end
		if inputs.minimum_temperature then
			item.minimum_temperature = inputs.minimum_temperature
		end
		if inputs.maximum_temperature then
			item.maximum_temperature = inputs.maximum_temperature
		end
	else
		log("Inputs is not a table")
	end
	return item
end

-- Always returns "item" as the basic type.
-- Simple fallback function that assumes type is item, regardless of actual existence.
-- Usage: yi.lib.item.get_basic_type_simple("any-item-name")
--        yi.lib.item.get_basic_type_simple("fluid-name")
--      name - Item name (ignored) (string, required)
-- Returns: Always "item" (string)
function yi.lib.item.get_basic_type_simple(name)
	return "item"
end

-- Wrapper for ingredient_simple, returns a result table.
-- Same as ingredient_simple but named for semantic clarity.
-- Usage: yi.lib.item.result_simple({type="item", name="iron-plate", amount=1})
--        yi.lib.item.result_simple({name="water", amount=50})
--        yi.lib.item.result_simple("copper-ore")
--      inputs - Result table or structure to parse (table or string, required)
--               If string, assumes type="item" and amount=1
-- Returns: Standardized result table {type, name, amount} or nil if invalid
function yi.lib.item.result_simple(inputs)
	return yi.lib.item.ingredient_simple(inputs)
end

-- Parse result inputs into a validated result table.
-- Only returns a result if the referenced item actually exists in data.raw.
-- Usage: yi.lib.item.result({type="item", name="iron-plate", amount=1})
--        yi.lib.item.result({name="water", amount=50})
--        yi.lib.item.result("copper-ore")
--      inputs - Result table or structure to parse (table or string, required)
--               If string, assumes type="item" and amount=1
-- Returns: Validated result table {type, name, amount} or nil if item doesn't exist
function yi.lib.item.result(inputs)
	local item = yi.lib.item.ingredient_simple(inputs)
	if item then
		local item_type = yi.lib.item.get_type(item.name)
		if item_type then
			item.type = item_type == "fluid" and "fluid" or "item"
			return item
		end
	end
	return nil
end

-- Remove all occurrences of an item from a list.
-- Searches the list for items with matching name and removes them.
-- Usage: yi.lib.item.remove(recipe.ingredients, "coal")
--        yi.lib.item.remove(recipe.results, "y-obsolete-item")
--      list - List of ingredient/result tables (table, required)
--      item - Item name to remove (string, required)
-- Returns: true if any items were removed, false otherwise
function yi.lib.item.remove(list, item)
	for i = #list, 1, -1 do
		local list_item = yi.lib.item.ingredient_simple(list[i])
		if list_item and list_item.name == item then
			table.remove(list, i)
			return true
		end
	end
	return false
end

-- Retire multiple items using a replacement mapping.
-- Calls retire() for each old→new pair in the table.
-- Usage: yi.lib.item.bulk_retire({["old-coal"]="coal", ["old-iron"]="iron-ore"})
--        yi.lib.item.bulk_retire({["y-old-item"]="y-new-item", ["y-obsolete"]="y-replacement"})
--      replacement_table - Table mapping old item names to new item names (table, required)
-- Returns: Nothing (calls retire for each mapping, logs errors per item)
function yi.lib.item.bulk_retire(replacement_table)
	for old_item_name, new_item_name in pairs(replacement_table) do
		yi.lib.item.retire(old_item_name)
	end
end

-- Combine two ingredient/result items into one.
-- Items must have same name and type; amounts are summed.
-- Usage: yi.lib.item.combine({type="item", name="iron-ore", amount=2}, {type="item", name="iron-ore", amount=3})
--        yi.lib.item.combine("coal", {type="item", name="coal", amount=5})
--      item1_in - First ingredient/result (table or string, required)
--      item2_in - Second ingredient/result (table or string, required)
-- Returns: Combined item table {type, name, amount} or nil if incompatible
function yi.lib.item.combine(item1_in, item2_in)
	local item1 = yi.lib.item.ingredient_simple(item1_in)
	local item2 = yi.lib.item.ingredient_simple(item2_in)

	if not item1 or not item2 then
		return nil
	end
	if item1.name ~= item2.name then
		return nil
	end
	if item1.type ~= item2.type then
		return nil
	end

	return {
		name = item1.name,
		amount = item1.amount + item2.amount,
		type = item1.type,
	}
end

-- Add an item to a list, incrementing amount if already present.
-- If the item already exists in the list, its amount is increased.
-- Usage: yi.lib.item.add(recipe.ingredients, {type="item", name="iron-ore", amount=2})
--        yi.lib.item.add(recipe.results, "copper-plate")
--      list    - List of ingredient/result tables (table, required)
--      item_in - Item to add (table or string, required)
--                If string, assumes type="item" and amount=1
-- Returns: Nothing (modifies list in place)
function yi.lib.item.add(list, item_in)
	local item = yi.lib.item.ingredient_simple(item_in)
	if not item then
		return
	end

	-- If the item has a type, use it; otherwise assume "item"
	local item_type = item.type or "item"

	-- Try to find existing entry
	for i, list_item in ipairs(list) do
		local parsed = yi.lib.item.ingredient_simple(list_item)
		if parsed and parsed.name == item.name then
			-- Found existing entry, increment amount
			list[i].amount = list[i].amount + item.amount
			return
		end
	end

	-- No existing entry found, add new one
	local new_entry = {
		name = item.name,
		amount = item.amount,
		type = item_type,
	}
	if item.temperature then
		new_entry.temperature = item.temperature
	end
	if item.minimum_temperature then
		new_entry.minimum_temperature = item.minimum_temperature
	end
	if item.maximum_temperature then
		new_entry.maximum_temperature = item.maximum_temperature
	end

	table.insert(list, new_entry)
end

-- Retire an item, hiding it and disabling associated recipes.
-- Hides the item from menus, disables recycling, and scrubs recipes that produce it.
-- Usage: yi.lib.item.retire("old-item")
--        yi.lib.item.retire("y-obsolete-item")
--      old_item_name - Name of item to retire (string, required)
-- Returns: Nothing (hides item, disables recycling, scrubs recipes)
function yi.lib.item.retire(old_item_name)
	-- 1. Hide the item from all menus and signals
	local p_type = yi.lib.item.get_type(old_item_name)
	if p_type and data.raw[p_type][old_item_name] then
		local item = data.raw[p_type][old_item_name]
		item.hidden = true
		item.factorio_enabled = false -- Prevents it from appearing in various UI lists

		-- 2. Disable Recycling (Space Age specific)
		-- Setting this to nil or false prevents the Recycler from processing it
		item.hidden_in_factoriopedia = true

		-- In 2.0, we can also set the 'subgroup' to a hidden one
		item.subgroup = "other"
	end

	-- 3. Scrub all recipes that produce this item
	for _, recipe in pairs(data.raw.recipe) do
		-- Check if this recipe results in the retired item
		local is_target = false
		if recipe.results then
			for _, result in ipairs(recipe.results) do
				if result.name == old_item_name then
					is_target = true
				end
			end
		elseif recipe.result == old_item_name then
			is_target = true
		end

		if is_target then
			recipe.enabled = false
			recipe.hidden = true
			-- Disable recycling for this specific recipe as well
			recipe.auto_recycle = false
		end
	end
end