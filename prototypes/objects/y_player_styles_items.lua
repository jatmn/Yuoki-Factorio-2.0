
data:extend(
{  

	{ type = "recipe", name = "yi_armor_gray", energy_required = 5, 
		ingredients = {
			{type="item", name="y-fame", amount=1},
			{type="item", name="y_quantrinum_infused", amount=2},
			{type="item", name="y-basic-t2-mf", amount=6},
			{type="item", name="y_rwtechsign", amount=1500},
			{type="item", name="y_structure_element", amount=22},
		}, 
		results = {{type="item", name="yi_armor_gray", amount=1},},
		--result = "yi_armor_gray", 
		enabled = true,
		--result_count = 1,
		order="sm-1", subgroup = "y_personal", group = "yuoki-energy",
	},		
	{ type = "recipe", name = "yi_armor_red", energy_required = 5, 
		ingredients = {
			{type="item", name="yi_armor_gray", amount=1},
			{type="item", name="y-fame", amount=1},
			{type="item", name="y_quantrinum_infused", amount=2},
			{type="item", name="y-basic-t2-mf", amount=6},
			{type="item", name="y_rwtechsign", amount=2500},
			{type="item", name="y_structure_element", amount=22},
		}, 
		results = {{type="item", name="yi_armor_red", amount=1},},
		--result = "yi_armor_red", 
		enabled = true,
		--result_count = 1,
		order="sm-2", subgroup = "y_personal", group = "yuoki-energy",
	},			
	{ type = "recipe", name = "yi_armor_gold", energy_required = 5, 
		ingredients = {
			{type="item", name="yi_armor_red", amount=1},
			{type="item", name="y-fame", amount=6},
			{type="item", name="y_quantrinum_infused", amount=2},
			{type="item", name="y-basic-t2-mf", amount=6},
			{type="item", name="y_rwtechsign", amount=4500},
			{type="item", name="y_structure_element", amount=22},
		}, 
		results = {{type="item", name="yi_armor_gold", amount=1},},
		--result = "yi_armor_gold", 
		enabled = true,
		--result_count = 1,
		order="sm-3", subgroup = "y_personal", group = "yuoki-energy", 
	},				
	{ type = "recipe", name = "yi_walker_a", energy_required = 10, 
		ingredients = {
			{type="item", name="yi_armor_gold", amount=1},
			{type="item", name="y-fame", amount=8},
			{type="item", name="y_quantrinum_infused", amount=2},
			{type="item", name="y-basic-t2-mf", amount=12},
			{type="item", name="y_rwtechsign", amount=10000},
			{type="item", name="y_structure_element", amount=40},
		}, 
		results = {{type="item", name="yi_walker_a", amount=1},},
		--result = "yi_walker_a",
		enabled = true, 
		--result_count = 1,
		order="sm-4", subgroup = "y_personal", group = "yuoki-energy", 
	},		
	{ type = "recipe", name = "yi_walker_c", energy_required = 10, 
		ingredients = {
			{type="item", name="yi_walker_a", amount=1},
			{type="item", name="y-fame", amount=20},
			{type="item", name="y_quantrinum_infused", amount=10},
			{type="item", name="y-basic-t2-mf", amount=25},
			{type="item", name="y_rwtechsign", amount=25000},
			{type="item", name="y_structure_element", amount=100},
		}, 
		results = {{type="item", name="yi_walker_c", amount=1},},
		--result = "yi_walker_c"
		enabled = true, 
		--result_count = 1,
		order="sm-6", subgroup = "y_personal", group = "yuoki-energy", 
	},		

	{
		type = "equipment-grid",
		name = "y_armor_grid_a",
		width = 9,
		height = 9,
		equipment_categories = {"armor"},
	},
	{
		type = "equipment-grid",
		name = "y_armor_grid_b",
		width = 10,
		height = 10,
		equipment_categories = {"armor"},
	},	
	{
		type = "equipment-grid",
		name = "y_armor_grid_c",
		width = 12,
		height = 12,
		equipment_categories = {"armor"},
	},
	{
		type = "equipment-grid",
		name = "y_walker_grid",
		width = 14,
		height = 14,
		equipment_categories = {"armor"},
	},
	{
		type = "equipment-grid",
		name = "y_walker_grid_b",
		width = 16,
		height = 16,
		equipment_categories = {"armor"},
	},
	
	{
		type = "armor",
		name = "yi_armor_gray",
		icon_size = 64, icon =  "__Yuoki__/graphics/armor/mcb_icon.png",		
		resistances = 
		{
			{	type = "physical", decrease = 12, percent = 55 },
			{	type = "acid", decrease = 12, percent = 55 },
			{	type = "explosion", decrease = 20, percent = 55 },
		},
		durability = 25000,
		subgroup = "y_personal", group = "yuoki-energy", 
		order = "a1",
		stack_size = 1,
		equipment_grid = "y_armor_grid_a",
		inventory_size_bonus = 10,						
	},

	{
		type = "armor",
		name = "yi_armor_red",
		icon_size = 64, icon =  "__Yuoki__/graphics/armor/cb3_icon.png",		
		resistances = 
		{
			{	type = "physical", decrease = 10, percent = 50 },
			{	type = "acid", decrease = 10, percent = 50 },
			{	type = "explosion", decrease = 5, percent = 50 },
			{	type = "fire", decrease = 10, percent = 55 },
		},
		durability = 20000,
		subgroup = "y_personal", group = "yuoki-energy", 
		order = "a2",
		stack_size = 1,
		equipment_grid = "y_armor_grid_b",
		inventory_size_bonus = 20,						
	},

	{
		type = "armor",
		name = "yi_armor_gold",
		icon_size = 64, icon =  "__Yuoki__/graphics/armor/cb5_icon.png",		
		resistances = 
		{
			{	type = "physical", decrease = 11, percent = 60 },
			{	type = "acid", decrease = 11, percent = 60 },
			{	type = "explosion", decrease = 11, percent = 60 },
			{	type = "fire", decrease = 11, percent = 60 },
		},
		durability = 20000,
		subgroup = "y_personal", group = "yuoki-energy", 
		order = "a3",
		stack_size = 1,
		equipment_grid = "y_armor_grid_c",
		inventory_size_bonus = 20,						
	},
	
	{
		type = "armor",
		name = "yi_walker_a",
		icon_size = 64, icon =  "__Yuoki__/graphics/armor/neron_u3_32.png",		
		resistances = 
		{
			{	type = "physical", decrease = 14, percent = 75 },
			{	type = "acid", decrease = 14, percent = 75 },
			{	type = "explosion", decrease = 20, percent = 75 },
		},
		durability = 30000,
		subgroup = "y_personal", group = "yuoki-energy", 
		order = "a4",
		stack_size = 1,
		equipment_grid = "y_walker_grid",
		inventory_size_bonus = 30,						
	},

	{
		type = "armor",
		name = "yi_walker_c",
		icon_size = 64, icon =  "__Yuoki__/graphics/armor/cb4_icon.png",		
		resistances = 
		{
			{	type = "physical", decrease = 20, percent = 75 },
			{	type = "acid", decrease = 20, percent = 75 },
			{	type = "explosion", decrease = 20, percent = 75 },
			{	type = "impact", decrease = 15, percent = 60 },
		},
		durability = 50000,
		subgroup = "y_personal", group = "yuoki-energy", 
		order = "a6",
		stack_size = 1,
		equipment_grid = "y_walker_grid_b",
		inventory_size_bonus = 40,						
	},
	
})


