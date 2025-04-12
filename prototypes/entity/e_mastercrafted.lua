data:extend(
{

	--y-obninsk-reactor
	{
		type = "recipe",
		name = "y_obninsk_mc",
		ingredients = {
			{type="item", name="y-obninsk-reactor", amount=1},
			{type="item", name="y_rwtechsign", amount=10000},
		},
		results=
		{
			{type="item", name="y_obninsk_mc", amount=1, },
			{type="item", name="y-fame", amount=2, },
		},
		main_product="y_obninsk_mc",
		group = "yuoki-energy",
		subgroup = "y_mastercrafted",
		order="b-a5",
	},
	{
		type = "item",
		name = "y_obninsk_mc",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/obninsk_mc_icon.png",
		group = "yuoki-energy",
		subgroup = "y_mastercrafted",
		order = "b[steam-power]-a5",
		place_result = "y_obninsk_mc",
		stack_size = 5,
	},
	{
		type = "assembling-machine",
		name = "y_obninsk_mc",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/obninsk_mc_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 0.5, result = "y_obninsk_mc"},
		max_health = 1500,
		corpse = "big-remnants",
		resistances = {{type = "fire", percent = 80}},
		fluid_boxes = {
			{
				volume = 200,
				production_type = "input",
				pipe_picture = assembler2pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 50,
				height = 2,
				base_level = -1,
				pipe_connections = {
					{flow_direction = "input", direction = defines.direction.south, position = {0, 2.2}},
					--{flow_direction = "input", direction = defines.direction.north, position = { 0, 2}}
				},
				filter = "water"
			},
			{
				volume = 200,
				production_type = "output",
				pipe_picture = assembler2pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 5,
				height = 2,
				pipe_connections = {
					{flow_direction = "output", direction = defines.direction.north, position = {0, -2.2}},
					--{flow_direction = "output", direction = defines.direction.north, position = { 0, -2}}
				},
			},
		},
		collision_box = {{-2.25, -2.25}, {2.25, 2.25}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		graphics_set =
		{
		  animation =
		  {
			layers =
			{
			  {
				filename = "__Yuoki__/graphics/entity/obninsk_mc.png", priority = "extra-high", width = 420, height = 360, shift = {0.6, 0.2}, scale = 0.5,
				frame_count = 1,
				line_length = 1
			  },
			}
		  }
		},
		working_visualisations = {
			animation = {
				filename = "__Yuoki__/graphics/entity/obninsk-reactor_wns.png",
				priority = "extra-high",
				width = 210,
				height = 180,
				shift = {0.6, 0.2},
				frame_count = 1,
				line_length = 1
			},
			light = {intensity = 0.7, size = 9.9, shift = {0.0, 0.0}, color = {r = 0.7, g = 0.0, b = 0.7}},
		},
		crafting_categories = {"yuoki_mf"},
		crafting_speed = 1,
		energy_source = {
			type = "burner",
			fuel_categories = {"yfusion"},
			effectivity = 0.7,
			fuel_inventory_size = 1,
			emissions_per_minute = { pollution = 700},
			smoke = {{	name = "smoke",deviation = {0.1, 0.1},frequency = 0.1,}}
		},
		allowed_effects = {"pollution"},
		energy_usage = "35MW",
		ingredient_count = 3,
	},

	-- big master-steam-turbine
	{
		type = "recipe",
		name = "y_steam_turbine_mc",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/steam_turbine_n3mc_icon.png",
		ingredients = {
			{type="item", name="y-steam-turbine", amount=1},
			{type="item", name="y_rwtechsign", amount=1000},
		},
		results = {
			{type="item", name="y_steam_turbine_mc", amount=1,},
		},
		main_product = "y_steam_turbine_mc",
		enabled = true,
		group = "yuoki-energy",
		subgroup = "y_mastercrafted",
		order="g-b2",
	},
	{
		type = "item",
		name = "y_steam_turbine_mc",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/steam_turbine_n3mc_icon.png",
		group = "yuoki-energy",
		subgroup = "y_mastercrafted",
		place_result = "y_steam_turbine_mc",
		stack_size = 20,
		default_request_amount = 5,
	},
	{
		type = "generator",
		name = "y_steam_turbine_mc",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/steam_turbine_n3mc_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 0.5, result = "y_steam_turbine_mc"},
		max_health = 400,
		corpse = "big-remnants",
		effectivity = 1.145,
		fluid_usage_per_tick = 0.75,
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		collision_box = {{-1.3, -1.7}, {1.3, 1.7}},
		selection_box = {{-1.5, -2.0}, {1.5, 2.0}},
		fluid_box =
		{
			volume = 200,
			base_area = 3,
			height = 2,
			base_level = -1,
			pipe_connections =
			{
				{ flow_direction = "input-output", direction = defines.direction.south, position = {0, 1.5} },
				{ flow_direction = "input-output", direction = defines.direction.north, position = {0,-1.5} },
			},
			production_type = "input-output",
			filter = "steam",
		},
		fluid_input =
		{
			name = "steam", amount = 0.0, minimum_temperature = 100.0 ,
		},
		maximum_temperature = 500,
        fast_replaceable_group = "steam-engine",
		next_upgrade = "y_steam_turbine_gr",
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-output"
		},
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/steam_turb_h3mc_sheet.png",
			width = 320,
			height = 320,
			frame_count = 10,
			line_length = 5,
			shift = {0.475,-0.95},
			scale = 0.5,
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/steam_turb_v3mc_sheet.png",
			width = 320,
			height = 320,
			frame_count = 10,
			line_length = 5,
			shift = {1.0,-0.25},
			scale = 0.5,
		},
		smoke = {
			{ name = "smoke", north_position = {-1.1, -2.2}, east_position = {1.7, -1}, height = 0.3, deviation = {0.1, 0.1}, frequency = 0.25,
				height_deviation = 0.2,
				starting_vertical_speed = 0.2,
				starting_vertical_speed_deviation = 0.06, },
			{ name = "smoke", north_position = {1.1, -2.2}, east_position = {1.7, 0}, height = 0.3, deviation = {0.1, 0.1}, frequency = 0.25,
				height_deviation = 0.2,
				starting_vertical_speed = 0.2,
				starting_vertical_speed_deviation = 0.06, },
		},
	},

	-- green master-steam-turbine
	{
		type = "recipe",
		name = "y_steam_turbine_gr",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/steam_turbine-n3mc-green_icon.png",
		ingredients = {
			{type="item", name="y-steam-turbine", amount=1},
			{type="item", name="y_greensign", amount=1000},
		},
		results = {
			{type="item", name="y_steam_turbine_gr", amount=1,},
		},
		main_product = "y_steam_turbine_gr",
		enabled = true,
		group = "yuoki-energy",
		subgroup = "y_mastercrafted",
		order="g-b3",
	},
	{
		type = "item",
		name = "y_steam_turbine_gr",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/entity/steam_turbine-n3mc-green_icon.png",
		group = "yuoki-energy",
		subgroup = "y_mastercrafted",
		place_result = "y_steam_turbine_gr",
		stack_size = 20,
		default_request_amount = 5,
	},
	{
		type = "generator",
		name = "y_steam_turbine_gr",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/steam_turbine-n3mc-green_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 0.5, result = "y_steam_turbine_gr"},
		max_health = 400,
		corpse = "big-remnants",
		effectivity = 1.2,
		fluid_usage_per_tick = 1.25,
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		collision_box = {{-1.3, -1.7}, {1.3, 1.7}},
		selection_box = {{-1.5, -2.0}, {1.5, 2.0}},
		fluid_box =
		{
			volume = 200,
			base_area = 3,
			height = 2,
			base_level = -1,
			pipe_connections =
			{
				{ flow_direction = "input-output", direction = defines.direction.south, position = {0, 1.5} },
				{ flow_direction = "input-output", direction = defines.direction.north, position = {0,-1.5} },
			},
			production_type = "input-output",
			filter = "steam",
		},
		fluid_input =
		{
			name = "steam", amount = 0.0, minimum_temperature = 100.0 ,
		},
		maximum_temperature = 265,
        fast_replaceable_group = "steam-engine",
		-- must have same bounding box		next_upgrade = "y-obninsk-turbine",
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-output"
		},
		horizontal_animation =
		{
			filename = "__Yuoki__/graphics/entity/steam_turb_h3gr_sheet.png",
			width = 320,
			height = 320,
			frame_count = 10,
			line_length = 5,
			shift = {0.475,-0.95},
			scale = 0.5,
			animation_speed = 0.75,
		},
		vertical_animation =
		{
			filename = "__Yuoki__/graphics/entity/steam_turb_v3gr_sheet.png",
			width = 320,
			height = 320,
			frame_count = 10,
			line_length = 5,
			shift = {1.0,-0.25},
			scale = 0.5,	
			animation_speed = 0.75,
		},
		smoke = {
			{ name = "smoke", north_position = {-1.1, -2.2}, east_position = {1.7, -1}, height = 0.3, deviation = {0.1, 0.1}, frequency = 0.25,
				height_deviation = 0.2,
				starting_vertical_speed = 0.2,
				starting_vertical_speed_deviation = 0.06, },
			{ name = "smoke", north_position = {1.1, -2.2}, east_position = {1.7, 0}, height = 0.3, deviation = {0.1, 0.1}, frequency = 0.25,
				height_deviation = 0.2,
				starting_vertical_speed = 0.2,
				starting_vertical_speed_deviation = 0.06, },
		},
	},

	-- Mastercrafted-Special Drill
	{
		type = "recipe",
		name = "y_mc_underground_drill",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/mc_digger_icon.png",
		ingredients = {
			{type="item", name="y-underground-drill", amount=1},
			{type="item", name="y_rwtechsign", amount=4000},
		},
		results=
		{
			{type="item", name="y_mc_underground_drill", amount=1, },
			{type="item", name="y-fame", amount=1, },
		},
		main_product="y_mc_underground_drill",
		enabled = true,
		group = "yuoki-energy",
		subgroup = "y_mastercrafted",
		order="g-b2",
	},
	{
		type = "item",
		name = "y_mc_underground_drill",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/mc_digger_icon.png",
		group = "yuoki-energy",
		subgroup = "y_mastercrafted",
		place_result = "y_mc_underground_drill",
		stack_size = 20,
		default_request_amount = 5,
	},
	{
		type = "assembling-machine",
		name = "y_mc_underground_drill",
		minable = {mining_time = 0.5,result = "y_mc_underground_drill"},
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/mc_digger_icon.png",
		flags = {"placeable-neutral","player-creation"},
		max_health = 600,
		--resistances = {{type = "fire",percent = 70}},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		working_sound = { sound = { filename = "__base__/sound/electric-mining-drill.ogg", volume = 0.75 }, apparent_volume = 1.5,},
		graphics_set =
		{
		  animation =
		  {
			layers =
			{
			  {
				filename = "__Yuoki__/graphics/entity/mc_digger_sheet.png",
				priority = "medium",
				width = 256,
				height = 256,
				frame_count = 16,
				line_length =4,
				scale = 0.5,
				shift = {0.5, -0.4}
			  },
			}
		  }
		},
		crafting_categories = {"yuoki-raw-material"},
		crafting_speed = 2,
		energy_source = {type = "electric",input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = { pollution = 2}},
		energy_usage = "400kW",
		ingredient_count = 1,
		module_slots = 2,
		allowed_effects = {"consumption", "speed", "pollution"},
	},

	-- Mastercrafted Washer
	{
		type = "recipe",
		name = "y_mc_dirtwasher",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/mc_washer_icon.png",
		ingredients = {
			{type="item", name="y-dirtwasher", amount=1},
			{type="item", name="y_rwtechsign", amount=2500},
		},
		results = {
			{type="item", name="y_mc_dirtwasher", amount=1,},
		},
		main_product = "y_mc_dirtwasher",
		enabled = true,
		group = "yuoki-energy",
		subgroup = "y_mastercrafted",
		order="g-b2",
	},
	{
		type = "item",
		name = "y_mc_dirtwasher",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/entity/mc_washer_icon.png",
		group = "yuoki-energy",
		subgroup = "y_mastercrafted",
		place_result = "y_mc_dirtwasher",
		stack_size = 20,
		default_request_amount = 5,
	},
	{
		type = "assembling-machine",
		name = "y_mc_dirtwasher",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/mc_washer_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 0.5,result = "y_mc_dirtwasher"},
		max_health = 300,
		--resistances = {{type = "fire",percent = 70}},
		collision_box = {{-1.3,-1.3},{1.3,1.3}},
		selection_box = {{-1.5,-1.5},{1.5,1.5}},
		graphics_set =
		{
		  animation =
		  {
			north =
			{
				filename = "__Yuoki__/graphics/entity/washer_mc_ns_sheet.png",
				priority = "medium", width = 256, height = 256, frame_count = 16, line_length=4, shift = {0.5, -0.25}, animation_speed=0.7, scale=0.5,
			},
			east =
			{
				filename = "__Yuoki__/graphics/entity/washer_mc_we_sheet.png",
				priority = "medium", width = 256, height = 256, frame_count = 16, line_length=4, shift = {0.47, 0}, animation_speed=0.7, scale=0.5,
			},
			south =
			{
				filename = "__Yuoki__/graphics/entity/washer_mc_ns_sheet.png",
				priority = "medium", width = 256, height = 256, frame_count = 16, line_length=4, shift = {0.5, -0.25}, animation_speed=0.7, scale=0.5,
			},
			west =
			{
				filename = "__Yuoki__/graphics/entity/washer_mc_we_sheet.png",
				priority = "medium", width = 256, height = 256, frame_count = 16, line_length=4, shift = {0.47, 0}, animation_speed=0.7, scale=0.5,
			},
		  },
		},
		crafting_categories = {"yuoki-archaeology-wash"},
		crafting_speed = 2,
		energy_source = {type = "electric",input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = { pollution = 2.5 }},
		energy_usage = "500kW",
		ingredient_count = 3,
		fluid_boxes =
		{
			{
				volume = 200,
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				pipe_connections = {
					{ flow_direction="input", direction = defines.direction.north, position = {1, -0.9}},
					{ flow_direction="input", direction = defines.direction.north, position = {-1, -0.9}},
				},
				secondary_draw_orders = { north = -1 }
			},
			{
				volume = 200,
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				pipe_connections = {
					{ flow_direction="output", direction = defines.direction.south, position = {1, 0.9}},
					{ flow_direction="output", direction = defines.direction.south, position = {-1, 0.9}},
				},
				secondary_draw_orders = { north = -1 }
			},
		},	
		fluid_boxes_off_when_no_fluid_recipe = true,
		module_slots = 3,
		allowed_effects = {"consumption", "speed", "pollution", "productivity"},
		fast_replaceable_group = "j-washer",
	},

	-- Mastercrafted Mining Drill
	{
		type = "recipe",
		name = "y_mc_e2_mining_drill",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/mc_miner_icon.png",
		ingredients = {
			{type="item", name="y-mining-drill-e2", amount=1},
			{type="item", name="y_rwtechsign", amount=3500},
			{type="item", name="processing-unit", amount=20}, -- added..
			{type="item", name="y_quantrinum_infused", amount=1}, -- added..
		},
		results=
		{
			{type="item", name="y_mc_e2_mining_drill", amount=1, },
			{type="item", name="y-fame", amount=1, },
		},
		main_product="y_mc_e2_mining_drill",
		enabled = true,
		group = "yuoki-energy",
		subgroup = "y_mastercrafted",
		order="g-b2",
	},
	{
		type = "item",
		name = "y_mc_e2_mining_drill",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/mc_miner_icon.png",
		group = "yuoki-energy",
		subgroup = "y_mastercrafted",
		place_result = "y_mc_e2_mining_drill",
		stack_size = 20,
		default_request_amount = 5,
	},
	{
		type = "mining-drill",
		name = "y_mc_e2_mining_drill",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/mc_miner_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 0.5, result = "y_mc_e2_mining_drill"},
		max_health = 900,
		resource_categories = {"basic-solid"},
		corpse = "big-remnants",
		collision_box = {{ -2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{ -2.5, -2.5}, {2.5, 2.5}},
		working_sound = { sound = { filename = "__base__/sound/electric-mining-drill.ogg", volume = 0.75 }, apparent_volume = 1.5,},
		input_fluid_box =
		{
			volume = 200,
			production_type = "input-output",
			pipe_picture = assembler2pipepictures(),
			pipe_covers = pipecoverspictures(),
			base_area = 1,
			pipe_connections =
			{
				{ direction = defines.direction.west, position = {-2, 0} },
				{ direction = defines.direction.east, position = {2, 0} },
				{ direction = defines.direction.south, position = {0, 2} },
			}
		},
		graphics_set =
		{
		  animation =
		  {
			layers =
			{
			  {
				priority = "extra-high",
				width = 448,
				height = 448,
				line_length = 4,
				shift = {0, -0.5},
				filename = "__Yuoki__/graphics/entity/miners/mc_miner_sheet.png",
				frame_count = 16,
				animation_speed = 0.5,
				scale = 0.5,
			  },
			},
		  },
		},
		mining_speed = 4, -- was 3.5
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = { pollution = 25 }, 	-- was 8	
		},
		energy_usage = "500kW", -- was 400kW
		mining_power = 6,
		resource_drain_rate_percent = 50, -- new, was 0
		resource_searching_radius = 4.49,
		vector_to_place_result = {0, -2.75},
		module_slots = 4, -- was 3
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		radius_visualisation_picture =
		{
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
			width = 12,
			height = 12,
		},
		fast_replaceable_group = "big-mining-drill",
	},

	-- Mastercrafted Boiler	- green
	{
		type = "recipe",
		name = "y_boiler4_mc",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/mc_big_boiler_ig_icon.png",
		ingredients = {
			{type="item", name="y-boiler-iv", amount=1},
			{type="item", name="y_greensign", amount=700},
		},
		results = {
			{type="item", name="y_boiler4_mc", amount=1,},
		},
		main_product = "y_boiler4_mc",
		enabled = true,
		group = "yuoki-energy",
		subgroup = "y_mastercrafted",
		order="h-1",
	},
	{
		type = "item",
		name = "y_boiler4_mc",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/mc_big_boiler_ig_icon.png",
		group = "yuoki-energy",
		subgroup = "y_mastercrafted",
		order = "b[steam-power]-a3",
		place_result = "y_boiler4_mc",
		stack_size = 15,
		default_request_amount = 4,
	},
	{
		type = "boiler",
		name = "y_boiler4_mc",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/mc_big_boiler_ig_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 0.5, result = "y_boiler4_mc"},
		max_health = 400,
		corpse = "small-remnants",
		resistances = { { type = "fire", percent = 80 } },
		fast_replaceable_group = "y-boiler",
		collision_box = {{-1.25, -1.25}, {1.25, 1.25}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		mode = "output-to-separate-pipe",
		target_temperature=265,
		fluid_box =
		{
			volume = 200,
			base_area = 7.5,
			height = 2,
			base_level = -2,
			pipe_connections = {
				{flow_direction = "input-output", direction = defines.direction.east, position = {1, 0}},
				{flow_direction = "input", direction = defines.direction.south, position = {0, 1}},
				{flow_direction = "input-output", direction = defines.direction.west, position = {-1, 0}}
			},
			production_type = "input-output",
			filter = "water",
		},
		output_fluid_box =
		{
			volume = 200,
			base_area = 3,
			height = 2,
			pipe_connections =
			{
				{ flow_direction = "output", direction = defines.direction.north, position = {0, -1}}
			},
			production_type = "output",
			filter = "steam",
		},
		energy_consumption = "7.6MW",
		energy_source =
		{
			type = "burner",
			fuel_categories = {"chemical"},
			effectivity = 0.95,
			fuel_inventory_size = 2,
			fuel_inventory_count = 50,
			emissions_per_minute = { pollution = 21.3 },
			smoke =
			{
				{
					name = "smoke",
					north_position = {-0.75, -2.25},
					deviation = {0.1, 0.1},
					frequency = 20.0
				}
			}
		},
		pictures = {
			north = {
				structure =
				{ filename = "__Yuoki__/graphics/entity/mc_big_boiler.png", priority = "extra-high", width = 256, height = 256, scale=0.5, shift = {0.375, -0.25} },
			},
			east = {
				structure =
				{ filename = "__Yuoki__/graphics/entity/mc_big_boiler.png", priority = "extra-high", width = 256, height = 256, scale=0.5, shift = {0.375, -0.25} }
			},
			south = {
				structure =
				{ filename = "__Yuoki__/graphics/entity/mc_big_boiler.png", priority = "extra-high", width = 256, height = 256, scale=0.5, shift = {0.375, -0.25} }
			},
			west = {
				structure =
				{ filename = "__Yuoki__/graphics/entity/mc_big_boiler.png", priority = "extra-high", width = 256, height = 256, scale=0.5, shift = {0.375, -0.25} }
			}
		},
		fire = {},
		fire_glow = {},
		burning_cooldown = 30,
	},

	-- Mastercrafted Boiler	- tech
	{
		type = "recipe",
		name = "y_boiler4_tech",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/entity/mc_big_boiler_t_icon.png",
		ingredients = {
			{type="item", name="y-boiler-iv", amount=1},
			{type="item", name="y_rwtechsign", amount=900},
		},
		results = {
			{type="item", name="y_boiler4_tech", amount=1,},
		},
		main_product = "y_boiler4_tech",
		enabled = true,
		group = "yuoki-energy",
		subgroup = "y_mastercrafted",
		order = "h-1",
	},
	{
		type = "item",
		name = "y_boiler4_tech",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/mc_big_boiler_t_icon.png",
		group = "yuoki-energy",
		subgroup = "y_mastercrafted",
		order = "b[steam-power]-a4",
		place_result = "y_boiler4_tech",
		stack_size = 15, default_request_amount = 4,
	},
	{
		type = "boiler",
		name = "y_boiler4_tech",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/mc_big_boiler_t_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 0.5, result = "y_boiler4_tech"},
		max_health = 400,
		corpse = "small-remnants",
		resistances = { { type = "fire", percent = 80 } },
		collision_box = {{-1.25, -1.25}, {1.25, 1.25}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		mode = "output-to-separate-pipe",
		target_temperature=500,
		fluid_box =
		{
			volume = 200,
			base_area = 7.5,
			height = 2,
			base_level = -2,
			pipe_connections = {
				{flow_direction = "input-output", direction = defines.direction.east, position = {1, 0}},
				{flow_direction = "input", direction = defines.direction.south, position = {0, 1}},
				{flow_direction = "input-output", direction = defines.direction.west, position = {-1, 0}}
			},
			production_type = "input-output",
			filter = "water",
		},
		output_fluid_box =
		{
			volume = 200,
			base_area = 3,
			height = 2,
			pipe_connections =
			{
				{ flow_direction = "output", direction = defines.direction.north, position = {0, -1}}
			},
			production_type = "output",
			filter = "steam",
		},
		energy_consumption = "8.82MW",
		energy_source =
		{
			type = "burner",
			fuel_categories = {"chemical"},
			effectivity = 0.84,
			fuel_inventory_size = 1,
			fuel_inventory_count = 50,
			emissions_per_minute =  { pollution = 35.4 },
			smoke =
			{
				{
					name = "smoke",
					north_position = {-0.75, -2.25},
					deviation = {0.1, 0.1},
					frequency = 20.0
				}
			}
		},
		pictures = {
			north = {
				structure =
				{ filename = "__Yuoki__/graphics/entity/mc_big_boiler_t.png", priority = "extra-high", width = 256, height = 256, scale=0.5, shift = {0.375, -0.25} },
			},
			east = {
				structure =
				{ filename = "__Yuoki__/graphics/entity/mc_big_boiler_t.png", priority = "extra-high", width = 256, height = 256, scale=0.5, shift = {0.375, -0.25} } 
			},
			south = {
				structure =
				{ filename = "__Yuoki__/graphics/entity/mc_big_boiler_t.png", priority = "extra-high", width = 256, height = 256, scale=0.5, shift = {0.375, -0.25} }
			},
			west = {
				structure =
				{ filename = "__Yuoki__/graphics/entity/mc_big_boiler_t.png", priority = "extra-high", width = 256, height = 256, scale=0.5, shift = {0.375, -0.25} }
			}
		},
		fire = {},
		fire_glow = {},
		burning_cooldown = 30,
		fast_replaceable_group = "y-boiler",
			next_upgrade = "y_boiler4_mc",
	},

})