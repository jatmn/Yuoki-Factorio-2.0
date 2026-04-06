local util = require("util")

-- Multiple functions used with permission from boblibrary per Bobmeister Nov 7 2024
-- https://discord.com/channels/351216213327609858/497860215010754560/1304116352017109013

-- Entity creation functions (pipes, storage tanks, valves) for Yuoki's Factorio mod library.
if not yi then
	yi = {}
end
if not yi.lib then
	yi.lib = {}
end
if not yi.lib.entity then
	yi.lib.entity = {}
end

-- PIPE ENTITY HELPER FUNCTIONS
-- These functions help create standardized pipe picture tables and entity definitions.

-- @param i integer
local function make_visualization(i)
	return {
		filename = "__base__/graphics/entity/pipe/visualization.png",
		priority = "extra-high",
		x = i * 64,
		size = 64,
		scale = 0.5,
		flags = { "icon" },
	}
end

-- @param i integer
local function make_disabled_visualization(i)
	return {
		filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
		priority = "extra-high",
		x = i * 64,
		size = 64,
		scale = 0.5,
		flags = { "icon" },
	}
end

-- Generate standardized pipe picture tables for Factorio pipe entities.
-- This function centralizes the creation of pipe picture tables, eliminating duplication
-- across multiple pipe styles (hv, ec, green). It dynamically constructs filenames
-- based on style patterns and applies consistent visualization entries.
-- Usage: yi.lib.entity.make_pipe_pictures("__Yuoki__/graphics/entity/pipe-hc/", {style="hv"})
--        yi.lib.entity.make_pipe_pictures("__Yuoki__/graphics/entity/pipe-ec/", {style="ec", shift={0.1,0}})
--      base_path - The base graphics directory path (string, required)
--                  Example: "__Yuoki__/graphics/entity/pipe-hc/"
--      options   - Configuration options for the pipe style (table, optional)
--                  Supported keys: style ("hv", "ec", "green"), prefix, suffix,
--                  width, height, scale, shift, overrides
-- Returns: Complete pipe pictures table ready for use in pipe entity definitions
function yi.lib.entity.make_pipe_pictures(base_path, options)
	options = options or {}
	local style = options.style or "hv"

	-- Default configuration per style
	local defaults = {
		hv = {
			prefix = "u_pipe_",
			suffix = "_b",
			width = 40,
			height = 40,
			scale = 1.0,
			shift = { 0, 0 },
		},
		ec = {
			prefix = "u_pipe_",
			suffix = "",
			width = 40,
			height = 40,
			scale = 1.0,
			shift = { 0, 0 },
		},
		green = {
			prefix = "g_pipe_",
			suffix = "",
			width = 80,
			height = 80,
			scale = 0.5,
			shift = { 0, -0.075 },
		},
	}

	local config = defaults[style] or defaults.hv
	-- Apply user overrides to config
	for k, v in pairs(options) do
		if k ~= "style" and k ~= "overrides" then
			config[k] = v
		end
	end

	-- Filename stems for each pipe segment type
	local stems = {
		straight_vertical_single = "sv",
		straight_vertical = "sv",
		straight_vertical_window = "vclean",
		straight_horizontal_single = "sh",
		straight_horizontal_window = "hclean",
		straight_horizontal = "sh",
		corner_up_right = "ur",
		corner_up_left = "ul",
		corner_down_right = "dr",
		corner_down_left = "dl",
		t_up = "tu",
		t_down = "td",
		t_right = "tr",
		t_left = "tl",
		cross = "cross",
		ending_up = "ed",
		ending_down = "eu",
		ending_right = "el",
		ending_left = "er",
	}

	-- Special stems for green style (different naming)
	if style == "green" then
		stems = {
			straight_vertical_single = "ns_c",
			straight_vertical = "ns",
			straight_vertical_window = "ns_c",
			straight_horizontal_single = "we_c",
			straight_horizontal_window = "we",
			straight_horizontal = "we_c",
			corner_up_right = "bor",
			corner_up_left = "blo",
			corner_down_right = "bru",
			corner_down_left = "blu",
			t_up = "tu",
			t_down = "td",
			t_right = "tr",
			t_left = "tl",
			cross = "cross",
			ending_up = "ed",
			ending_down = "eu",
			ending_right = "el",
			ending_left = "er",
		}
	end

	-- Build the pictures table
	local pictures = {}

	for key, stem in pairs(stems) do
		local filename = config.prefix .. stem .. config.suffix .. ".png"
		local entry = {
			filename = base_path .. filename,
			priority = "extra-high",
			width = config.width,
			height = config.height,
			scale = config.scale,
			shift = util.table.deepcopy(config.shift),
		}

		-- Apply style-specific adjustments
		if style == "ec" then
			if key == "straight_horizontal_window" then
				entry.shift = { -0.125, 0 }
			elseif key == "ending_left" then
				entry.shift = { -0.05, 0 }
			end
		elseif style == "green" then
			if key == "straight_horizontal_single" or key == "straight_horizontal" then
				entry.shift = { -0.1, -0.075 }
			end
		end

		-- Apply any user overrides for this specific key
		if options.overrides and options.overrides[key] then
			for override_key, override_value in pairs(options.overrides[key]) do
				entry[override_key] = override_value
			end
		end

		pictures[key] = entry
	end

	-- Add common entries (same for all pipe styles)
	pictures.horizontal_window_background = {
		filename = base_path .. "clear.png",
		priority = "extra-high",
		width = 32,
		height = 32,
	}

	pictures.vertical_window_background = {
		filename = base_path .. "clear.png",
		priority = "extra-high",
		width = 32,
		height = 32,
	}

	pictures.fluid_background = {
		filename = base_path .. "clear.png",
		priority = "extra-high",
		width = 32,
		height = 20,
	}

	-- Temperature flow animations (from base game)
	pictures.low_temperature_flow = {
		filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
		priority = "extra-high",
		width = 160,
		height = 20,
	}

	pictures.middle_temperature_flow = {
		filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
		priority = "extra-high",
		width = 160,
		height = 20,
	}

	pictures.high_temperature_flow = {
		filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
		priority = "extra-high",
		width = 160,
		height = 20,
	}

	pictures.gas_flow = {
		filename = "__base__/graphics/entity/pipe/steam.png",
		priority = "extra-high",
		line_length = 10,
		width = 24,
		height = 15,
		frame_count = 60,
		axially_symmetrical = false,
		direction_count = 1,
		hr_version = {
			filename = "__base__/graphics/entity/pipe/hr-steam.png",
			priority = "extra-high",
			line_length = 10,
			width = 48,
			height = 30,
			frame_count = 60,
			axially_symmetrical = false,
			direction_count = 1,
		},
	}

	-- Add visualization entries (same for all pipe styles)
	pictures.straight_vertical_single_visualization = make_visualization(0)
	pictures.straight_vertical_visualization = make_visualization(5)
	pictures.straight_vertical_window_visualization = make_visualization(5)
	pictures.straight_horizontal_window_visualization = make_visualization(10)
	pictures.straight_horizontal_visualization = make_visualization(10)
	pictures.corner_up_right_visualization = make_visualization(3)
	pictures.corner_up_left_visualization = make_visualization(9)
	pictures.corner_down_right_visualization = make_visualization(6)
	pictures.corner_down_left_visualization = make_visualization(12)
	pictures.t_up_visualization = make_visualization(11)
	pictures.t_down_visualization = make_visualization(14)
	pictures.t_right_visualization = make_visualization(7)
	pictures.t_left_visualization = make_visualization(13)
	pictures.cross_visualization = make_visualization(15)
	pictures.ending_up_visualization = make_visualization(1)
	pictures.ending_down_visualization = make_visualization(4)
	pictures.ending_right_visualization = make_visualization(2)
	pictures.ending_left_visualization = make_visualization(8)

	-- Add disabled visualization entries
	pictures.straight_vertical_single_disabled_visualization = make_disabled_visualization(0)
	pictures.straight_vertical_disabled_visualization = make_disabled_visualization(5)
	pictures.straight_vertical_window_disabled_visualization = make_disabled_visualization(5)
	pictures.straight_horizontal_window_disabled_visualization = make_disabled_visualization(10)
	pictures.straight_horizontal_disabled_visualization = make_disabled_visualization(10)
	pictures.corner_up_right_disabled_visualization = make_disabled_visualization(3)
	pictures.corner_up_left_disabled_visualization = make_disabled_visualization(9)
	pictures.corner_down_right_disabled_visualization = make_disabled_visualization(6)
	pictures.corner_down_left_disabled_visualization = make_disabled_visualization(12)
	pictures.t_up_disabled_visualization = make_disabled_visualization(11)
	pictures.t_down_disabled_visualization = make_disabled_visualization(14)
	pictures.t_right_disabled_visualization = make_disabled_visualization(7)
	pictures.t_left_disabled_visualization = make_disabled_visualization(13)
	pictures.cross_disabled_visualization = make_disabled_visualization(15)
	pictures.ending_up_disabled_visualization = make_disabled_visualization(1)
	pictures.ending_down_disabled_visualization = make_disabled_visualization(4)
	pictures.ending_right_disabled_visualization = make_disabled_visualization(2)
	pictures.ending_left_disabled_visualization = make_disabled_visualization(8)

	return pictures
