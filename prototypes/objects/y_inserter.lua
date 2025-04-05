data:extend(
{

	-- fast yuoki-inserter
	{
		type = "recipe",
		name = "y-inserter-fast",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/inserters/y_smart_ins_icon.png",
		enabled = true,
		ingredients =
		{
			{type="item", name="y_structure_element", amount=3},
			{type="item", name="y-raw-fuelnium", amount=1},
			{type="item", name="y-chip-1", amount=1},
		},
		results=
		{
			{type="item", name="y-inserter-fast", amount=1, },
			{type="item", name="y_rwtechsign", amount=1, },
		},
		main_product="y-inserter-fast",
		subgroup = "j-y-logi-1",
		order = "a",
	},
	{
		type = "item",
		name = "y-inserter-fast",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/inserters/y_smart_ins_icon.png",
		group = "yuoki",
		subgroup = "j-y-logi-1",
		order = "a",
		place_result = "y-inserter-fast",
		stack_size = 50,
	},
	{
		type = "inserter",
		name = "y-inserter-fast",
		stack = true,
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/inserters/y_smart_ins_icon.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = { mining_time = 0.5, result = "y-inserter-fast"},
		max_health = 150,
		filter_count = 5,
		corpse = "small-remnants",
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {0, 1.2},
		energy_per_movement = "6kJ",
		energy_per_rotation = "6kJ",
		extension_speed = 0.1,
		rotation_speed = 0.1,
		hand_size = 1.5,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.75kW"
		},
		fast_replaceable_group = "inserter",
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-long-handed-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-5.ogg",
					volume = 0.75
				}
			}
		},
		hand_base_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/yi_whi_hb.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/yi_white_ihc.png",
			priority = "extra-high",
			width = 18,
			height = 41,
			shift = {-0.0625, 0},
		},
		hand_open_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/yi_white_ihc.png",
			priority = "extra-high",
			width = 18,
			height = 41,
			shift = {-0.0625, 0},
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 33
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet={
				priority = "extra-high",
				width = 48,
				height = 48,
				shift = {0.225, 0.1},
				filename = "__Yuoki__/graphics/entity/inserters/w_insbase.png"
			}
		},
		circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
		circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
		circuit_wire_max_distance = 22.5,
	},


	-- long yuoki-inserter
	{
		type = "recipe",
		name = "y-inserter-s4",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/entity/inserters/ins_red_icon.png",
		enabled = true,
		ingredients =
		{
			{type="item", name="y_structure_element", amount=3},
			{type="item", name="y-inserter-fast", amount=1},
		},
		results=
		{
			{type="item", name="y-inserter-s4", amount=1, },
			{type="item", name="y_rwtechsign", amount=1, },
		},
		main_product="y-inserter-s4",
		order = "c",
		subgroup = "j-y-logi-1",
	},
	{
		type = "item",
		name = "y-inserter-s4",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/inserters/ins_red_icon.png",
		group = "yuoki",
		subgroup = "j-y-logi-1",
		order = "c",
		place_result = "y-inserter-s4",
		stack_size = 50,
	},
	{
		type = "inserter",
		name = "y-inserter-s4",
		stack = true,
		icon_size = 64,
		icon =  "__Yuoki__/graphics/entity/inserters/ins_red_icon.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y-inserter-s4"},
		max_health = 150,
		filter_count = 5,
		corpse = "small-remnants",
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {0, 4.2},
		energy_per_movement = "6kJ",
		energy_per_rotation = "6kJ",
		rotation_speed = 0.02,
		hand_size = 1.5,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.7kW"
		},
		extension_speed = 0.12,
		fast_replaceable_group = "inserter",
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-long-handed-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-long-handed-5.ogg",
					volume = 0.75
				}
			}
		},
		hand_base_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/yi_long_ins_base.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/yi_long_ins_closed.png",
			priority = "extra-high",
			width = 18,
			height = 41,
			shift = {-0.0625, 0},
		},
		hand_open_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/yi_long_ins_closed.png",
			priority = "extra-high",
			width = 18,
			height = 41,
			shift = {-0.0625, 0},
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 33
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet={
				priority = "extra-high",
				width = 48,
				height = 48,
				shift = {0.225, 0},
				filename = "__Yuoki__/graphics/entity/inserters/lng_ins_sheet.png"
			}
		},
		circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
		circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
		circuit_wire_max_distance = 22.5,
	},

	-- smart yuoki-inserter
	{
		type = "recipe",
		name = "y-inserter-smart",
		enabled = true,
		ingredients =
		{
			{type="item", name="y-inserter-fast", amount=1},
			{type="item", name="y-chip-2", amount=1},
		},
		results = {
			{type="item", name="y-inserter-smart", amount=1},
		},
		main_product = "y-inserter-smart",
		subgroup = "j-y-logi-1",
		order = "b",
	},
	{
		type = "item",
		name = "y-inserter-smart",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/inserters/ins_cyan_icon.png",
		group = "yuoki",
		subgroup = "j-y-logi-1",
		order = "b",
		place_result = "y-inserter-smart",
		stack_size = 50,
	},

	{
		type = "inserter",
		name = "y-inserter-smart",
		stack = true,
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/inserters/ins_cyan_icon.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y-inserter-smart"},
		max_health = 150,
		filter_count = 5,
		corpse = "small-remnants",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -1},
		insert_position = {0, 1.2},
		energy_per_movement = "6.5kJ",
		energy_per_rotation = "6.5kJ",
		rotation_speed = 0.10,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.8kW"
		},
		extension_speed = 0.1,
		fast_replaceable_group = "inserter",
		hand_base_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/yi_fast_inserter_hand_base.png",
			priority = "extra-high",
			width = 8,
			height = 34
		},
		hand_closed_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/yi_fast_inserter_hand_closed.png",
			priority = "extra-high",
			width = 18,
			height = 41,
			shift = {-0.0625, 0},
		},
		hand_open_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/yi_fast_inserter_hand_closed.png",
			priority = "extra-high",
			width = 18,
			height = 41,
			shift = {-0.0625, 0},
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 33
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet={
				priority = "extra-high",
				width = 48,
				height = 48,
				shift = {0.225, 0.1},
				filename = "__Yuoki__/graphics/entity/inserters/yi_fast_sheet.png"
			}
		},
		programmable = true,
		uses_arm_movement = "basic-inserter",
		circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
		circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
		circuit_wire_max_distance = 22.5,
		uses_arm_movement = "basic-inserter",
	},

	-- smart long yuoki-inserter
	{
		type = "recipe",
		name = "y-inserter-smart-long",
		enabled = true,
		ingredients =
		{
			{type="item", name="y_structure_element", amount=3},
			{type="item", name="y-inserter-smart", amount=1},
		},
		results = {
			{type="item", name="y-inserter-smart-long", amount=1},
		},
		main_product = "y-inserter-smart-long",
		subgroup = "j-y-logi-1",
		order = "c",
	},

	{
		type = "item",
		name = "y-inserter-smart-long",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/inserters/inserter_long_smart.png",
		group = "yuoki",
		subgroup = "j-y-logi-1",
		order = "c",
		place_result = "y-inserter-smart-long",
		stack_size = 50,
	},

	{
		type = "inserter",
		name = "y-inserter-smart-long",
		stack = true,
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/inserters/inserter_long_smart.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y-inserter-smart-long"},
		max_health = 150,
		filter_count = 5,
		corpse = "small-remnants",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {0, -2},
		insert_position = {0, 2.2},
		energy_per_movement = "6.5kJ",
		energy_per_rotation = "6.5kJ",
		rotation_speed = 0.08,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.8kW"
		},
		extension_speed = 0.1,
		fast_replaceable_group = "inserter",
		hand_base_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/longsmart-base-s.png",
			priority = "extra-high",
			width = 12,
			height = 34
		},
		hand_closed_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/longsmart-hand-s.png",
			priority = "extra-high",
			width = 18,
			height = 41,
			shift = {-0.0625, 0},
		},
		hand_open_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/longsmart-hand-s.png",
			priority = "extra-high",
			width = 18,
			height = 41,
			shift = {-0.0625, 0},
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 33
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet={
				priority = "extra-high",
				width = 48,
				height = 48,
				shift = {0.225, 0.1},
				filename = "__Yuoki__/graphics/entity/inserters/limegreen_base.png"
			}
		},
		programmable = true,
		uses_arm_movement = "basic-inserter",
		circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
		circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
		circuit_wire_max_distance = 22.5,
	},

	-- smart yuoki-inserter R2
	{
		type = "recipe",
		name = "y_inserter_smart_rightR2",
		enabled = true,
		ingredients =
		{
			{type="item", name="y-inserter-smart", amount=1},
			{type="item", name="y-conductive-wire-1", amount=2},
			{type="item", name="y_rwtechsign", amount=1},
		},
		results = {
			{type="item", name="y_inserter_smart_rightR2", amount=1},
		},
		main_product = "y_inserter_smart_rightR2",
		subgroup = "j-y-logi-2",
		order = "b",
	},
	{
		type = "item",
		name = "y_inserter_smart_rightR2",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/inserters/special_ins_rights_icon.png",
		group = "yuoki",
		subgroup = "j-y-logi-2",
		order = "b",
		place_result = "y_inserter_smart_rightR2",
		stack_size = 50,
	},
	{
		type = "inserter",
		name = "y_inserter_smart_rightR2",
		stack = true,
		icon_size = 64,
		icon =  "__Yuoki__/graphics/entity/inserters/special_ins_rights_icon.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y_inserter_smart_rightR2"},
		max_health = 150,
		filter_count = 5,
		corpse = "small-remnants",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {   0, -1},
		insert_position = {-1.2, 1.2},
		energy_per_movement = "6.5kJ",
		energy_per_rotation = "6.5kJ",
		rotation_speed = 0.08,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.8kW"
		},
		extension_speed = 0.1,
		fast_replaceable_group = "inserter",
		hand_base_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special-base.png",
			priority = "extra-high",
			width = 12,
			height = 34
		},
		hand_closed_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special_ihc.png",
			priority = "extra-high",
			width = 18,
			height = 41,
			shift = {-0.0625, 0},
		},
		hand_open_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special_ihc.png",
			priority = "extra-high",
			width = 18,
			height = 41,
			shift = {-0.0625, 0},
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 33
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet={
				priority = "extra-high",
				width = 48,
				height = 48,
				shift = {0.225, 0.1},
				filename = "__Yuoki__/graphics/entity/inserters/special_ins_sheet.png"
			}
		},
		programmable = true,
		uses_arm_movement = "basic-inserter",
		circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
		circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
		circuit_wire_max_distance = 22.5,
	},

	-- smart yuoki-inserter L2
	{
		type = "recipe",
		name = "y_inserter_smart_leftR2",
		enabled = true,
		ingredients =
		{
			{type="item", name="y-inserter-smart", amount=1},
			{type="item", name="y-conductive-wire-1", amount=2},
			{type="item", name="y_rwtechsign", amount=1},
		},
		results = {
			{type="item", name="y_inserter_smart_leftR2", amount=1},
		},
		main_product = "y_inserter_smart_leftR2",
		subgroup = "j-y-logi-2",
		order = "a",
	},
	{
		type = "item",
		name = "y_inserter_smart_leftR2",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/inserters/special_ins_lefts_icon.png",
		group = "yuoki",
		subgroup = "j-y-logi-2",
		order = "a",
		place_result = "y_inserter_smart_leftR2",
		stack_size = 50,
	},
	{
		type = "inserter",
		name = "y_inserter_smart_leftR2",
		stack = true,
		icon_size = 64,
		icon =  "__Yuoki__/graphics/entity/inserters/special_ins_lefts_icon.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y_inserter_smart_leftR2"},
		max_health = 150,
		filter_count = 5,
		corpse = "small-remnants",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {   0, -1},
		insert_position = { 1.2, 1.2},
		energy_per_movement = "6.5kJ",
		energy_per_rotation = "6.5kJ",
		rotation_speed = 0.08,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.8kW"
		},
		extension_speed = 0.1,
		fast_replaceable_group = "inserter",
		hand_base_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special-base.png",
			priority = "extra-high",
			width = 12,
			height = 34
		},
		hand_closed_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special_ihc.png",
			priority = "extra-high",
			width = 18,
			height = 41,
			shift = {-0.0625, 0},
		},
		hand_open_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special_ihc.png",
			priority = "extra-high",
			width = 18,
			height = 41,
			shift = {-0.0625, 0},
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 33
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet={
				priority = "extra-high",
				width = 48,
				height = 48,
				shift = {0.225, 0.1},
				filename = "__Yuoki__/graphics/entity/inserters/special_ins_sheet.png"
			}
		},
		programmable = true,
		uses_arm_movement = "basic-inserter",
		circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
		circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
		circuit_wire_max_distance = 22.5,
	},

	-- smart yuoki-inserter RR
	{
		type = "recipe",
		name = "y_inserter_smart_RR",
		enabled = true,
		ingredients =
		{
			{type="item", name="y-inserter-smart", amount=1},
			{type="item", name="y-conductive-wire-1", amount=2},
			{type="item", name="y_rwtechsign", amount=1},
		},
		results = {
			{type="item", name="y_inserter_smart_RR", amount=1},
		},
		main_product = "y_inserter_smart_RR",
		subgroup = "j-y-logi-2",
		order = "c",
	},
	{
		type = "item",
		name = "y_inserter_smart_RR",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/entity/inserters/special_ins_right_icon.png",
		group = "yuoki",
		subgroup = "j-y-logi-2",
		order = "c",
		place_result = "y_inserter_smart_RR",
		stack_size = 50,
	},
	{
		type = "inserter",
		name = "y_inserter_smart_RR",
		stack = true,
		icon_size = 64,
		icon =  "__Yuoki__/graphics/entity/inserters/special_ins_right_icon.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y_inserter_smart_RR"},
		max_health = 150,
		filter_count = 5,
		corpse = "small-remnants",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {   0, -1},
		insert_position = {-1.2, 0},
		energy_per_movement = "6.5kJ",
		energy_per_rotation = "6.5kJ",
		rotation_speed = 0.08,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.8kW"
		},
		extension_speed = 0.1,
		fast_replaceable_group = "inserter",
		hand_base_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special-base.png",
			priority = "extra-high",
			width = 12,
			height = 34
		},
		hand_closed_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special_ihc_2.png",
			priority = "extra-high",
			width = 18,
			height = 41,
			shift = {-0.0625, 0},
		},
		hand_open_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special_ihc_2.png",
			priority = "extra-high",
			width = 18,
			height = 41,
			shift = {-0.0625, 0},
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 33
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet={
				priority = "extra-high",
				width = 48,
				height = 48,
				shift = {0.225, 0.1},
				filename = "__Yuoki__/graphics/entity/inserters/special_ins_sheet.png"
			}
		},
		programmable = true,
		uses_arm_movement = "basic-inserter",
		circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
		circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
		circuit_wire_max_distance = 22.5,
	},

	-- smart yuoki-inserter LL
	{
		type = "recipe",
		name = "y_inserter_smart_LL",
		enabled = true,
		ingredients =
		{
			{type="item", name="y-inserter-smart", amount=1},
			{type="item", name="y-conductive-wire-1", amount=2},
			{type="item", name="y_rwtechsign", amount=1},
		},
		results = {
			{type="item", name="y_inserter_smart_LL", amount=1},
		},
		main_product = "y_inserter_smart_LL",
		subgroup = "j-y-logi-2",
		order = "d",
	},
	{
		type = "item",
		name = "y_inserter_smart_LL",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/inserters/special_ins_left_icon.png",
		group = "yuoki",
		subgroup = "j-y-logi-2",
		order = "d",
		place_result = "y_inserter_smart_LL",
		stack_size = 50,
	},
	{
		type = "inserter",
		name = "y_inserter_smart_LL",
		stack = true,
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/inserters/special_ins_left_icon.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y_inserter_smart_LL"},
		max_health = 150,
		filter_count = 5,
		corpse = "small-remnants",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = {   0, -1},
		insert_position = { 1.2, 0},
		energy_per_movement = "6.5kJ",
		energy_per_rotation = "6.5kJ",
		rotation_speed = 0.08,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0.8kW"
		},
		extension_speed = 0.1,
		fast_replaceable_group = "inserter",
		hand_base_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special-base.png",
			priority = "extra-high",
			width = 12,
			height = 34
		},
		hand_closed_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special_ihc_2.png",
			priority = "extra-high",
			width = 18,
			height = 41,
			shift = {-0.0625, 0},
		},
		hand_open_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special_ihc_2.png",
			priority = "extra-high",
			width = 18,
			height = 41,
			shift = {-0.0625, 0},
		},
		hand_base_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
			priority = "extra-high",
			width = 8,
			height = 33
		},
		hand_closed_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		hand_open_shadow =
		{
			filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
			priority = "extra-high",
			width = 18,
			height = 41
		},
		platform_picture =
		{
			sheet={
				priority = "extra-high",
				width = 48,
				height = 48,
				shift = {0.225, 0.1},
				filename = "__Yuoki__/graphics/entity/inserters/special_ins_sheet.png"
			}
		},
		programmable = true,
		uses_arm_movement = "basic-inserter",
		circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
		circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
		circuit_wire_max_distance = 22.5,
	},

})