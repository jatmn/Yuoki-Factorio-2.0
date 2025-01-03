data:extend(
{


	{
		type = "recipe",
		name = "y_basement_5x5a",
		energy_required=3.0, enabled = true, category="yrcat_basements",		
		ingredients = 
		{    
			{type="item", name="stone-brick", amount=8},
			{type="item", name="y_structure_electric", amount=4},
			{type="item", name="steel-plate", amount=4},				
		},
		group = "yuoki",
		subgroup = "y_basement",
		results = {{type="item", name="y_basement_5x5a", amount=1},},
		--result = "y_basement_5x5a",
		order = "ma",
	},	
	{
		type = "item",
		name = "y_basement_5x5a",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_a_icon.png",		
		group = "yuoki",
		subgroup = "y_basement",
		place_result = "y_basement_5x5a",		
		stack_size = 150,
	},
	
	{
		type = "simple-entity",
		name = "y_basement_5x5a",
		 icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_a_icon.png",
		flags = {"placeable-neutral", "player-creation", },
		minable = {hardness = 0.5, mining_time = 2, result = "y_basement_5x5a"},
		selection_box = {{-2.5, -2.5}, {1.5, 1.5}},
		selectable_in_game = true,
		render_layer = "floor",		
		
		pictures = {{
				filename = "__Yuoki__/graphics/entity/lamps/base_5x5_a.png",
				width = 320, height= 320, scale=0.5,
				shift = {-0.5, -0.5},
			},},		
	},	
		
	{
		type = "recipe",
		name = "y_basement_5x5b",
		energy_required=3.0, enabled = true, category="yrcat_basements",
		ingredients = 
		{    
			{type="item", name="stone-brick", amount=8},
			{type="item", name="y_structure_element", amount=4},					
			{type="item", name="copper-cable", amount=4},				
		},
		group = "yuoki",
		subgroup = "y_basement",
		results = {{type="item", name="y_basement_5x5b", amount=1},},
		--result = "y_basement_5x5b",
		order = "mb",
	},
	
	{
		type = "item",
		name = "y_basement_5x5b",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_b_icon.png",		
		group = "yuoki",
		subgroup = "y_basement",
		place_result = "y_basement_5x5b",		
		stack_size = 150,
	},
	
	{
		type = "simple-entity",
		name = "y_basement_5x5b",
		flags = {"placeable-neutral", "player-creation", },
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_b_icon.png",
		minable = {hardness = 0.5, mining_time = 2, result = "y_basement_5x5b"},
		selection_box = {{-2.5, -2.5}, {1.5, 1.5}},
		selectable_in_game = true,
		render_layer = "floor",
		pictures = {{
				filename = "__Yuoki__/graphics/entity/lamps/base_5x5_b.png",
				width = 320, height= 320, scale=0.5,
				shift = {-0.5, -0.5},
			},},		
	},	

	{
		type = "recipe",
		name = "y_basement_5x5c",
		energy_required=3.0, enabled = true, category="yrcat_basements",
		ingredients = 
		{    
			{type="item", name="stone-brick", amount=8},
			{type="item", name="y_structure_electric", amount=6},
			{type="item", name="y-tinylamp", amount=4},				
		},
		group = "yuoki",
		subgroup = "y_basement",
		results = {{type="item", name="y_basement_5x5c", amount=1},},
		--result = "y_basement_5x5c",
		order = "mc",
	},
	
	{
		type = "item",
		name = "y_basement_5x5c",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_c_icon.png",		
		group = "yuoki",
		subgroup = "y_basement",
		place_result = "y_basement_5x5c",		
		stack_size = 150,
	},

	{
		type = "simple-entity",
		name = "y_basement_5x5c",
		 icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_c_icon.png",
		flags = {"placeable-neutral", "player-creation", },
		minable = {hardness = 0.5, mining_time = 2, result = "y_basement_5x5c"},
		selection_box = {{-2.5, -2.5}, {1.5, 1.5}},
		selectable_in_game = true,
		render_layer = "floor",		
		
		pictures = {{
				filename = "__Yuoki__/graphics/entity/lamps/base_5x5_c.png",
				width = 320, height= 320, scale=0.5,
				shift = {-0.5, -0.5},
			},},		
	},	

	-- cooled
	{
		type = "recipe",
		name = "y_basement_5x5d",
		energy_required=3.0, enabled = true, category="yrcat_basements",
		ingredients = 
		{    
			{type="item", name="stone-brick", amount=8},
			{type="item", name="y_structure_electric", amount=4},
			{type="item", name="y-basic-t1-mf", amount=2},				
		},
		group = "yuoki",
		subgroup = "y_basement",
		results = {{type="item", name="y_basement_5x5d", amount=1},},
		--result = "y_basement_5x5d",
		order = "md",
	},
	
	{
		type = "item",
		name = "y_basement_5x5d",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_d_icon.png",		
		group = "yuoki",
		subgroup = "y_basement",
		place_result = "y_basement_5x5d",		
		stack_size = 150,
	},

	{
		type = "simple-entity",
		name = "y_basement_5x5d",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_d_icon.png",
		flags = {"placeable-neutral", "player-creation", },
		minable = {hardness = 0.5, mining_time = 2, result = "y_basement_5x5d"},
		selection_box = {{-2.5, -2.5}, {1.5, 1.5}},
		selectable_in_game = true,
		render_layer = "floor",		
		
		pictures = {{
				filename = "__Yuoki__/graphics/entity/lamps/base_5x5_d.png",
				width = 320, height= 320, scale=0.5,
				shift = {-0.5, -0.5},
			},},		
	},	
	{
		type = "recipe",
		name = "y_basement_5x5e",
		energy_required=3.0, enabled = true, category="yrcat_basements",
		ingredients = 
		{    
			{type="item", name="stone-brick", amount=8},
			{type="item", name="y_structure_element", amount=6},		
			{type="item", name="y-pipe-ec", amount=4},				
		},
		group = "yuoki",
		subgroup = "y_basement",
		results = {{type="item", name="y_basement_5x5e", amount=1},},
		--result = "y_basement_5x5e",
		order = "me",
	},
	
	{
		type = "item",
		name = "y_basement_5x5e",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_e_icon.png",		
		group = "yuoki",
		subgroup = "y_basement",
		place_result = "y_basement_5x5e",		
		stack_size = 150,
	},

	{
		type = "simple-entity",
		name = "y_basement_5x5e",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_e_icon.png",
		flags = {"placeable-neutral", "player-creation", },
		minable = {hardness = 0.5, mining_time = 2, result = "y_basement_5x5e"},
		selection_box = {{-2.5, -2.5}, {1.5, 1.5}},
		selectable_in_game = true,
		render_layer = "floor",		
		
		pictures = {{
				filename = "__Yuoki__/graphics/entity/lamps/base_5x5_e.png",
				width = 320, height= 320, scale=0.5,
				shift = {-0.5, -0.5},
			},},		
	},	
	
	{
		type = "recipe",
		name = "y_basement_5x5f",
		energy_required=2.0, enabled = true, category="yrcat_basements",
		ingredients = 
		{    
			{type="item", name="stone-brick", amount=8},
			{type="item", name="y_structure_element", amount=4},					
		},
		group = "yuoki",
		subgroup = "y_basement",
		results = {{type="item", name="y_basement_5x5f", amount=1},},
		--result = "y_basement_5x5f",
		order = "mf",
	},
	
	{
		type = "item",
		name = "y_basement_5x5f",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_f_icon.png",		
		group = "yuoki",
		subgroup = "y_basement",
		place_result = "y_basement_5x5f",		
		stack_size = 150,
	},

	{
		type = "simple-entity",
		name = "y_basement_5x5f",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_f_icon.png",
		flags = {"placeable-neutral", "player-creation", },
		minable = {hardness = 0.5, mining_time = 2, result = "y_basement_5x5f"},
		selection_box = {{-2.5, -2.5}, {1.5, 1.5}},
		selectable_in_game = true,
		render_layer = "floor",		
		
		pictures = {{
				filename = "__Yuoki__/graphics/entity/lamps/base_5x5_f.png",
				width = 320, height= 320, scale=0.5,
				shift = {-0.5, -0.5},
			},},		
	},	
	
	{
		type = "recipe",
		name = "y_basement_5x5f2",
		energy_required=3.0, enabled = true, category="yrcat_basements",
		ingredients = 
		{    
			{type="item", name="steel-plate", amount=4},
			{type="item", name="y_structure_element", amount=4},									
		},
		group = "yuoki",
		subgroup = "y_basement",
		results = {{type="item", name="y_basement_5x5f2", amount=1},},
		--result = "y_basement_5x5f2",
		order = "mf2",
	},
	
	{
		type = "item",
		name = "y_basement_5x5f2",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_f2_icon.png",		
		group = "yuoki",
		subgroup = "y_basement",
		place_result = "y_basement_5x5f2",		
		stack_size = 150,
	},

	{
		type = "simple-entity",
		name = "y_basement_5x5f2",
		 icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_f2_icon.png",
		flags = {"placeable-neutral", "player-creation", },
		minable = {hardness = 0.5, mining_time = 2, result = "y_basement_5x5f2"},
		selection_box = {{-2.5, -2.5}, {1.5, 1.5}},
		selectable_in_game = true,
		render_layer = "floor",		
		
		pictures = {{
				filename = "__Yuoki__/graphics/entity/lamps/base_5x5_f2.png",
				width = 320, height= 320, scale=0.5,
				shift = {-0.5, -0.5},
			},},		
	},	

	{
		type = "recipe",
		name = "y_basement_4x4a",
		energy_required=3.0, enabled = true, category="yrcat_basements",
		ingredients = 
		{    
			{type="item", name="y_structure_element", amount=4},		
			{type="item", name="iron-plate", amount=4},
			{type="item", name="copper-cable", amount=4},				
		},
		group = "yuoki",
		subgroup = "y_basement",
		results = {{type="item", name="y_basement_4x4a", amount=1},},
		--result = "y_basement_4x4a",
		order = "mg",
	},
	
	{
		type = "item",
		name = "y_basement_4x4a",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_4x4_g_icon.png",		
		group = "yuoki",
		subgroup = "y_basement",
		place_result = "y_basement_4x4a",		
		stack_size = 150,
	},

	{
		type = "simple-entity",
		name = "y_basement_4x4a",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/lamps/base_4x4_g_icon.png",
		flags = {"placeable-neutral", "player-creation", },
		minable = {hardness = 0.5, mining_time = 2, result = "y_basement_4x4a"},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		selectable_in_game = true,
		render_layer = "floor",				
		pictures = {{
				filename = "__Yuoki__/graphics/entity/lamps/base_4x4_g.png",
				width = 256, height= 256, scale=0.5,
				shift = {0, 0},
			},},		
	},	
	
})