end

-- Generate standardized pipe-to-ground visualization sprites.
-- Creates visualization and disabled_visualization tables for underground pipe entities.
-- This eliminates duplication across multiple pipe-to-ground entity definitions.
-- Usage: yi.lib.entity.make_pipe_to_ground_visualizations()
-- Returns: Table with visualization and disabled_visualization entries for north/south/east/west
function yi.lib.entity.make_pipe_to_ground_visualizations()
	-- NOTE: pipe-to-ground uses a different sprite sheet (320px, 5 frames)
	-- with indices 0-4, so we use separate local helper functions
	local function make_ptg_visualization(i)
		return {
			filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
			priority = "extra-high",
			x = i * 64,
			size = 64,
			scale = 0.5,
			flags = { "icon" },
		}
	end

	local function make_ptg_disabled_visualization(i)
		return {
			filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
			priority = "extra-high",
			x = i * 64,
			size = 64,
			scale = 0.5,
			flags = { "icon" },
		}
	end

	return {
		visualization = {
			north = make_ptg_visualization(1),
			south = make_ptg_visualization(3),
			west = make_ptg_visualization(4),
			east = make_ptg_visualization(2),
		},
		disabled_visualization = {
			north = make_ptg_disabled_visualization(1),
			south = make_ptg_disabled_visualization(3),
			west = make_ptg_disabled_visualization(4),
			east = make_ptg_disabled_visualization(2),
		},
	}
end

