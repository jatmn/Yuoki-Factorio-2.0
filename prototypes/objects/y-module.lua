data:extend(
{
	-- recipes
	{
		type = "recipe",
		name = "y-speed-module-1",
		energy_required = 2.0, enabled = true,
		ingredients = {
			{type="item", name="y-chip-1", amount=2},
			{type="item", name="y_structure_element", amount=1},
			{type="item", name="y-heat-pipe", amount=1}
		}, 
		results = {{type="item", name="y-speed-module-1", amount=1},},
		main_product = "y-speed-module-1",
		--result = "y-speed-module-1",
		--result_count = 1,
		order = "m-1a",
	},	
	-- items
	{
		type = "module",
		name = "y-speed-module-1", category = "speed",tier = 1,
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/modul_blue_1.png",		
		subgroup = "y-module",
		order = "m-1a",
		stack_size = 100,		
		default_request_amount = 10,
		--effect = { speed = {bonus = 0.125}, pollution = {bonus = 0.075}, }
		effect = { speed = 0.125, pollution = 0.075, }
	},
	-- recipes
	{
		type = "recipe",
		name = "y-speed-module-2",
		 icon_size = 64, icon =  "__Yuoki__/graphics/icons/modul_blue_2.png",
		energy_required = 2.0, enabled = true,
		ingredients = {
			{type="item", name="y-chip-2", amount=2},
			{type="item", name="y-speed-module-1", amount=2},
			{type="item", name="y_crystal2_combined", amount=1}
		}, 		
		results=
		{
			{type="item", name="y-speed-module-2", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=1, },      	  						
		},			
		main_product="y-speed-module-2",	
		order = "m-2a",
		subgroup = "y-module",
	},	
	-- items
	{
		type = "module",
		name = "y-speed-module-2", category = "speed",tier = 1,
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/modul_blue_2.png",		
		subgroup = "y-module",
		order = "m-2a",
		stack_size = 100,
		default_request_amount = 10,
		effect = { speed = 0.25, pollution = 0.15, }
	},

	-- greens
	{
		type = "recipe",
		name = "y-green-module-1",
		energy_required = 2.0, enabled = true,
		ingredients = {
			{type="item", name="y-chip-1", amount=2},
			{type="item", name="y_structure_element", amount=1},
			{type="item", name="y-heat-pipe", amount=1}
		}, 
		results = {{type="item", name="y-green-module-1", amount=1},},
		main_product = "y-green-module-1",
		--result = "y-green-module-1",
		--result_count = 1,
		order = "m-1b",
	},		
	{
		type = "module",
		name = "y-green-module-1",category = "efficiency",tier = 1,
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/modul_green_1.png",		
		subgroup = "y-module",
		order = "m-1b",
		stack_size = 100,
		default_request_amount = 10,
		effect = { consumption = -0.25},
		limitation = production	
	},

	-- green-2
	{
		type = "recipe",
		name = "y-green-module-2",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/modul_green_2.png",
		energy_required = 2.0, enabled = true,
		ingredients = {
			{type="item", name="y-chip-2", amount=2},
			{type="item", name="y-green-module-1", amount=2},
			{type="item", name="y_crystal2_combined", amount=1}
		}, 
		results=
		{
			{type="item", name="y-green-module-2", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=1, },      	  						
		},					
		main_product="y-green-module-2",
		order = "m-2b",
		subgroup = "y-module",
	},		
	{
		type = "module",
		name = "y-green-module-2",category = "efficiency",tier = 1,
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/modul_green_2.png",		
		subgroup = "y-module",
		order = "m-2b",
		stack_size = 100,
		default_request_amount = 10,
		effect = { consumption = -0.35},
		limitation = production	
	},
	
	-- green-op ultimate
	{
		type = "recipe",
		name = "y_modul_green_op",
		 icon_size = 64, icon =  "__Yuoki__/graphics/icons/op_green_module.png",
		category = "yuoki_green_ultimate", -- Green-Ultimates
		energy_required = 120.0, enabled = true,
		ingredients = {
			{type="item", name="wood", amount=1},
			{type="item", name="y_greensign", amount=500},
		}, 
		results=
		{
			{type="item", name="y_modul_green_op", amount=1, },      	  									    	  								
		},			
		main_product = "y_modul_green_op",
		order = "2",
		group = "yuoki-energy", subgroup = "y_ultimate_products",
		auto_recycle = false,
	},		
	{
		type = "module",
		name = "y_modul_green_op",category = "efficiency",tier = 1,
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/op_green_module.png",		
		subgroup = "y-module",
		order = "m-2c",
		stack_size = 100,
		default_request_amount = 10,
		effect = { consumption =  -0.80},
		limitation = production,
		auto_recycle = false,
	},
	
	-- red-op1
	{
		type = "recipe",
		name = "y_modul_science",		
		icon_size = 64, icon =   "__Yuoki__/graphics/icons/modul_science_32.png",
		energy_required = 5.0, enabled = true,
		ingredients = {
			{type="item", name="y-green-module-2", amount=1},
			{type="item", name="y-speed-module-2", amount=1},
			{type="item", name="y-pink-module-2", amount=1},
			{type="item", name="ye_science_blue", amount=100},
		}, 
		results=
		{
			{type="item", name="y_modul_science", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=5, },      	  						
		},				
		main_product="y_modul_science",		
		order = "m-5b",
		subgroup = "y-module",
	},		
	{
		type = "module",
		name = "y_modul_science",category = "productivity",tier = 1,
		icon_size = 64, icon =   "__Yuoki__/graphics/icons/modul_science_32.png",		
		subgroup = "y-module",
		order = "m-5b",
		stack_size = 100,
		default_request_amount = 20,
		effect = { productivity =  0.30, consumption = 1.0, pollution = -0.1},
		--limitation = productivitymodulelimitation(),
		limitation_message_key = "production-module-usable-only-on-intermediates"
	},
	
	-- red-op2
	{
		type = "recipe",
		name = "y_modul_red2",
		 icon_size = 64, icon =   "__Yuoki__/graphics/icons/modul_techanic_32.png",
		energy_required = 5.0, enabled = true,
		ingredients = {
			{type="item", name="y-speed-module-2", amount=1},
			{type="item", name="y-green-module-2", amount=1},
			{type="item", name="y_rwtechsign", amount=300}
		}, 
		results=
		{
			{type="item", name="y_modul_red2", amount=1, },      	  						
			--{type="item", name="y_rwtechsign", amount=1, },      	  						
		},				
		main_product="y_modul_red2",		
		order = "m-5a",
		subgroup = "y-module",
	},		
	{
		type = "module",
		name = "y_modul_red2",category = "speed",tier = 1,
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/modul_techanic_32.png",		
		subgroup = "y-module",
		order = "m-5a",
		stack_size = 100,
		default_request_amount = 10,
		effect = { speed = 0.325, consumption = -0.20 },
		limitation = production	
	},

	
	-- pink ->dropped ->revieved 0509-215
	-- pinks	
	{
		type = "recipe",
		name = "y-pink-module-1",
		energy_required = 3.0, enabled = true,
		ingredients = {
			{type="item", name="y-chip-1", amount=2},
			{type="item", name="y_structure_element", amount=1},
			{type="item", name="y-heat-pipe", amount=1}
		},
		results = {{type="item", name="y-pink-module-1", amount=1},},
		main_product = "y-pink-module-1",
		--result = "y-pink-module-1",
		--result_count = 1,
		order = "m-4a",
	},		
	
	{
		type = "module",
		name = "y-pink-module-1", category = "productivity",tier = 1,
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/modul_pink_1.png",		
		subgroup = "y-module",
		order = "m-4a",
		stack_size = 100,
		default_request_amount = 20,
		effect = { productivity = 0.05, consumption = 0.125, pollution = -0.075},
		--limitation = productivitymodulelimitation(),
		limitation_message_key = "production-module-usable-only-on-intermediates"
	},

	{
		type = "recipe",
		name = "y-pink-module-2",
		 icon_size = 64, icon =  "__Yuoki__/graphics/icons/modul_pink_2.png",
		energy_required = 3.0, enabled = true,
		ingredients = {
			{type="item", name="y-chip-2", amount=2},
			{type="item", name="y-pink-module-1", amount=2},
			{type="item", name="y_crystal2_combined", amount=1}
		}, 		
		results=
		{
			{type="item", name="y-pink-module-2", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=1, },      	  						
		},								
		main_product="y-pink-module-2",		
		--result_count = 1,
		order = "m-4b",
		subgroup = "y-module",
	},		
	
	{
		type = "module",
		name = "y-pink-module-2", category = "productivity",tier = 1,
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/modul_pink_2.png",		
		subgroup = "y-module",
		order = "m-4b",
		stack_size = 100,
		default_request_amount = 20,
		effect = { productivity = 0.125, consumption = 0.2, pollution = -0.15},
		--limitation = productivitymodulelimitation(),
		limitation_message_key = "production-module-usable-only-on-intermediates"
	},

	{
		type = "recipe",
		name = "y-pink-module-3",
		energy_required = 3.0, enabled = true,
		ingredients = {
			{type="item", name="y-pink-module-2", amount=1},
			{type="item", name="y-crystal-cnd", amount=2},
			{type="item", name="y-infused-uca2", amount=1},
			{type="item", name="y_rwtechsign", amount=3},
		}, 
		results = {{type="item", name="y-pink-module-3", amount=1},},	
		main_product = "y-pink-module-3",
		--result = "y-pink-module-3",
		--result_count = 1,
		order = "m-4c",
	},		
	
	{
		type = "module",
		name = "y-pink-module-3", category = "productivity",tier = 1,
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/modul_pink_3.png",		
		subgroup = "y-module",
		order = "m-4c",
		stack_size = 100,
		default_request_amount = 20,
		effect = { productivity = 0.20, consumption = 0.275, pollution = -0.2},
		--limitation = productivitymodulelimitation(),
		limitation_message_key = "production-module-usable-only-on-intermediates"
	},
	
})