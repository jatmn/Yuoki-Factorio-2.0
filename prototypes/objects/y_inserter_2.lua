data:extend(
{


	-- smart yuoki-inserter L2
	{
		type = "recipe",
		name = "y_inserter_diagonal",
		enabled = true,
		ingredients =
		{			
			{type="item", name="y-inserter-smart", amount=1},      
			--{type="item", name="green-wire", amount=2},      
			--{type="item", name="red-wire", amount=2},     
			{type="item", name="y-conductive-wire-1", amount=4},
			{type="item", name="y_rwtechsign", amount=1},      			
		},
		results = {{type="item", name="y_inserter_diagonal", amount=1},},
		subgroup = "j-y-logi-2",
		order = "e",
	},

	{
		type = "item",
		name = "y_inserter_diagonal",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/inserters/ins_diagonal.png",		
		group = "yuoki",		
		subgroup = "j-y-logi-2",
		order = "e",
		place_result = "y_inserter_diagonal",
		stack_size = 50,
	},
	
	{
		type = "inserter",
		name = "y_inserter_diagonal",
		stack = true,
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/inserters/ins_diagonal.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y_inserter_diagonal"},
		max_health = 150,
		filter_count = 5,
		corpse = "small-remnants",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound = {
				{ filename = "__base__/sound/inserter-fast-1.ogg", volume = 0.75 },
				{ filename = "__base__/sound/inserter-fast-2.ogg", volume = 0.75 },
				{ filename = "__base__/sound/inserter-fast-3.ogg", volume = 0.75 },
				{ filename = "__base__/sound/inserter-fast-4.ogg", volume = 0.75 },
				{ filename = "__base__/sound/inserter-fast-5.ogg", volume = 0.75 }
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = { -1.2, -1},
		insert_position = { 1.2, 1.2},
		energy_per_movement = "6.5kJ",
		energy_per_rotation = "6.5kJ",
		rotation_speed = 0.08,
		energy_source = { type = "electric", usage_priority = "secondary-input", drain = "0.9kW" },
		extension_speed = 0.1,		
		fast_replaceable_group = "inserter",
		hand_base_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special_base_3.png",
			priority = "extra-high",
			width = 12,
			height = 34,
		},
		hand_closed_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special_ihc_3.png",
			priority = "extra-high",
			width = 18,
			height = 41,
			shift = {-0.0625, 0},
		},
		hand_open_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special_ihc_3.png",
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
		circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
		circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,  
		circuit_wire_max_distance = 22.5,		
	},	

	-- smart yuoki-inserter evade inserter 
	{
		type = "recipe",
		name = "y_inserter_evade_shortR",
		enabled = true,
		ingredients =
		{			
			{type="item", name="y-inserter-smart", amount=1},      
			{type="item", name="copper-cable", amount=4},     
			{type="item", name="y_rwtechsign", amount=1},      			
		},
		results = {{type="item", name="y_inserter_evade_shortR", amount=1},},
		subgroup = "j-y-logi-2",
		order = "f",
	},

	{
		type = "item",
		name = "y_inserter_evade_shortR",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/inserters/ins_evade_right_icon.png",		
		group = "yuoki",
		subgroup = "j-y-logi-2",
		order = "f",
		place_result = "y_inserter_evade_shortR",
		stack_size = 50,
	},
	
	{
		type = "inserter",
		name = "y_inserter_evade_shortR",
		stack = true,
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/inserters/ins_evade_right_icon.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y_inserter_evade_shortR"},
		max_health = 150,
		filter_count = 5,
		corpse = "small-remnants",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound = {
				{ filename = "__base__/sound/inserter-fast-1.ogg", volume = 0.75 },
				{ filename = "__base__/sound/inserter-fast-2.ogg", volume = 0.75 },
				{ filename = "__base__/sound/inserter-fast-3.ogg", volume = 0.75 },
				{ filename = "__base__/sound/inserter-fast-4.ogg", volume = 0.75 },
				{ filename = "__base__/sound/inserter-fast-5.ogg", volume = 0.75 }
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = { 1.2, -1},
		insert_position = { 1.2, 1.2},
		energy_per_movement = "6.5kJ",
		energy_per_rotation = "6.5kJ",
		rotation_speed = 0.08,
		energy_source = { type = "electric", usage_priority = "secondary-input", drain = "0.9kW" },
		extension_speed = 0.1,		
		fast_replaceable_group = "inserter",
		hand_base_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special_base_3.png",
			priority = "extra-high",
			width = 12,
			height = 34,
		},
		hand_closed_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special_ihc_3.png",
			priority = "extra-high",
			width = 18,
			height = 41,
			shift = {-0.0625, 0},
		},
		hand_open_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special_ihc_3.png",
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
		circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
		circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,  
		circuit_wire_max_distance = 22.5,		
	},	
	-- smart yuoki-inserter evade inserter 
	{
		type = "recipe",
		name = "y_inserter_evade_shortL",
		enabled = true,
		ingredients =
		{			
			{type="item", name="y-inserter-smart", amount=1},      
			{type="item", name="copper-cable", amount=4},     
			{type="item", name="y_rwtechsign", amount=1},      			
		},
		results = {{type="item", name="y_inserter_evade_shortL", amount=1},},
		subgroup = "j-y-logi-2",
		order = "g",
	},

	{
		type = "item",
		name = "y_inserter_evade_shortL",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/inserters/ins_evade_left_icon.png",		
		group = "yuoki",		
		subgroup = "j-y-logi-2",
		order = "g",
		place_result = "y_inserter_evade_shortL",
		stack_size = 50,
	},
	
	{
		type = "inserter",
		name = "y_inserter_evade_shortL",
		stack = true,
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/inserters/ins_evade_left_icon.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y_inserter_evade_shortL"},
		max_health = 150,
		filter_count = 5,
		corpse = "small-remnants",
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			match_progress_to_activity = true,
			sound = {
				{ filename = "__base__/sound/inserter-fast-1.ogg", volume = 0.75 },
				{ filename = "__base__/sound/inserter-fast-2.ogg", volume = 0.75 },
				{ filename = "__base__/sound/inserter-fast-3.ogg", volume = 0.75 },
				{ filename = "__base__/sound/inserter-fast-4.ogg", volume = 0.75 },
				{ filename = "__base__/sound/inserter-fast-5.ogg", volume = 0.75 }
			}
		},
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
		pickup_position = { -1.2, -1},
		insert_position = { -1.2, 1.2},
		energy_per_movement = "6.5kJ",
		energy_per_rotation = "6.5kJ",
		rotation_speed = 0.08,
		energy_source = { type = "electric", usage_priority = "secondary-input", drain = "0.9kW" },
		extension_speed = 0.1,		
		fast_replaceable_group = "inserter",
		hand_base_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special_base_3.png",
			priority = "extra-high",
			width = 12,
			height = 34,
		},
		hand_closed_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special_ihc_3.png",
			priority = "extra-high",
			width = 18,
			height = 41,
			shift = {-0.0625, 0},
		},
		hand_open_picture =
		{
			filename = "__Yuoki__/graphics/entity/inserters/special_ihc_3.png",
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
		circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
		circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,  
		circuit_wire_max_distance = 22.5,		
	},	
	
	
})