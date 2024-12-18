data:extend(
{

	{
		type = "recipe",
		name = "y-pipe-h",				
		enabled = true,
		ingredients = {{type="item", name="pipe", amount=1}},
		results = {{type="item", name="y-pipe-h", amount=1},},
		--result = "y-pipe-h",
		--result_count = 1,
		group = "yuoki",
		subgroup = "y-pipe",	
		order="p1-",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/pipe-h.png",
	},

	{
		type = "recipe",
		name = "y-pipe-v",			
		enabled = true,
		ingredients = {{type="item", name="pipe", amount=1}},
		results = {{type="item", name="y-pipe-v", amount=1},},
		--result = "y-pipe-v",
		--result_count = 1,
		group = "yuoki",
		subgroup = "y-pipe",	
		order="p2-",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/pipe-v.png",
	},


	{
		type = "recipe",
		name = "y-valve-direction-buffer",
		ingredients = {
			{type="item", name="iron-plate", amount=8},
			{type="item", name="steel-plate", amount=2},
			{type="item", name="iron-gear-wheel", amount=2}
		},
		--result = "y-valve-direction-buffer",
		results = {{type="item", name="y-valve-direction-buffer", amount=1},},
		main_product ="y-valve-direction-buffer",
		enabled = true,		
		--result_count = 1,
		group = "yuoki",
		subgroup = "y-pipe",			
	},	

	{
		type = "recipe",
		name = "y-pipe-hc",	
		results = {{type="item", name="y-pipe-hc", amount=4},},		
		--result = "y-pipe-hc",
		ingredients = {{type="item", name="y-unicomp-raw", amount=1}},
		main_product = "y-pipe-hc",
		enabled = true,
		--result_count = 4,
		group = "yuoki", subgroup = "y-pipe", order="p3-1",		
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/pipe-hc.png",
	},
	{
		type = "recipe",
		name = "y-pipe-to-ground-hc",
		results = {{type="item", name="y-pipe-to-ground-hc", amount=2},},
		main_product = "y-pipe-to-ground-hc",
		--result = "y-pipe-to-ground-hc",		
		ingredients = {{type="item", name="y-unicomp-raw", amount=4},},		
		enabled = true,
		--result_count = 2,
		group = "yuoki", subgroup = "y-pipe", order="p3-2",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/pipe-tg-hc.png",
	},
	{
		type = "recipe",
		name = "y-pipe-ec",	
		results = {{type="item", name="y-pipe-ec", amount=6},},		
		main_product = "y-pipe-ec",
		--result = "y-pipe-ec",
		ingredients = {{type="item", name="y-unicomp-a2", amount=1}},
		enabled = true,
		--result_count = 6,
		group = "yuoki", subgroup = "y-pipe", order="p3-3",		
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/pipe-ec.png",
	},
	{
		type = "recipe",
		name = "y-pipe-to-ground-ec",
		results = {{type="item", name="y-pipe-to-ground-ec", amount=2},},	
		main_product = "y-pipe-to-ground-ec",
		--result = "y-pipe-to-ground-ec",		
		ingredients = {{type="item", name="y-unicomp-a2", amount=4},},		
		enabled = true,
		--result_count = 2,
		group = "yuoki", subgroup = "y-pipe", order="p3-4",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/pipe-tg-ec.png",
	},
	-- grüne Pipes - 26.4.2022
	{
		type = "recipe",
		name = "yi_pipe_green",
		results = {{type="item", name="yi_pipe_green", amount=4},},	
		main_product = "yi_pipe_green",
		--result = "yi_pipe_green",
		ingredients = {
			{type="item", name="y-unicomp-raw", amount=1},
			{type="item", name="y-refined-yres2", amount=1}
		},
		enabled = true,
		--result_count = 4,
		group = "yuoki", subgroup = "y-pipe", order="p3-5",		
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/g_pipe_icon.png",
	},
	{
		type = "recipe",
		name = "yi_pipe_underground_green",
		results = {{type="item", name="yi_pipe_underground_green", amount=2},},		
		main_product = "yi_pipe_underground_green",
		--result = "yi_pipe_underground_green",		
		ingredients = {
			{type="item", name="y-unicomp-raw", amount=10},
			{type="item", name="y-refined-yres2", amount=10}
		},		
		enabled = true,
		--result_count = 2,
		group = "yuoki", subgroup = "y-pipe", order="p3-6",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/g_pipe_u_icon.png",
	},

	
	{
		type = "recipe",
		name = "y-tank-1000",
		results = {{type="item", name="y-tank-1000", amount=1},},
		--result = "y-tank-1000",
		main_product = "y-tank-1000",
		ingredients = {
			{type="item", name="y_structure_element", amount=2},
			{type="item", name="y_structure_vessel", amount=4},
		},		
		energy_required = 2, enabled = true,
		--result_count = 1,
		group = "yuoki", subgroup = "y-fluid-storage", order="T1",
	},	
	{
		type = "recipe",
		name = "y-tank-4500",
		results = {{type="item", name="y-tank-4500", amount=1},},
		main_product = "y-tank-4500",
		--result = "y-tank-4500",
		ingredients = {
			{type="item", name="y_structure_element", amount=6},
			{type="item", name="y_structure_vessel", amount=8},
			{type="item", name="y-pipe-hc", amount=4}
		},		
		energy_required = 3, enabled = true,
		--result_count = 1,
		group = "yuoki", subgroup = "y-fluid-storage", order="T2",
	},	
	{
		type = "recipe",
		name = "y-tank-8000",
		main_product = "y-tank-8000",
		results = {{type="item", name="y-tank-8000", amount=1},},
		--result = "y-tank-8000",
		ingredients = {
			{type="item", name="y_structure_element", amount=10},
			{type="item", name="y_structure_vessel", amount=14},
			{type="item", name="y-pipe-hc", amount=12}
		},		
		energy_required = 4, enabled = true,
		--result_count = 1,
		group = "yuoki", subgroup = "y-fluid-storage", order="T3",
	},	

	{
		type = "recipe",
		name = "y-tank-24k",
		results = {{type="item", name="y-tank-24k", amount=1},},
		--result = "y-tank-24k",
		main_product = "y-tank-24k",
		ingredients = {
			{type="item", name="y-tank-8000", amount=2},
			{type="item", name="y_structure_element", amount=8},
			{type="item", name="y-pipe-to-ground-ec", amount=6},
			{type="item", name="y-orange-stuff", amount=8},
			{type="item", name="y-quantrinum", amount=2},
		},		
		energy_required = 6, enabled = true,
		--result_count = 1,
		group = "yuoki", subgroup = "y-fluid-storage", order="T4",
	},	

	{
		type = "recipe",
		name = "y_buffer_station",		
		ingredients = {
			{type="item", name="y-tank-4500", amount=1},
			{type="item", name="y-valve-direction-buffer", amount=2},
			{type="item", name="y_flowcheck_10", amount=1},
		},		
		results = {
			{type="item", name="y_buffer_station", amount=1,},
			{type="item", name="y_rwtechsign", amount=2,},
		},
		main_product = "y_buffer_station",		
		energy_required = 4, enabled = true,
		--result_count = 1,
		group = "yuoki", subgroup = "y-fluid-storage", order="T5",
	},	
	
	--items
	{
		type = "item",
		name = "y-pipe-h",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/pipe-h.png",		
		subgroup = "y-pipe",
		order = "pipe-j-r",
		place_result = "y-pipe-h",
		stack_size = 150,  
	},

	{
		type = "item",
		name = "y-pipe-v",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/pipe-v.png",
		subgroup = "y-pipe",
		order = "pipe-j-r",
		place_result = "y-pipe-v",
		stack_size = 150,
	},
	
	{
		type = "item",
		name = "y-valve-direction-buffer",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/pressure_pipe_icon.png",
		group = "yuoki",
		subgroup = "y-pipe",order = "zubehoer",
		place_result = "y-valve-direction-buffer",
		stack_size = 20,
	},
	{
		type = "item",
		name = "y-pipe-hc", place_result = "y-pipe-hc",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/pipe-hc.png", order = "pipe-hc", subgroup = "y-pipe",
		stack_size = 150, default_request_amount = 50,
	},
	{
		type = "item",
		name = "y-pipe-to-ground-hc", place_result = "y-pipe-to-ground-hc",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/pipe-tg-hc.png", order = "pipe-hc", subgroup = "y-pipe",
		stack_size = 150, default_request_amount = 50,
	},	
	{
		type = "item",
		name = "y-pipe-ec", place_result = "y-pipe-ec",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/pipe-ec.png", order = "pipe-ec", subgroup = "y-pipe",
		stack_size = 150, default_request_amount = 50,
	},
	{
		type = "item",
		name = "y-pipe-to-ground-ec", place_result = "y-pipe-to-ground-ec",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/pipe-tg-ec.png",	order = "pipe-ec", subgroup = "y-pipe",
		stack_size = 150, default_request_amount = 50,
	},
	-- grüne Pipes - 26.4.2022
	{
		type = "item",
		name = "yi_pipe_green", place_result = "yi_pipe_green",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/g_pipe_icon.png", order = "pipe-green", subgroup = "y-pipe",
		stack_size = 100, default_request_amount = 50,
	},
	{
		type = "item",
		name = "yi_pipe_underground_green", place_result = "yi_pipe_underground_green",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/g_pipe_u_icon.png",	order = "pipe-green-u", subgroup = "y-pipe",
		stack_size = 100, default_request_amount = 50,
	},
	
	{
		type = "item",
		name = "y-tank-1000", place_result = "y-tank-1000",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/tank-1000-icon.png",
		group = "yuoki", subgroup = "y-fluid-storage", stack_size = 15, order = "tank-a1",
	},
	{
		type = "item",
		name = "y-tank-4500", place_result = "y-tank-4500",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/tank-4500-icon.png",
		group = "yuoki", subgroup = "y-fluid-storage", stack_size = 15,  order = "tank-b1",
	},
	{
		type = "item",
		name = "y-tank-8000", place_result = "y-tank-8000",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/tank-8000-icon.png",
		group = "yuoki", subgroup = "y-fluid-storage", stack_size = 15,  order = "tank-c1",
	},	
	{
		type = "item",
		name = "y-tank-24k", place_result = "y-tank-24k",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/tank-48k-icon.png",
		group = "yuoki", subgroup = "y-fluid-storage", stack_size = 5, order = "tank-c2",
	},	

	{
		type = "item",
		name = "y_buffer_station", place_result = "y_buffer_station",
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/special_tank3_icon.png",
		group = "yuoki", subgroup = "y-fluid-storage", stack_size = 5,  order = "tank-c3",
	},	


	
})