-- Create a standardized pipe entity definition.
-- Generates pipe entities with configurable health, fluid volume, and connection patterns.
-- Automatically sets up fluid boxes with proper pipe covers and connection info hiding.
-- Usage: yi.lib.entity.make_pipe("y-pipe-hv", {icon="__Yuoki__/graphics/icons/pipe-hv.png", health=100})
--        yi.lib.entity.make_pipe("y-pipe-ec", {icon="__Yuoki__/graphics/icons/pipe-ec.png", fluid_volume=150})
--      name   - Unique name for the pipe entity (string, required)
--      config - Configuration options (table, optional)
--               Supported keys: icon, icon_size, health, fluid_volume, connections,
--               flags, minable, resistances, collision_box, selection_box,
--               window_bounding_boxes, pictures, overrides
-- Returns: Complete pipe entity definition ready for data:extend
function yi.lib.entity.make_pipe(name, config)
	config = config or {}
	
	-- Default configuration
	local defaults = {
		icon_size = 64,
		health = 50,
		fluid_volume = 100,
		connections = {
			defines.direction.north,
			defines.direction.east,
			defines.direction.south,
			defines.direction.west,
		},
		flags = { "placeable-neutral", "player-creation" },
		minable = { mining_time = 0.1, result = name },
		resistances = {
			{ type = "fire", percent = 80 },
			{ type = "impact", percent = 30 },
		},
		collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		window_bounding_boxes = {
			horizontal = { { -0.25, -0.28125 }, { 0.25, 0.15625 } },
			vertical = { { -0.28125, -0.5 }, { 0.03125, 0.125 } },
		},
	}
	
	-- Merge defaults with user config (user values take precedence)
	local final = util.table.deepcopy(defaults)
	for k, v in pairs(config) do
		if k ~= "overrides" then
			final[k] = v
		end
	end
	
	-- Build the pipe connections from direction list
	local pipe_connections = {}
	for _, direction in ipairs(final.connections) do
		table.insert(pipe_connections, {
			direction = direction,
			position = { 0, 0 },
		})
	end
	
	-- Construct the entity definition
	local entity = {
		type = "pipe",
		name = name,
		icon_size = final.icon_size,
		icon = final.icon,
		flags = final.flags,
		minable = final.minable,
		max_health = final.health,
		corpse = "pipe-remnants",
		dying_explosion = "pipe-explosion",
		resistances = final.resistances,
		fast_replaceable_group = "pipe",
		collision_box = final.collision_box,
		selection_box = final.selection_box,
		fluid_box = {
			volume = final.fluid_volume,
			pipe_covers = pipecoverspictures(), -- pipecoverspictures must be available in calling context
			pipe_connections = pipe_connections,
			hide_connection_info = true,
		},
		pictures = final.pictures,
		horizontal_window_bounding_box = final.window_bounding_boxes.horizontal,
		vertical_window_bounding_box = final.window_bounding_boxes.vertical,
	}
	
	-- Optional icon draw specification
	if final.icon_draw_specification then
		entity.icon_draw_specification = final.icon_draw_specification
	end
	
	-- Apply any additional overrides
	if config.overrides then
		for k, v in pairs(config.overrides) do
			entity[k] = v
		end
	end
	
	return entity
end

