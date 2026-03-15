--- @param i integer
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

--- @param i integer
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

pipepictures_hv = function()
	-- Use centralized pipe picture generator from yi-tools library
	return yi.lib.entity.make_pipe_pictures("__Yuoki__/graphics/entity/pipe-hc/", {
		style = "hv",
	})
end

pipepictures_ec = function()
	-- Use centralized pipe picture generator from yi-tools library
	return yi.lib.entity.make_pipe_pictures("__Yuoki__/graphics/entity/pipe-hc/", {
		style = "ec",
	})
end

pipepictures_green = function()
	-- Use centralized pipe picture generator from yi-tools library
	return yi.lib.entity.make_pipe_pictures("__Yuoki__/graphics/entity/pipe-hc/", {
		style = "green",
	})
end

data:extend({

	-- Horizontal pipe (east-west connections)
	yi.lib.entity.make_pipe("y-pipe-h", {
		icon = "__Yuoki__/graphics/icons/pipe-h.png",
		health = 50,
		fluid_volume = 200,
		connections = { defines.direction.east, defines.direction.west },
		pictures = pipepictures_hv(),
	}),

	yi.lib.entity.make_pipe("y-pipe-v", {
		icon = "__Yuoki__/graphics/icons/pipe-v.png",
		health = 50,
		fluid_volume = 200,
		connections = { defines.direction.north, defines.direction.south },
		pictures = pipepictures_hv(),
	}),

	-- PipeBuffer also flow restriction test
	yi.lib.entity.make_storage_tank("y-valve-direction-buffer", {
		icon = "__Yuoki__/graphics/icons/pressure_pipe_icon.png",
		health = 150,
		capacity = 200,
		flags = { "placeable-player", "player-creation" },
		minable = { mining_time = 0.1, result = "y-valve-direction-buffer" },
		collision_box = { { -0.3, -0.3 }, { 0.3, 0.3 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		window_bounding_box = { { -0.05, -0.5 }, { 0.05, 0.0 } },
		flow_length_in_ticks = 360,
		resistances = {},
		overrides = {
			corpse = "small-remnants",
			fluid_box = {
				volume = 200,
				pipe_covers = pipecoverspictures(),
				pipe_connections = {
					{ flow_direction = "input-output", direction = defines.direction.east, position = { 0, 0 } },
					{ flow_direction = "input-output", direction = defines.direction.west, position = { 0, 0 } },
				},
			},
			two_direction_only = true,
			pictures = {
				picture = {
					sheet = {
						filename = "__Yuoki__/graphics/entity/valve_sheet.png",
						priority = "high",
						frames = 4,
						width = 64,
						height = 64,
						scale = 0.8,
						shift = { 0.0, -0.25 },
					},
				},
				fluid_background = {
					filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
					priority = "extra-high",
					width = 16,
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
			},
		},
	}),

	yi.lib.entity.make_pipe("y-pipe-hc", {
		icon = "__Yuoki__/graphics/icons/pipe-hc.png",
		health = 80,
		fluid_volume = 80,
		connections = {
			defines.direction.north,
			defines.direction.east,
			defines.direction.south,
			defines.direction.west,
		},
		pictures = pipepictures_hv(),
		icon_draw_specification = { scale = 0.5 },
	}),

	yi.lib.entity.make_pipe_to_ground("y-pipe-to-ground-hc", {
		icon = "__Yuoki__/graphics/icons/pipe-tg-hc.png",
		health = 80,
		fluid_volume = 80,
		overrides = {
			fluid_box = {
				volume = 80,
				--pipe_covers = pipecoverspictures(),
				pipe_connections = {
					{ direction = defines.direction.north, position = { 0, 0 } },
					{
						connection_type = "underground",
						direction = defines.direction.south,
						position = { 0, 0 },
						max_underground_distance = 20,
					},
				},
				hide_connection_info = true,
			},
			impact_category = "metal",
			pictures = {
				north = {
					filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_gu_b.png",
					priority = "high",
					width = 40,
					height = 40, --, shift = {0.10, -0.04}
				},
				south = {
					filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_gd_b.png",
					priority = "high",
					width = 40,
					height = 40, --, shift = {0.05, 0}
				},
				west = {
					filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_gl_b.png",
					priority = "high",
					width = 40,
					height = 40,
					shift = { 0.1, 0.075 },
				},
				east = {
					filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_gr_b.png",
					priority = "high",
					width = 40,
					height = 40,
					shift = { 0.1, 0.075 },
				},
			},
			visualization = {
				north = {
					filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
					priority = "extra-high",
					x = 64,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
				south = {
					filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
					priority = "extra-high",
					x = 192,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
				west = {
					filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
					priority = "extra-high",
					x = 256,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
				east = {
					filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
					priority = "extra-high",
					x = 128,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
			},
			disabled_visualization = {
				north = {
					filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
					priority = "extra-high",
					x = 64,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
				south = {
					filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
					priority = "extra-high",
					x = 192,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
				west = {
					filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
					priority = "extra-high",
					x = 256,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
				east = {
					filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
					priority = "extra-high",
					x = 128,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
			},
		},
	}),

	yi.lib.entity.make_pipe("y-pipe-ec", {
		icon = "__Yuoki__/graphics/icons/pipe-ec.png",
		health = 100,
		fluid_volume = 130,
		connections = {
			defines.direction.north,
			defines.direction.east,
			defines.direction.south,
			defines.direction.west,
		},
		pictures = pipepictures_ec(),
		icon_draw_specification = { scale = 0.5 },
	}),

	yi.lib.entity.make_pipe_to_ground("y-pipe-to-ground-ec", {
		icon = "__Yuoki__/graphics/icons/pipe-tg-ec.png",
		health = 100,
		fluid_volume = 130,
		overrides = {
			fluid_box = {
				volume = 130,
				--pipe_covers = pipecoverspictures(),
				pipe_connections = {
					{ direction = defines.direction.north, position = { 0, 0 } },
					{
						connection_type = "underground",
						direction = defines.direction.south,
						position = { 0, 0 },
						max_underground_distance = 30,
					},
				},
				hide_connection_info = true,
			},
			impact_category = "metal",
			pictures = {
				north = {
					filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_gu.png",
					priority = "high",
					width = 40,
					height = 40, --, shift = {0.10, -0.04}
				},
				south = {
					filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_gd.png",
					priority = "high",
					width = 40,
					height = 40, --, shift = {0.05, 0}
				},
				west = {
					filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_gl.png",
					priority = "high",
					width = 40,
					height = 40,
					shift = { 0.1, 0.075 },
				},
				east = {
					filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_gr.png",
					priority = "high",
					width = 40,
					height = 40,
					shift = { 0.1, 0.075 },
				},
			},
			visualization = {
				north = {
					filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
					priority = "extra-high",
					x = 64,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
				south = {
					filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
					priority = "extra-high",
					x = 192,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
				west = {
					filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
					priority = "extra-high",
					x = 256,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
				east = {
					filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
					priority = "extra-high",
					x = 128,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
			},
			disabled_visualization = {
				north = {
					filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
					priority = "extra-high",
					x = 64,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
				south = {
					filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
					priority = "extra-high",
					x = 192,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
				west = {
					filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
					priority = "extra-high",
					x = 256,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
				east = {
					filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
					priority = "extra-high",
					x = 128,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
			},
		},
	}),

	yi.lib.entity.make_storage_tank("y-tank-1000", {
		icon = "__Yuoki__/graphics/icons/tank-1000-icon.png",
		health = 150,
		capacity = 4000,
		base_area = 150,
		base_level = 0,
		collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
		selection_box = { { -1.0, -1.0 }, { 1.0, 1.0 } },
		circuit_wire_max_distance = 7.5,
		connection_pattern = "two_corners",
		picture_sheet = {
			filename = "__Yuoki__/graphics/entity/tank_35n.png",
			frames = 2,
			width = 96,
			height = 96,
			shift = { 0.31, 0.0 },
		},
		circuit_wire_connection_points = {
			{
				shadow = {
					red = { 2.0, 1.0 },
					green = { 2.0, 1.0 },
				},
				wire = {
					red = { 1.0, -0.0 },
					green = { 1.0, -0.0 },
				},
			},
			{
				shadow = {
					red = { 0.0, 1.0 },
					green = { 0.0, 1.0 },
				},
				wire = {
					red = { -1, -0.25 },
					green = { -1, -0.25 },
				},
			},
			{
				shadow = {
					red = { 2.0, 1.0 },
					green = { 2.0, 1.0 },
				},
				wire = {
					red = { 1.0, -0.0 },
					green = { 1.0, -0.0 },
				},
			},
			{
				shadow = {
					red = { 0.0, 1.0 },
					green = { 0.0, 1.0 },
				},
				wire = {
					red = { -1, -0.25 },
					green = { -1, -0.25 },
				},
			},
		},
		overrides = {
			fluid_box = {
				volume = 4000,
				base_area = 150,
				base_level = 0,
				--pipe_covers = pipecoverspictures(),
				pipe_connections = {
					{ direction = defines.direction.north, position = { 0.5, -0.5 } },
					{ direction = defines.direction.south, position = { -0.5, 0.5 } },
				},
			},
		},
	}),
	yi.lib.entity.make_storage_tank("y-tank-4500", {
		icon = "__Yuoki__/graphics/entity/tank-4500-icon.png",
		health = 250,
		capacity = 9000,
		base_area = 450,
		base_level = -1,
		collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
		selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
		circuit_wire_max_distance = 7.5,
		connection_pattern = "four_sides",
		picture_sheet = {
			filename = "__Yuoki__/graphics/entity/ugt_9k.png",
			frames = 1,
			width = 256,
			height = 256,
			scale = 0.5,
			shift = { 0.0, 0.25 },
		},
		circuit_wire_connection_points = {
			{
				shadow = {
					red = { 2.0, 1.0 },
					green = { 2.0, 1.0 },
				},
				wire = {
					red = { 1.0, -0.0 },
					green = { 1.0, -0.0 },
				},
			},
			{
				shadow = {
					red = { 0.0, 1.0 },
					green = { 0.0, 1.0 },
				},
				wire = {
					red = { -1, -0.25 },
					green = { -1, -0.25 },
				},
			},
			{
				shadow = {
					red = { 2.0, 1.0 },
					green = { 2.0, 1.0 },
				},
				wire = {
					red = { 1.0, -0.0 },
					green = { 1.0, -0.0 },
				},
			},
			{
				shadow = {
					red = { 0.0, 1.0 },
					green = { 0.0, 1.0 },
				},
				wire = {
					red = { -1, -0.25 },
					green = { -1, -0.25 },
				},
			},
		},
	}),
	yi.lib.entity.make_storage_tank("y-tank-8000", {
		icon = "__Yuoki__/graphics/entity/tank-8000-icon.png",
		health = 300,
		capacity = 24000,
		base_area = 800,
		base_level = 0,
		collision_box = { { -1.7, -1.7 }, { 1.7, 1.7 } },
		selection_box = { { -2.0, -2.0 }, { 2.0, 2.0 } },
		circuit_wire_max_distance = 7.5,
		connection_pattern = "four_sides_offset",
		picture_sheet = {
			filename = "__Yuoki__/graphics/entity/ugt_24k.png",
			frames = 2,
			width = 384,
			height = 384,
			scale = 0.5,
			shift = { 0.0, 0.0 },
		},
		circuit_wire_connection_points = {
			{
				shadow = {
					red = { 2.0, 1.0 },
					green = { 2.0, 1.0 },
				},
				wire = {
					red = { 1.0, -0.0 },
					green = { 1.0, -0.0 },
				},
			},
			{
				shadow = {
					red = { 0.0, 1.0 },
					green = { 0.0, 1.0 },
				},
				wire = {
					red = { -1, -0.25 },
					green = { -1, -0.25 },
				},
			},
			{
				shadow = {
					red = { 2.0, 1.0 },
					green = { 2.0, 1.0 },
				},
				wire = {
					red = { 1.0, -0.0 },
					green = { 1.0, -0.0 },
				},
			},
			{
				shadow = {
					red = { 0.0, 1.0 },
					green = { 0.0, 1.0 },
				},
				wire = {
					red = { -1, -0.25 },
					green = { -1, -0.25 },
				},
			},
		},
	}),

	yi.lib.entity.make_storage_tank("y-tank-24k", {
		icon = "__Yuoki__/graphics/entity/tank-48k-icon.png",
		health = 350,
		capacity = 50000,
		base_area = 1500,
		base_level = -1,
		collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
		selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
		circuit_wire_max_distance = 15,
		corpse = "medium-remnants",
		connection_pattern = "four_sides",
		picture_sheet = {
			filename = "__Yuoki__/graphics/entity/tank-48k-e.png",
			frames = 1,
			width = 128,
			height = 112,
			shift = { 0.315, 0.15 },
		},
		circuit_wire_connection_points = {
			{
				shadow = {
					red = { 2.0, 1.0 },
					green = { 2.0, 1.0 },
				},
				wire = {
					red = { 1.0, -0.0 },
					green = { 1.0, -0.0 },
				},
			},
			{
				shadow = {
					red = { 0.0, 1.0 },
					green = { 0.0, 1.0 },
				},
				wire = {
					red = { -1, -0.25 },
					green = { -1, -0.25 },
				},
			},
			{
				shadow = {
					red = { 2.0, 1.0 },
					green = { 2.0, 1.0 },
				},
				wire = {
					red = { 1.0, -0.0 },
					green = { 1.0, -0.0 },
				},
			},
			{
				shadow = {
					red = { 0.0, 1.0 },
					green = { 0.0, 1.0 },
				},
				wire = {
					red = { -1, -0.25 },
					green = { -1, -0.25 },
				},
			},
		},
	}),

	yi.lib.entity.make_storage_tank("y_flowcheck_10", {
		icon = "__Yuoki__/graphics/icons/flow_indicator_icon.png",
		health = 50,
		capacity = 1,
		base_area = 1,
		base_level = 0,
		collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		circuit_wire_max_distance = 15,
		two_direction_only = true,
		connection_pattern = "center_two",
		picture_sheet = {
			filename = "__Yuoki__/graphics/entity/flow_indicator.png",
			frames = 1,
			width = 64,
			height = 64,
			shift = { 0.25, -0.125 },
		},
		circuit_wire_connection_points = {
			{
				shadow = {
					red = { 0.0, 0.0 },
					green = { 0.0, 0.0 },
				},
				wire = {
					red = { 0.0, -0.0 },
					green = { 0.0, -0.0 },
				},
			},
			{
				shadow = {
					red = { 0.0, 0.0 },
					green = { 0.0, 0.0 },
				},
				wire = {
					red = { 0.0, -0.0 },
					green = { 0.0, -0.0 },
				},
			},
			{
				shadow = {
					red = { 0.0, 0.0 },
					green = { 0.0, 0.0 },
				},
				wire = {
					red = { 0.0, -0.0 },
					green = { 0.0, -0.0 },
				},
			},
			{
				shadow = {
					red = { 0.0, 0.0 },
					green = { 0.0, 0.0 },
				},
				wire = {
					red = { 0.0, -0.0 },
					green = { 0.0, -0.0 },
				},
			},
		},
	}),

	-- Buffer Station also flow restriction test
	yi.lib.entity.make_storage_tank("y_buffer_station", {
		icon = "__Yuoki__/graphics/entity/special_tank3_icon.png",
		health = 500,
		capacity = 7000,
		base_area = 70,
		base_level = 0,
		collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
		selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
		circuit_wire_max_distance = 15,
		connection_pattern = "four_sides",
		pictures = {
			picture = {
				sheet = {
					filename = "__Yuoki__/graphics/entity/special_tank3_sheet.png",
					priority = "high",
					frames = 4,
					width = 256,
					height = 256,
					scale = 0.5,
					shift = { 0.435, 0.05 },
				},
			},
			fluid_background = {
				filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
				priority = "extra-high",
				width = 16,
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
		},
		circuit_wire_connection_points = {
			{
				shadow = {
					red = { -0.55, -0.15 },
					green = { -0.75, -0.15 },
				},
				wire = {
					red = { -0.55, -0.15 },
					green = { -0.75, -0.15 },
				},
			},
			{
				shadow = {
					red = { -0.55, -0.15 },
					green = { -0.75, -0.15 },
				},
				wire = {
					red = { -0.55, -0.15 },
					green = { -0.75, -0.15 },
				},
			},
			{
				shadow = {
					red = { -0.55, -0.15 },
					green = { -0.75, -0.15 },
				},
				wire = {
					red = { -0.55, -0.15 },
					green = { -0.75, -0.15 },
				},
			},
			{
				shadow = {
					red = { -0.55, -0.15 },
					green = { -0.75, -0.15 },
				},
				wire = {
					red = { -0.55, -0.15 },
					green = { -0.75, -0.15 },
				},
			},
		},
	}),

	-- grüne Rohre komplett

	yi.lib.entity.make_pipe("yi_pipe_green", {
		icon = "__Yuoki__/graphics/icons/g_pipe_icon.png",
		health = 100,
		fluid_volume = 100,
		connections = {
			defines.direction.north,
			defines.direction.east,
			defines.direction.south,
			defines.direction.west,
		},
		pictures = pipepictures_green(),
		icon_draw_specification = { scale = 0.5 },
	}),

	yi.lib.entity.make_pipe_to_ground("yi_pipe_underground_green", {
		icon = "__Yuoki__/graphics/icons/g_pipe_u_icon.png",
		health = 100,
		fluid_volume = 100,
		overrides = {
			fluid_box = {
				volume = 100,
				--pipe_covers = pipecoverspictures(),
				pipe_connections = {
					{ direction = defines.direction.north, position = { 0, 0 } },
					{
						connection_type = "underground",
						direction = defines.direction.south,
						position = { 0, 0 },
						max_underground_distance = 25,
					},
				},
				hide_connection_info = true,
			},
			impact_category = "metal",
			pictures = {
				north = {
					filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_uo.png",
					priority = "high",
					width = 80,
					height = 80,
					scale = 0.5, --, shift = {0.10, -0.04}
				},
				south = {
					filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_uu.png",
					priority = "high",
					width = 80,
					height = 80,
					scale = 0.5, --, shift = {0.05, 0}
				},
				west = {
					filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_ul.png",
					priority = "high",
					width = 80,
					height = 80,
					scale = 0.5,
					shift = { 0.1, -0.075 },
				},
				east = {
					filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_ur.png",
					priority = "high",
					width = 80,
					height = 80,
					scale = 0.5,
					shift = { -0.1, -0.075 },
				},
			},
			visualization = {
				north = {
					filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
					priority = "extra-high",
					x = 64,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
				south = {
					filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
					priority = "extra-high",
					x = 192,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
				west = {
					filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
					priority = "extra-high",
					x = 256,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
				east = {
					filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
					priority = "extra-high",
					x = 128,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
			},
			disabled_visualization = {
				north = {
					filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
					priority = "extra-high",
					x = 64,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
				south = {
					filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
					priority = "extra-high",
					x = 192,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
				west = {
					filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
					priority = "extra-high",
					x = 256,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
				east = {
					filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
					priority = "extra-high",
					x = 128,
					size = 64,
					scale = 0.5,
					flags = { "icon" },
				},
			},
		},
	}),
})
