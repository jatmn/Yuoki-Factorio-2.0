-- yi-lamps.lua - Lamp helper functions for Yuoki Industries mod
-- Provides utilities for creating lamp items, recipes, and entities with common patterns.

-- Ensure yi namespace exists
if not yi then yi = {} end
if not yi.lib then yi.lib = {} end
if not yi.lib.lamp then yi.lib.lamp = {} end

-- Create a lamp item prototype with common defaults.
-- Usage: yi.lib.lamp.make_item("y-tinylamp", {icon="__Yuoki__/graphics/icons/lamp-1-icon.png"})
--        yi.lib.lamp.make_item("y-powerlamp", {stack_size=50, order="lb"})
--      name   - Item name (string, required)
--      config - Configuration options (table, optional)
--               Supported keys: icon, icon_size, subgroup, stack_size, order, place_result, overrides
-- Returns: Complete item prototype ready for data:extend
function yi.lib.lamp.make_item(name, config)
	config = config or {}

	local defaults = {
		icon_size = 64,
		subgroup = "y-lamps",
		stack_size = 50,
		order = name:match("^y.*") and "la" or "za",
		place_result = name,
	}

	-- Merge defaults with config
	local final = util.table.deepcopy(defaults)
	for k, v in pairs(config) do
		if k ~= "overrides" then
			final[k] = v
		end
	end

	-- Ensure place_result defaults to name if not specified
	if not final.place_result then
		final.place_result = name
	end

	local item = {
		type = "item",
		name = name,
		icon_size = final.icon_size,
		icon = final.icon,
		subgroup = final.subgroup,
		place_result = final.place_result,
		stack_size = final.stack_size,
		order = final.order,
	}

	-- Apply overrides
	if config.overrides then
		for k, v in pairs(config.overrides) do
			item[k] = v
		end
	end

	return item
end

-- Create a lamp recipe prototype with common defaults.
-- Usage: yi.lib.lamp.make_recipe("y-tinylamp", {ingredients={{"iron-plate", 1}, {"copper-cable", 1}}})
--        yi.lib.lamp.make_recipe("y-powerlamp", {ingredients={{"y-raw-fuelnium", 1}}, results={{type="item", name="y-powerlamp", amount=1}}})
--      name   - Recipe name (string, required)
--      config - Configuration options (table, optional)
--               Supported keys: ingredients, results, enabled, icon, icon_size, subgroup, order, main_product, overrides
-- Returns: Complete recipe prototype ready for data:extend
function yi.lib.lamp.make_recipe(name, config)
	config = config or {}

	local defaults = {
		enabled = true,
		subgroup = "y-lamps",
		order = name:match("^y.*") and "la" or "za",
		results = {{type = "item", name = name, amount = 1}},
		main_product = name,
	}

	-- Merge defaults with config
	local final = util.table.deepcopy(defaults)
	for k, v in pairs(config) do
		if k ~= "overrides" then
			final[k] = v
		end
	end

	local recipe = {
		type = "recipe",
		name = name,
		enabled = final.enabled,
		ingredients = final.ingredients,
		results = final.results,
		main_product = final.main_product,
	}

	-- Add optional properties
	if final.icon then
		recipe.icon = final.icon
		recipe.icon_size = final.icon_size or 64
	end
	if final.subgroup then
		recipe.subgroup = final.subgroup
	end
	if final.order then
		recipe.order = final.order
	end

	-- Apply overrides
	if config.overrides then
		for k, v in pairs(config.overrides) do
			recipe[k] = v
		end
	end

	return recipe
end