-- Create a standardized pipe-to-ground entity definition.
-- Generates underground pipe entities with configurable health, fluid volume, and max distance.
-- Similar to make_pipe but with underground connection handling.
-- Usage: yi.lib.entity.make_pipe_to_ground("y-pipe-to-ground-hv", {icon="__Yuoki__/graphics/icons/pipe-hv.png"})
--        yi.lib.entity.make_pipe_to_ground("y-pipe-to-ground-ec", {max_distance=15})
--      name   - Unique name for the pipe-to-ground entity (string, required)
--      config - Configuration options (table, optional)
--               Supported keys: icon, icon_size, health, fluid_volume, connections,
--               flags, minable, resistances, collision_box, selection_box,
--               max_distance, corpse, dying_explosion, overrides
-- Returns: Complete pipe-to-ground entity definition ready for data:extend
function yi.lib.entity.make_pipe_to_ground(name, config)
	config = config or {}

	-- Default configuration for pipe-to-ground
	local defaults = {
		icon_size = 64,
		health = 50,
		fluid_volume = 100,
		connections = { defines.direction.north, defines.direction.south },
		flags = { "placeable-neutral", "player-creation" },
		minable = { mining_time = 0.1, result = name },
		resistances = {
			{ type = "fire", percent = 80 },
			{ type = "impact", percent = 40 }, -- Higher impact resistance for underground pipes
		},
		collision_box = { { -0.29, -0.29 }, { 0.29, 0.2 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		max_distance = 10,
		corpse = "pipe-to-ground-remnants",
		dying_explosion = "pipe-to-ground-explosion",
		icon_draw_specification = { scale = 0.5 },
	}

	-- Merge defaults with user config
	local final = util.table.deepcopy(defaults)
	for k, v in pairs(config) do
		if k ~= "overrides" then
			final[k] = v
		end
	end

	-- Build the pipe connections (two opposite directions for underground pipes)
	local pipe_connections = {}
	for _, direction in ipairs(final.connections) do
		table.insert(pipe_connections, {
			direction = direction,
			position = { 0, 0 },
		})
	end

	-- Construct the entity definition
	local entity = {
		type = "pipe-to-ground",
		name = name,
		icon_size = final.icon_size,
		icon = final.icon,
		flags = final.flags,
		minable = final.minable,
		max_health = final.health,
		corpse = final.corpse,
		dying_explosion = final.dying_explosion,
		resistances = final.resistances,
		fast_replaceable_group = "pipe",
		collision_box = final.collision_box,
		selection_box = final.selection_box,
		fluid_box = {
			volume = final.fluid_volume,
			pipe_covers = pipecoverspictures(),
			pipe_connections = pipe_connections,
			hide_connection_info = true,
		},
		max_distance = final.max_distance,
	}

	-- Optional icon draw specification
	if final.icon_draw_specification then
		entity.icon_draw_specification = final.icon_draw_specification
	end

	-- Apply any additional overrides
	if config.overrides then
		for k, v in pairs(config.overrides) do
			entity[k] = v
		end
	end

	return entity
end

-- Create a standardized storage tank entity definition with Yuoki-specific enhancements.
-- Generates storage tank entities with configurable capacity and properties, supporting Yuoki's
-- specific patterns like base_area/base_level, custom circuit points, and standardized pictures.
-- Usage: yi.lib.entity.make_storage_tank("y-tank-small", {icon="__Yuoki__/graphics/icons/tank-small.png"})
--        yi.lib.entity.make_storage_tank("y-tank-large", {capacity=2000, connection_pattern="four_sides"})
--      name   - Unique name for the storage tank entity (string, required)
--      config - Configuration options (table, optional)
--               Supported keys: icon, icon_size, health, capacity, connections,
--               connection_pattern, flags, minable, resistances, collision_box,
--               selection_box, window_bounding_box, flow_length_in_ticks,
--               circuit_wire_max_distance, picture_sheet, base_area, base_level,
--               two_direction_only, overrides
-- Standard circuit wire connection points for Yuoki storage tanks.
-- All storage tanks use identical circuit connection positions.
-- Usage: yi.lib.entity.make_standard_circuit_wire_connection_points()
-- Returns: Table with wire and shadow positions for 4 directions (north, east, south, west)
function yi.lib.entity.make_standard_circuit_wire_connection_points()
	return {
		{
			shadow = { red = { 2.0, 1.0 }, green = { 2.0, 1.0 } },
			wire = { red = { 1.0, -0.0 }, green = { 1.0, -0.0 } },
		},
		{
			shadow = { red = { 0.0, 1.0 }, green = { 0.0, 1.0 } },
			wire = { red = { -1, -0.25 }, green = { -1, -0.25 } },
		},
		{
			shadow = { red = { 2.0, 1.0 }, green = { 2.0, 1.0 } },
			wire = { red = { 1.0, -0.0 }, green = { 1.0, -0.0 } },
		},
		{
			shadow = { red = { 0.0, 1.0 }, green = { 0.0, 1.0 } },
			wire = { red = { -1, -0.25 }, green = { -1, -0.25 } },
		},
	}
end

-- Returns: Complete storage tank entity definition ready for data:extend
function yi.lib.entity.make_storage_tank(name, config)
	config = config or {}
	
	-- Default configuration for Yuoki storage tanks
	local defaults = {
		icon_size = 64,
		health = 500,
		capacity = 1000,
		connections = {
			{direction = defines.direction.north, position = {-1, -1}},
			{direction = defines.direction.east, position = {1, -1}},
			{direction = defines.direction.south, position = {1, 1}},
			{direction = defines.direction.west, position = {-1, 1}},
		},
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = name},
		resistances = {}, -- Yuoki tanks typically have no resistances
		collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		window_bounding_box = {{-0.05, -0.5}, {0.05, 0.0}}, -- Yuoki style
		flow_length_in_ticks = 360,
		circuit_wire_max_distance = 15,
		circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
		circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
		working_sound = {
			sound = { filename = "__base__/sound/storage-tank.ogg", volume = 0.8 },
			apparent_volume = 1.5,
		},
		corpse = "small-remnants", -- Yuoki style
		two_direction_only = false,
	}
	
	-- Apply connection pattern if specified
	if config.connection_pattern then
		local patterns = {
			two_corners = {
				{direction = defines.direction.north, position = {0.5, -0.5}},
				{direction = defines.direction.south, position = {-0.5, 0.5}},
			},
			four_sides = {
				{direction = defines.direction.north, position = {0, -1}},
				{direction = defines.direction.east, position = {1, 0}},
				{direction = defines.direction.south, position = {0, 1}},
				{direction = defines.direction.west, position = {-1, 0}},
			},
			four_sides_offset = {
				{direction = defines.direction.north, position = {1.5, -1.6}},
				{direction = defines.direction.east, position = {1.5, -1.5}},
				{direction = defines.direction.south, position = {-1.5, 1.6}},
				{direction = defines.direction.west, position = {-1.5, 1.5}},
			},
			center_two = {
				{direction = defines.direction.north, position = {0, 0}},
				{direction = defines.direction.south, position = {0, 0}},
			},
		}
		if patterns[config.connection_pattern] then
			defaults.connections = patterns[config.connection_pattern]
		end
	end
	
	-- Merge defaults with user config (user values take precedence)
	local final = util.table.deepcopy(defaults)
	for k, v in pairs(config) do
		if k ~= "overrides" and k ~= "connection_pattern" and k ~= "picture_sheet" then
			final[k] = v
		end
	end
	
	-- Apply flow_direction to connections if specified
	if final.flow_direction and final.connections then
		for _, conn in ipairs(final.connections) do
			if not conn.flow_direction then
				conn.flow_direction = final.flow_direction
			end
		end
	end
	
	-- Generate Yuoki-style pictures if picture_sheet is provided
	if config.picture_sheet and not config.pictures then
		final.pictures = yi.lib.entity.make_yuoki_tank_pictures(config.picture_sheet)
	end
	
	-- Construct the fluid box with optional Yuoki parameters
	local fluid_box = {
		volume = final.capacity,
		pipe_connections = final.connections,
	}
	
	-- Add Yuoki-specific fluid properties if provided
	if final.base_area then
		fluid_box.base_area = final.base_area
	end
	if final.base_level then
		fluid_box.base_level = final.base_level
	end
	
	-- Construct the entity definition
	local entity = {
		type = "storage-tank",
		name = name,
		icon_size = final.icon_size,
		icon = final.icon,
		flags = final.flags,
		minable = final.minable,
		max_health = final.health,
		corpse = final.corpse,
		dying_explosion = "storage-tank-explosion",
		resistances = final.resistances,
		collision_box = final.collision_box,
		selection_box = final.selection_box,
		fluid_box = fluid_box,
		window_bounding_box = final.window_bounding_box,
		flow_length_in_ticks = final.flow_length_in_ticks,
		circuit_wire_max_distance = final.circuit_wire_max_distance,
		circuit_wire_connection_points = final.circuit_wire_connection_points,
		circuit_connector_sprites = final.circuit_connector_sprites,
		working_sound = final.working_sound,
	}
	
	-- Add two_direction_only if specified (special flow restriction)
	if final.two_direction_only then
		entity.two_direction_only = final.two_direction_only
	end
	
	-- Add pictures if provided (either user-defined or generated)
	if final.pictures then
		entity.pictures = final.pictures
	end
	
	-- Apply any additional overrides
	if config.overrides then
		for k, v in pairs(config.overrides) do
			entity[k] = v
		end
	end
	
	return entity
end

-- Generate standardized Yuoki storage tank picture structure.
-- Creates the complete pictures table for Yuoki storage tanks with common background sprites.
-- Usage: yi.lib.entity.make_yuoki_tank_pictures({filename="__Yuoki__/graphics/entity/tank.png", width=128, height=128})
--        yi.lib.entity.make_yuoki_tank_pictures({filename="__Yuoki__/graphics/entity/tank-large.png", priority="extra-high"})
--      sheet_config - Sprite sheet configuration (table, required)
--                     Should contain: filename (string), width (number), height (number)
--                     Optional: priority (string), frames (number), scale (number), shift ({number,number})
-- Returns: Complete pictures table for Yuoki storage tank ready for entity.pictures
function yi.lib.entity.make_yuoki_tank_pictures(sheet_config)
	sheet_config = sheet_config or {}
	
	local sheet = {
		filename = sheet_config.filename,
		priority = sheet_config.priority or "high",
		frames = sheet_config.frames or 1,
		width = sheet_config.width,
		height = sheet_config.height,
	}
	
	if sheet_config.scale then
		sheet.scale = sheet_config.scale
	end
	
	if sheet_config.shift then
		sheet.shift = sheet_config.shift
	end
	
	return {
		picture = {
			sheet = sheet,
		},
		fluid_background = {
			filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
			priority = "extra-high",
			width = 32,
			height = 15,
		},
		window_background = {
			filename = "__base__/graphics/entity/storage-tank/window-background.png",
			priority = "extra-high",
			width = 17,
			height = 24,
		},
		flow_sprite = {
			filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
			priority = "extra-high",
			width = 160,
			height = 20,
		},
		gas_flow = {
			filename = "__base__/graphics/entity/pipe/steam.png",
			priority = "extra-high",
			line_length = 10,
			width = 24,
			height = 15,
			frame_count = 60,
			axially_symmetrical = false,
			direction_count = 1,
			animation_speed = 0.25,
			hr_version = {
				filename = "__base__/graphics/entity/pipe/hr-steam.png",
				priority = "extra-high",
				line_length = 10,
				width = 48,
				height = 30,
				frame_count = 60,
				axially_symmetrical = false,
				animation_speed = 0.25,
				direction_count = 1,
			},
		},
	}
end

-- Generate standardized Yuoki valve entity definition.
-- Creates valve entities with common defaults: two_direction_only = true,
-- optional flow_direction = "input-output" on connections, and valve-specific
-- picture generation.
-- Usage: yi.lib.entity.make_valve("y-valve-small", {icon="__Yuoki__/graphics/icons/valve-small.png"})
--        yi.lib.entity.make_valve("y-valve-large", {capacity=300, flow_direction="input"})
--      name   - Valve entity name (string, required)
--      config - Configuration options (table, optional)
--               Same keys as make_storage_tank, with valve-specific defaults:
--               two_direction_only=true, flow_direction="input-output"
-- Returns: Complete valve entity definition ready for data:extend
function yi.lib.entity.make_valve(name, config)
	config = config or {}
	
	-- Valve-specific defaults
	local valve_defaults = {
		health = 150,
		capacity = 200,
		collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		two_direction_only = true,
		flow_direction = "input-output",
		corpse = "small-remnants",
		resistances = {},
	}
	
	-- Merge valve defaults with user config (user values take precedence)
	for k, v in pairs(valve_defaults) do
		if config[k] == nil then
			config[k] = v
		end
	end
	
	-- Ensure two_direction_only is true for valves
	config.two_direction_only = true
	
	-- Call make_storage_tank with the merged configuration
	return yi.lib.entity.make_storage_tank(name, config)
end

-- ACCUMULATOR CIRCUIT HELPER FUNCTIONS
-- Standard circuit connection point for Yuoki accumulators.
-- All accumulators use identical circuit wire connection positions.
-- Usage: circuit_wire_connection_point = yi.lib.entity.make_standard_accumulator_circuit_connection_point()
-- Returns: Table with shadow/wire positions for red/green wires
function yi.lib.entity.make_standard_accumulator_circuit_connection_point()
	return {
		shadow = {
			red = { 0.984375, 1.10938 },
			green = { 0.890625, 1.10938 },
		},
		wire = {
			red = { 0.6875, 0.59375 },
			green = { 0.6875, 0.71875 },
		},
	}
end

-- Standard circuit settings for Yuoki accumulators.
-- Combines connection point, max distance, and default output signal.
-- Usage: local circuit = yi.lib.entity.make_accumulator_circuit_settings(15.5)
--      max_distance - Optional circuit wire max distance (number, default 15.5)
-- Returns: Table with circuit_wire_connection_point, circuit_wire_max_distance, default_output_signal
function yi.lib.entity.make_accumulator_circuit_settings(max_distance)
	max_distance = max_distance or 15.5
	return {
		circuit_wire_connection_point = yi.lib.entity.make_standard_accumulator_circuit_connection_point(),
		circuit_wire_max_distance = max_distance,
		default_output_signal = { type = "virtual", name = "signal-A" },
	}
end

-- Standard wire pictures for small electric poles.
-- All Yuoki electric poles use identical base game wire graphics.
-- Usage: local wires = yi.lib.entity.small_electric_pole_wire_pictures()
-- Returns: Table with copper_wire_picture, green_wire_picture, radius_visualisation_picture,
--          red_wire_picture, wire_shadow_picture
function yi.lib.entity.small_electric_pole_wire_pictures()
	return {
		copper_wire_picture = {
			filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
			priority = "high",
			width = 224,
			height = 46,
		},
		green_wire_picture = {
			filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
			priority = "high",
			width = 224,
			height = 46,
		},
		radius_visualisation_picture = {
			filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
			width = 12,
			height = 12,
		},
		red_wire_picture = {
			filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
			priority = "high",
			width = 224,
			height = 46,
		},
		wire_shadow_picture = {
			filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
			priority = "high",
			width = 224,
			height = 46,
		},
	}
end

-- CONTAINER HELPER FUNCTIONS
-- These functions help create standardized container and logistic-container entities.

-- Standard circuit wire connection point for Yuoki containers.
-- All Yuoki containers use identical circuit connection positions.
-- Usage: circuit_wire_connection_point = yi.lib.entity.make_standard_container_circuit_wire_connection_point()
-- Returns: Table with shadow/wire positions for red/green wires
function yi.lib.entity.make_standard_container_circuit_wire_connection_point()
	return {
		shadow = {
			red = { 0.7, -0.3 },
			green = { 0.7, -0.3 },
		},
		wire = {
			red = { 0.3, -0.8 },
			green = { 0.3, -0.8 },
		},
	}
end

-- Standard sound definitions for Yuoki containers.
-- All Yuoki containers use identical open/close sounds.
-- Usage: yi.lib.entity.make_container_sounds()
-- Returns: Table with open_sound and close_sound
function yi.lib.entity.make_container_sounds()
	return {
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume = 0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
	}
end

-- Standard wall diode properties for circuit network connections.
-- All Yuoki walls use identical diode settings from base game.
-- Usage: yi.lib.entity.make_wall_diodes()
-- Returns: Table with all 16 wall_diode_* properties
function yi.lib.entity.make_wall_diodes()
	return {
		wall_diode_green = util.conditional_return(not data.is_demo, {
			sheet = {
				filename = "__base__/graphics/entity/wall/wall-diode-green.png",
				priority = "extra-high",
				width = 38,
				height = 24,
				shift = util.by_pixel(-2, -24),
				hr_version = {
					filename = "__base__/graphics/entity/wall/hr-wall-diode-green.png",
					priority = "extra-high",
					width = 72,
					height = 44,
					shift = util.by_pixel(-1, -23),
					scale = 0.5,
				},
			},
		}),
		wall_diode_green_light_top = util.conditional_return(not data.is_demo, {
			minimum_darkness = 0.3,
			color = { g = 1 },
			shift = util.by_pixel(0, -30),
			size = 1,
			intensity = 0.3,
		}),
		wall_diode_green_light_right = util.conditional_return(not data.is_demo, {
			minimum_darkness = 0.3,
			color = { g = 1 },
			shift = util.by_pixel(12, -23),
			size = 1,
			intensity = 0.3,
		}),
		wall_diode_green_light_bottom = util.conditional_return(not data.is_demo, {
			minimum_darkness = 0.3,
			color = { g = 1 },
			shift = util.by_pixel(0, -17),
			size = 1,
			intensity = 0.3,
		}),
		wall_diode_green_light_left = util.conditional_return(not data.is_demo, {
			minimum_darkness = 0.3,
			color = { g = 1 },
			shift = util.by_pixel(-12, -23),
			size = 1,
			intensity = 0.3,
		}),
		wall_diode_red = util.conditional_return(not data.is_demo, {
			sheet = {
				filename = "__base__/graphics/entity/wall/wall-diode-red.png",
				priority = "extra-high",
				width = 38,
				height = 24,
				shift = util.by_pixel(-2, -24),
				hr_version = {
					filename = "__base__/graphics/entity/wall/hr-wall-diode-red.png",
					priority = "extra-high",
					width = 72,
					height = 44,
					shift = util.by_pixel(-1, -23),
					scale = 0.5,
				},
			},
		}),
		wall_diode_red_light_top = util.conditional_return(not data.is_demo, {
			minimum_darkness = 0.3,
			color = { r = 1 },
			shift = util.by_pixel(0, -30),
			size = 1,
			intensity = 0.3,
		}),
		wall_diode_red_light_right = util.conditional_return(not data.is_demo, {
			minimum_darkness = 0.3,
			color = { r = 1 },
			shift = util.by_pixel(12, -23),
			size = 1,
			intensity = 0.3,
		}),
		wall_diode_red_light_bottom = util.conditional_return(not data.is_demo, {
			minimum_darkness = 0.3,
			color = { r = 1 },
			shift = util.by_pixel(0, -17),
			size = 1,
			intensity = 0.3,
		}),
		wall_diode_red_light_left = util.conditional_return(not data.is_demo, {
			minimum_darkness = 0.3,
			color = { r = 1 },
			shift = util.by_pixel(-12, -23),
			size = 1,
			intensity = 0.3,
		}),
	}
end

-- Generate wall picture table from sprite configuration.
-- Usage: yi.lib.entity.make_wall_pictures("__Mod__/graphics/entity/walls/my_wall", { ... })
-- Parameters:
--   base_path - Base path for sprite files (e.g., "__Yuoki__/graphics/entity/walls/wood_wall")
--   config - Table with optional keys:
--     width, height, shift - Sprite dimensions and shift (defaults: 64, 64, {0.40625, 0})
--     single - Single sprite or filename string
--     straight_vertical - Vertical straight sprites
--     straight_horizontal - Horizontal straight sprites
--     corner_right_down - Corner sprite
--     corner_left_down - Corner sprite
--     t_up - T-junction sprite
--     ending_right - Ending sprite
--     ending_left - Ending sprite
-- Returns: Complete wall pictures table
function yi.lib.entity.make_wall_pictures(base_path, config)
	config = config or {}
	local width = config.width or 64
	local height = config.height or 64
	local default_shift = config.shift or { 0.40625, 0 }
	
	-- Helper to create a single picture entry
	local function make_picture(filename, shift)
		return {
			filename = filename,
			priority = "extra-high",
			width = width,
			height = height,
			shift = shift or default_shift,
		}
	end
	
	-- Helper to build a picture array from config (can be string, table of strings, or table of pictures)
	local function build_pictures(value)
		if type(value) == "string" then
			return { make_picture(base_path .. "_" .. value) }
		elseif type(value) == "table" then
			local result = {}
			for _, v in ipairs(value) do
				if type(v) == "string" then
					table.insert(result, make_picture(base_path .. "_" .. v))
				else
					-- Already a picture table
					table.insert(result, v)
				end
			end
			return result
		elseif value == nil then
			return {}
		end
		return { make_picture(base_path) }
	end
	
	return {
		single = build_pictures(config.single or "single"),
		straight_vertical = build_pictures(config.straight_vertical),
		straight_horizontal = build_pictures(config.straight_horizontal),
		corner_right_down = build_pictures(config.corner_right_down),
		corner_left_down = build_pictures(config.corner_left_down),
		t_up = build_pictures(config.t_up),
		ending_right = build_pictures(config.ending_right),
		ending_left = build_pictures(config.ending_left),
	}
end

-- Size tier defaults for containers.
-- Each tier defines collision_box, selection_box, inventory_size, and corpse.
-- Usage: yi.lib.entity.size_tiers.small
local size_tiers = {
	["1x1"] = {
		collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		inventory_size = 60,
		corpse = "small-remnants",
	},
	["2x2"] = {
		collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
		selection_box = { { -1.0, -1.0 }, { 1.0, 1.0 } },
		inventory_size = 100,
		corpse = "small-remnants",
	},
	["3x3"] = {
		collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
		selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
		inventory_size = 140,
		corpse = "medium-remnants",
	},
	["4x4"] = {
		collision_box = { { -1.7, -1.7 }, { 1.7, 1.7 } },
		selection_box = { { -2.0, -2.0 }, { 2.0, 2.0 } },
		inventory_size = 220,
		corpse = "big-remnants",
	},
}

-- Create a standardized container entity definition.
-- Generates container entities with configurable size tiers and common properties.
-- Usage: yi.lib.entity.make_container("y_sc11", {icon="__Yuoki__/graphics/entity/store/y-c11-icon.png"})
--        yi.lib.entity.make_container("y_c22", {size_tier="2x2", health=800, inventory_size=100})
--      name   - Unique name for the container entity (string, required)
--      config - Configuration options (table, optional)
--               Supported keys: icon, icon_size, size_tier, health, flags,
--               minable, resistances, inventory_size, picture, circuit_wire_max_distance,
--               fast_replaceable_group, overrides
-- Returns: Complete container entity definition ready for data:extend
function yi.lib.entity.make_container(name, config)
	config = config or {}

	-- Default configuration
	local defaults = {
		icon_size = 64,
		size_tier = "1x1",
		health = 300,
		flags = { "placeable-neutral", "player-creation" },
		minable = { mining_time = 1, result = name },
		resistances = {
			{ type = "physical", percent = 20 },
			{ type = "fire", percent = 50 },
		},
		circuit_wire_max_distance = 7.5,
		fast_replaceable_group = "container",
	}

	-- Merge defaults with user config
	local final = util.table.deepcopy(defaults)
	for k, v in pairs(config) do
		if k ~= "overrides" and k ~= "picture" then
			final[k] = v
		end
	end

	-- Apply size tier defaults if not overridden
	local tier = size_tiers[final.size_tier] or size_tiers["1x1"]
	if config.inventory_size == nil then
		final.inventory_size = tier.inventory_size
	end
	if config.collision_box == nil then
		final.collision_box = tier.collision_box
	end
	if config.selection_box == nil then
		final.selection_box = tier.selection_box
	end
	if config.corpse == nil then
		final.corpse = tier.corpse
	end

	-- Construct the entity definition
	local entity = {
		type = "container",
		name = name,
		icon_size = final.icon_size,
		icon = final.icon,
		flags = final.flags,
		open_sound = yi.lib.entity.make_container_sounds().open_sound,
		close_sound = yi.lib.entity.make_container_sounds().close_sound,
		minable = final.minable,
		max_health = final.health,
		corpse = final.corpse,
		resistances = final.resistances,
		collision_box = final.collision_box,
		selection_box = final.selection_box,
		fast_replaceable_group = final.fast_replaceable_group,
		inventory_size = final.inventory_size,
		circuit_wire_connection_point = yi.lib.entity.make_standard_container_circuit_wire_connection_point(),
		circuit_wire_max_distance = final.circuit_wire_max_distance,
	}

	-- Add picture if provided
	if config.picture then
		entity.picture = config.picture
	elseif final.picture then
		entity.picture = final.picture
	end

	-- Apply any additional overrides
	if config.overrides then
		for k, v in pairs(config.overrides) do
			entity[k] = v
		end
	end

	return entity
end

-- Create a standardized logistic-container entity definition.
-- Generates logistic container entities with configurable mode, size tiers, and common properties.
-- Usage: yi.lib.entity.make_logistic_container("y-rare-chest-log", {logistic_mode="storage"})
--        yi.lib.entity.make_logistic_container("y_pc22", {logistic_mode="passive-provider", size_tier="2x2"})
--      name   - Unique name for the logistic container entity (string, required)
--      config - Configuration options (table, optional)
--               Supported keys: icon, icon_size, size_tier, health, logistic_mode,
--               logistic_slots_count, max_logistic_slots, trash_inventory_size, flags,
--               minable, resistances, inventory_size, picture, circuit_wire_max_distance,
--               fast_replaceable_group, vehicle_impact_sound, overrides
-- Returns: Complete logistic container entity definition ready for data:extend
function yi.lib.entity.make_logistic_container(name, config)
	config = config or {}

	-- Default configuration
	local defaults = {
		icon_size = 64,
		size_tier = "1x1",
		health = 300,
		flags = { "placeable-player", "player-creation" },
		minable = { hardness = 0.2, mining_time = 0.5, result = name },
		resistances = {
			{ type = "physical", percent = 20 },
			{ type = "fire", percent = 50 },
		},
		inventory_size = 60,
		trash_inventory_size = 20,
		circuit_wire_max_distance = 7.5,
		fast_replaceable_group = "container",
	}

	-- Merge defaults with user config
	local final = util.table.deepcopy(defaults)
	for k, v in pairs(config) do
		if k ~= "overrides" and k ~= "picture" then
			final[k] = v
		end
	end

	-- Apply size tier defaults if not overridden
	local tier = size_tiers[final.size_tier] or size_tiers["1x1"]
	if config.inventory_size == nil then
		final.inventory_size = tier.inventory_size
	end
	if config.collision_box == nil then
		final.collision_box = tier.collision_box
	end
	if config.selection_box == nil then
		final.selection_box = tier.selection_box
	end
	if config.corpse == nil then
		final.corpse = tier.corpse
	end

	-- Construct the entity definition
	local entity = {
		type = "logistic-container",
		name = name,
		icon_size = final.icon_size,
		icon = final.icon,
		flags = final.flags,
		open_sound = yi.lib.entity.make_container_sounds().open_sound,
		close_sound = yi.lib.entity.make_container_sounds().close_sound,
		minable = final.minable,
		max_health = final.health,
		corpse = final.corpse,
		resistances = final.resistances,
		collision_box = final.collision_box,
		selection_box = final.selection_box,
		fast_replaceable_group = final.fast_replaceable_group,
		inventory_size = final.inventory_size,
		trash_inventory_size = final.trash_inventory_size,
		logistic_mode = final.logistic_mode,
		circuit_wire_connection_point = yi.lib.entity.make_standard_container_circuit_wire_connection_point(),
		circuit_wire_max_distance = final.circuit_wire_max_distance,
	}

	-- Add logistic_slots_count or max_logistic_slots if specified
	if final.logistic_slots_count then
		entity.logistic_slots_count = final.logistic_slots_count
	end
	if final.max_logistic_slots then
		entity.max_logistic_slots = final.max_logistic_slots
	end

	-- Add vehicle_impact_sound if specified (only used by passive-provider currently)
	if final.vehicle_impact_sound then
		entity.vehicle_impact_sound = final.vehicle_impact_sound
	end

	-- Add picture if provided
	if config.picture then
		entity.picture = config.picture
	elseif final.picture then
		entity.picture = final.picture
	end

	-- Apply any additional overrides
	if config.overrides then
		for k, v in pairs(config.overrides) do
			entity[k] = v
		end
	end

	return entity
end