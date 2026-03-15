local util = require("util")

-- Multiple functions used with permission from boblibrary per Bobmeister Nov 7 2024
-- https://discord.com/channels/351216213327609858/497860215010754560/1304116352017109013

-- Error handling and logging functions for Yuoki's Factorio mod library.
if not yi then
	yi = {}
end
if not yi.lib then
	yi.lib = {}
end
if not yi.lib.error then
	yi.lib.error = {}
end

-- Log an error if a recipe is missing or invalid.
-- Usage: yi.lib.error.recipe("missing-recipe")
--        yi.lib.error.recipe(nil, "CustomRecipe", "Custom description")
--      recipe - Recipe name to check (string or nil, required)
--      name   - Custom name for error message (string, optional, defaults to "Recipe")
--      desc   - Custom description for error message (string, optional, defaults to name)
-- Returns: Nothing (logs error if recipe missing or nil)
function yi.lib.error.recipe(recipe, name, desc)
	name = name or "Recipe"
	desc = desc or name
	if recipe == nil then
		log(name .. " variable not passed")
	elseif not data.raw.recipe[recipe] then
		log(desc .. " " .. tostring(recipe) .. " does not exist.")
	end
end

-- Log an error if an item is missing or invalid.
-- Usage: yi.lib.error.item("missing-item")
--        yi.lib.error.item(nil, "CustomItem")
--      item - Item name to check (string or nil, required)
--      name - Custom name for error message (string, optional, defaults to "Item")
-- Returns: Nothing (logs error if item missing or nil)
function yi.lib.error.item(item, name)
	name = name or "Item"
	if item == nil then
		log(name .. " variable not passed")
	else
		local item_type = yi.lib.item.get_type(item)
		if not item_type then
			log(name .. " " .. tostring(item) .. " not a valid item of any type.")
		end
	end
end

-- Log an error if an ingredient table is malformed.
-- Usage: yi.lib.error.ingredient({})
--        yi.lib.error.ingredient(nil, "CustomIngredient")
--      ingredient - Ingredient table to validate (table or nil, required)
--      name       - Custom name for error message (string, optional, defaults to "Ingredient")
-- Returns: Nothing (logs error if ingredient malformed or nil)
function yi.lib.error.ingredient(ingredient, name)
	name = name or "Ingredient"
	if ingredient == nil then
		log(name .. " variable not passed")
	elseif type(ingredient) == "table" then
		if not ingredient.name then
			log(name .. " missing name")
		end
		if not ingredient.amount then
			log(name .. " missing amount")
		end
	end
end