-- Create a complete lamp set (item + recipe + entity) for colored indicator lamps.
-- All colored lamps share the same structure: same energy usage, health, collision/selection boxes.
-- Usage: yi.lib.lamp.make_color_lamp("y_lamp_red", {color="red", icon_path="__Yuoki__/graphics/entity/lamps/"})
--        yi.lib.lamp.make_color_lamp("y_lamp_green", {color="green", health=100, light={intensity=0.5, size=16}})
--      name   - Lamp name including color suffix (string, required)
--      config - Configuration options (table, optional)
--               Supported keys: color, icon_path, health, light, energy_usage_per_tick, picture_shift, overrides
-- Returns: Table containing {item=..., recipe=..., entity=...}
function yi.lib.lamp.make_color_lamp(name, config)
	config = config or {}

	-- Extract color from name if not provided
	local color = config.color or name:match("_(%a+)$") or "white"

	-- Build paths for graphics
	local base_path = config.icon_path or "__Yuoki__/graphics/entity/lamps/"
	local icon_path = base_path .. "y_lamp_" .. color .. "_icon.png"
	local off_path = base_path .. "y_lamp_" .. color .. "_off.png"
	local on_path = base_path .. "y_lamp_" .. color .. "_on.png"

	-- Default picture shift for colored lamps
	local picture_shift = config.picture_shift or {0.3125, -0.125}

	-- Create item
	local item = yi.lib.lamp.make_item(name, {
		icon = icon_path,
		subgroup = config.subgroup or "y-lamps",
		stack_size = config.stack_size or 50,
		order = config.order or "2" .. string.sub(color, 1, 1),
	})

	-- Create recipe with default ingredients
	local recipe = yi.lib.lamp.make_recipe(name, {
		ingredients = config.ingredients or {
			{type = "item", name = "y_structure_element", amount = 1},
			{type = "item", name = "y-chip-1", amount = 1},
		},
		order = config.order or "2" .. string.sub(color, 1, 1),
	})

	-- Create entity using yi.lib.entity.make_lamp
	local entity = yi.lib.entity.make_lamp(name, {
		icon = icon_path,
		health = config.health or 75,
		energy_usage_per_tick = config.energy_usage_per_tick or "5kW",
		light = config.light or {intensity = 0.25, size = 8},
		circuit_wire_max_distance = config.circuit_wire_max_distance or 22.5,
		picture_off = {
			filename = off_path,
			priority = "high",
			width = 64,
			height = 64,
			shift = picture_shift,
		},
		picture_on = {
			filename = on_path,
			priority = "high",
			width = 64,
			height = 64,
			shift = picture_shift,
		},
		overrides = config.overrides,
	})

	return {
		item = item,
		recipe = recipe,
		entity = entity,
	}
end

-- Batch create multiple colored lamps with shared configuration.
-- Usage: yi.lib.lamp.make_color_set({"red", "green", "blue", "yellow"}, {icon_path="__Yuoki__/graphics/entity/lamps/"})
--        yi.lib.lamp.make_color_set({"red", "green"}, {health=100, energy_usage_per_tick="10kW"})
--        yi.lib.lamp.make_color_set({"red", "green", "blue"}, {order_prefix="2"}) -- Uses 2a, 2b, 2c ordering
--      colors - Array of color names (table, required)
--      config - Shared configuration options (table, optional)
--               Same keys as make_color_lamp, applied to all lamps
--               order_prefix - If provided, generates order as prefix + letter (a, b, c, ...)
-- Returns: Table with color keys, each containing {item=..., recipe=..., entity=...}
function yi.lib.lamp.make_color_set(colors, config)
	config = config or {}
	local result = {}

	for i, color in ipairs(colors) do
		local name = "y_lamp_" .. color
		-- Create a copy of config with indexed order if order_prefix is provided
		local lamp_config = config
		if config.order_prefix then
			lamp_config = {}
			for k, v in pairs(config) do
				if k ~= "order_prefix" then
					lamp_config[k] = v
				end
			end
			lamp_config.order = config.order_prefix .. string.char(96 + i) -- 97 = 'a'
		end
		result[color] = yi.lib.lamp.make_color_lamp(name, lamp_config)
	end

	return result
end

-- Create lamp sprites from a base configuration.
-- Helper function for creating picture_off and picture_on sprites.
-- Usage: yi.lib.lamp.make_lamp_sprites("__Yuoki__/graphics/entity/lamps/y_lamp_red")
--        yi.lib.lamp.make_lamp_sprites("__Yuoki__/graphics/entity/lamps/y_lamp_red", {width=64, height=64, shift={0.3125, -0.125}})
--      base_path - Base path without _off.png/_on.png suffix (string, required)
--      config    - Sprite configuration (table, optional)
--                  Supported keys: width, height, shift, scale, priority
-- Returns: Table with picture_off and picture_on sprites
function yi.lib.lamp.make_lamp_sprites(base_path, config)
	config = config or {}

	local defaults = {
		width = 64,
		height = 64,
		shift = {0.3125, -0.125},
		scale = nil,
		priority = "high",
	}

	local final = {}
	for k, v in pairs(defaults) do
		final[k] = config[k] or v
	end

	local function make_sprite(filename_suffix)
		local sprite = {
			filename = base_path .. filename_suffix,
			priority = final.priority,
			width = final.width,
			height = final.height,
			shift = final.shift,
		}
		if final.scale then
			sprite.scale = final.scale
		end
		return sprite
	end

	return {
		picture_off = make_sprite("_off.png"),
		picture_on = make_sprite("_on.png"),
	}
end

return yi.lib.lamp
