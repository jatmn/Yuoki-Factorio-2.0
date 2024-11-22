data:extend({

	{
		type = "recipe",
		name = "y_old_bodenlampe",
		enabled = true,
		ingredients = 
		{    
			{type="item", name="stone-brick", amount=1},
			{type="item", name="iron-plate", amount=1},
			{type="item", name="copper-cable", amount=3},				
		},
		group = "yuoki",
		subgroup = "y_lamps_deco",
		results = {{type="item", name="y_old_bodenlampe", amount=1},},	
		--result = "y_old_bodenlampe",
		order = "gf1",
	},
	
	{
		type = "item",
		name = "y_old_bodenlampe",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/gf_lamp1_icon.png",		
		group = "yuoki",
		subgroup = "y-lamps",
		place_result = "y_old_bodenlampe",
		stack_size = 40,
	},

	{
		type = "lamp",
		name = "y_old_bodenlampe",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/gf_lamp1_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 1.5, result = "y_old_bodenlampe"},
		max_health = 50,
		corpse = "small-remnants",
		--collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},		
		energy_source = {type = "electric",input_priority = "secondary",usage_priority = "secondary-input",},				
		energy_usage = "350kW",
		energy_usage_per_tick = "50W",
		light = {intensity = 1.0, size = 50, color = {r=0.8, g=0.9, b=1.0}},
		--light = {intensity = 0.25, size = 10, color = {r=0.0, g=0.35, b=1.0} },
		picture_off =
		{
			filename = "__Yuoki__/graphics/entity/lamps/gf_lamp1_off.png",
			priority = "high",
			width = 64,
			height = 64,
			shift = {0, 0},
			scale= 0.5,
		},
		picture_on =
		{
			filename = "__Yuoki__/graphics/entity/lamps/gf_lamp1_on.png",
			priority = "high",
			width = 64,
			height = 64,			
			shift = {0, 0},
			scale= 0.5,
		},
		circuit_wire_max_distance = 22.5,
		--collision_mask = {"ghost-layer"},
	},	

	{
		type = "recipe",
		name = "y_lampe_neotix",
		enabled = true,
		ingredients = 
		{    
			{type="item", name="stone-brick", amount=1},
			{type="item", name="iron-plate", amount=1},
			{type="item", name="copper-cable", amount=3},				
		},
		group = "yuoki",
		subgroup = "y_lamps_deco",	
		results = {{type="item", name="y_lampe_neotix", amount=1},},
		--result = "y_lampe_neotix",
		order = "gf2",
	},
	
	{
		type = "item",
		name = "y_lampe_neotix",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/gf_lamp2(N)_icon.png",		
		group = "yuoki",
		subgroup = "y-lamps",
		place_result = "y_lampe_neotix",
		stack_size = 40,
	},

	{
		type = "lamp",
		name = "y_lampe_neotix",
		 icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/gf_lamp2(N)_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 1.5, result = "y_lampe_neotix"},
		max_health = 50,
		corpse = "small-remnants",
		--collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},		
		energy_source = {type = "electric",input_priority = "secondary",usage_priority = "secondary-input",},				
		energy_usage_per_tick = "10W",
		light = {intensity = 1.0, size = 50, color = {r=1.0, g=1.0, b=1.0}},
		--light = {intensity = 0.25, size = 10, color = {r=0.0, g=0.75, b=1.0} },
		picture_off =
		{
			filename = "__Yuoki__/graphics/entity/lamps/gf_lamp2(N)_off.png",
			priority = "high",
			width = 64,
			height = 64,
			shift = {0, 0},
			scale= 0.5,
		},
		picture_on =
		{
			filename = "__Yuoki__/graphics/entity/lamps/gf_lamp2(N)_on.png",
			priority = "high",
			width = 64,
			height = 64,			
			shift = {0, 0},
			scale= 0.5,
		},
		circuit_wire_max_distance = 22.5,
		--collision_mask = {"ghost-layer"},
	},	

	{
		type = "recipe",
		name = "y_lampe_yuoki",
		enabled = true,
		ingredients = 
		{    
			{type="item", name="stone-brick", amount=1},
			{type="item", name="iron-plate", amount=1},
			{type="item", name="copper-cable", amount=3},				
		},
		group = "yuoki",
		subgroup = "y_lamps_deco",	
		results = {{type="item", name="y_lampe_yuoki", amount=1},},
		--result = "y_lampe_yuoki",
		order = "gf3",
	},	
	{
		type = "item",
		name = "y_lampe_yuoki",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/gf_lamp3_icon.png",		
		group = "yuoki",
		subgroup = "y-lamps",
		place_result = "y_lampe_yuoki",
		stack_size = 40,
	},
	{
		type = "lamp",
		name = "y_lampe_yuoki",
		 icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/gf_lamp3_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 1.5, result = "y_lampe_yuoki"},
		max_health = 50,
		corpse = "small-remnants",
		--collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},		
		energy_source = {type = "electric",input_priority = "secondary",usage_priority = "secondary-input",},				
		--energy_source = {type = "burner", effectivity = 0.95,fuel_inventory_size = 1,emissions = 0,},				
		energy_usage_per_tick = "10W",
		light = {intensity = 1.0, size = 50, color = {r=1.0, g=0.95, b=0.8}},
		--light = {intensity = 0.25, size = 10, color = {r=1.0, g=0.98, b=0.4} },
		picture_off =
		{
			filename = "__Yuoki__/graphics/entity/lamps/gf_lamp3_off.png",
			priority = "high",
			width = 64,
			height = 64,
			shift = {0, 0},
			scale= 0.5,
		},
		picture_on =
		{
			filename = "__Yuoki__/graphics/entity/lamps/gf_lamp3_on.png",
			priority = "high",
			width = 64,
			height = 64,			
			shift = {0, 0},
			scale= 0.5,
		},
		circuit_wire_max_distance = 22.5,		
	},	

	{
		type = "recipe",
		name = "y_lampe_corner",
		energy_required=2.0, enabled = true,
		ingredients = 
		{    
			{type="item", name="stone-brick", amount=4},
			{type="item", name="y_structure_electric", amount=1},				
			{type="item", name="y-raw-fuelnium", amount=1},			
		},
		group = "yuoki",
		subgroup = "y_lamps_deco",
		results = {{type="item", name="y_lampe_corner", amount=1},},	
		--result = "y_lampe_corner",
		order = "gf5",
	},	
	{
		type = "item",
		name = "y_lampe_corner",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/gf_lamp_corner_icon.png",		
		group = "yuoki",
		subgroup = "y-lamps",
		place_result = "y_lampe_corner",
		stack_size = 40,
	},

	{
		type = "lamp",
		name = "y_lampe_corner",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/gf_lamp_corner_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 1.5, result = "y_lampe_corner"},
		max_health = 150,
		corpse = "small-remnants",
		--collision_box = {{-0.0, -0.0}, {0.0, 0.0}},
		selection_box = {{-1.0, -0.0}, {0.0, 1.0}},		
		energy_source = {type = "electric",input_priority = "secondary",usage_priority = "secondary-input",},				
		--energy_source = {type = "burner", effectivity = 0.95,fuel_inventory_size = 1,emissions = 0,},				
		energy_usage_per_tick = "25kW",
		light = {intensity = 1.0, size = 75, color = {r=1.0, g=0.95, b=0.8}},
		--light = {intensity = 0.25, size = 10, color = {r=1.0, g=0.98, b=0.4} },
		picture_off =
		{
			filename = "__Yuoki__/graphics/entity/lamps/gf_lamp_corner_off.png",
			priority = "high",
			width = 64,
			height = 64,
			shift = {-0.5, 0.5},
			scale= 0.5,
		},
		picture_on =
		{
			filename = "__Yuoki__/graphics/entity/lamps/gf_lamp_corner_on.png",
			priority = "high",
			width = 64,
			height = 64,
			shift = {-0.5, 0.5},
			scale= 0.5,
		},
		circuit_wire_max_distance = 22.5,	
		render_layer = "floor",			
	},	
	
	
	{
		type = "recipe",
		name = "y_lampe_44basement_a",
		energy_required=2.0, enabled = true,
		ingredients = 
		{    
			{type="item", name="stone-brick", amount=6},
			{type="item", name="y_structure_electric", amount=1},				
			{type="item", name="y-raw-fuelnium", amount=1},			
		},
		group = "yuoki",
		subgroup = "y_lamps_deco",	
		--result = "y_lampe_44basement_a",
		results = {{type="item", name="y_lampe_44basement_a", amount=1},},
		order = "gf6",
	},	
	{
		type = "item",
		name = "y_lampe_44basement_a",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_4x4_lamp_icon.png",		
		group = "yuoki",
		subgroup = "y-lamps",
		place_result = "y_lampe_44basement_a",
		stack_size = 40,
	},
	{
		type = "lamp",
		name = "y_lampe_44basement_a",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_4x4_lamp_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 1.5, result = "y_lampe_44basement_a"},
		max_health = 150,
		corpse = "small-remnants",
		--collision_box = {{-0.0, -0.1}, {0.0, 0.1}},		
		selection_box = {{-1.5, -0.5}, {1.5, 2.5}},	
		drawing_box = {{-1.5, -0}, {1.5, 2.5}},			
		energy_source = {type = "electric",input_priority = "secondary",usage_priority = "secondary-input",},				
		--energy_source = {type = "burner", effectivity = 0.95,fuel_inventory_size = 1,emissions = 0,},				
		energy_usage_per_tick = "25kW",
		light = {intensity = 1.0, size = 100},
		--light = {intensity = 0.25, size = 10, color = {r=1.0, g=0.98, b=0.4} },
		picture_off =
		{
			filename = "__Yuoki__/graphics/entity/lamps/base_4x4_lamp_off.png",
			priority = "high",
			width = 256,
			height = 256,
			shift = {0, 2},
			scale= 0.5,
		},
		picture_on =
		{
			filename = "__Yuoki__/graphics/entity/lamps/base_4x4_lamp_on.png",
			priority = "high",
			width = 256,
			height = 256,			
			shift = {0, 2},
			scale= 0.5,
		},
		circuit_wire_max_distance = 22.5,	
		--render_layer = "floor",			
	},	
	
	{
		type = "recipe",
		name = "y_lampe_44basement_b",
		energy_required=2.0, enabled = true,
		ingredients = 
		{    
			{type="item", name="stone-brick", amount=10},
			{type="item", name="y_structure_electric", amount=3},				
			{type="item", name="y-powerlamp", amount=4},			
		},
		group = "yuoki",
		subgroup = "y_lamps_deco",	
		results = {{type="item", name="y_lampe_44basement_b", amount=1},},
		--result = "y_lampe_44basement_b",
		order = "gf7",
	},	
	{
		type = "item",
		name = "y_lampe_44basement_b",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_4x4_corner_lamps_icon.png",		
		group = "yuoki",
		subgroup = "y-lamps",
		place_result = "y_lampe_44basement_b",
		stack_size = 40,
	},

	{
		type = "lamp",
		name = "y_lampe_44basement_b",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_4x4_corner_lamps_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 1.5, result = "y_lampe_44basement_b"},
		max_health = 150,
		corpse = "small-remnants",
		--scollision_box = {{-0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{-1.0, 0.0}, {1.0, 2.0}},		
		energy_source = {type = "electric",input_priority = "secondary",usage_priority = "secondary-input",},				
		--energy_source = {type = "burner", effectivity = 0.95,fuel_inventory_size = 1,emissions = 0,},				
		energy_usage_per_tick = "25kW",
		light = {intensity = 1.0, size = 150},
		--light = {intensity = 0.25, size = 10, color = {r=1.0, g=0.98, b=0.4} },
		picture_off =
		{
			filename = "__Yuoki__/graphics/entity/lamps/base_4x4_corner_lamps_off.png",
			priority = "high",
			width = 256,
			height = 256,
			shift = {0, 2},
			scale= 0.5,
		},
		picture_on =
		{
			filename = "__Yuoki__/graphics/entity/lamps/base_4x4_corner_lamps_on.png",
			priority = "high",
			width = 256,
			height = 256,			
			shift = {0, 2},
			scale= 0.5,
		},
		circuit_wire_max_distance = 22.5,	
		render_layer = "floor",			
	},	

	{
		type = "recipe",
		name = "y_lampe_66basement",
		energy_required=2.0, enabled = true,
		ingredients = 
		{    
			{type="item", name="stone-brick", amount=18},
			{type="item", name="y_structure_electric", amount=4},				
			{type="item", name="y-powerlamp", amount=4},			
		},
		group = "yuoki",
		subgroup = "y_lamps_deco",	
		results = {{type="item", name="y_lampe_66basement", amount=1},},
		--result = "y_lampe_66basement",
		order = "gf8",
	},	
	{
		type = "item",
		name = "y_lampe_66basement",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_6x6_lamps_icon.png",		
		group = "yuoki",
		subgroup = "y-lamps",
		place_result = "y_lampe_66basement",
		stack_size = 40,
	},

	{
		type = "lamp",
		name = "y_lampe_66basement",
		 icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_6x6_lamps_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 1.5, result = "y_lampe_66basement"},
		max_health = 150,
		corpse = "small-remnants",
		--scollision_box = {{-0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{-1.5, 0.0}, {1.5, 3.0}},		
		energy_source = {type = "electric",input_priority = "secondary",usage_priority = "secondary-input",},				
		--energy_source = {type = "burner", effectivity = 0.95,fuel_inventory_size = 1,emissions = 0,},				
		energy_usage_per_tick = "100kW",
		light = {intensity = 1.0, size = 180},
		--light = {intensity = 0.25, size = 10, color = {r=1.0, g=0.98, b=0.4} },
		picture_off =
		{
			filename = "__Yuoki__/graphics/entity/lamps/base_6x6_lamps_off.png",
			priority = "high",
			width = 384,
			height = 384,
			shift = {0, 3},
			scale= 0.5,
		},
		picture_on =
		{
			filename = "__Yuoki__/graphics/entity/lamps/base_6x6_lamps_on.png",
			priority = "high",
			width = 384,
			height = 384,			
			shift = {0, 3},
			scale= 0.5,
		},
		circuit_wire_max_distance = 22.5,	
		render_layer = "floor",			
	},	


	
	
})	