data:extend(
{

	--[[ removed 215-0101
	{
		type = "recipe",
		name = "y-archsite-recipe", enabled = true,
		ingredients = {{"steel-plate", 2}, {"pipe", 3}, {"stone", 20}}, 
		result = "archsite", result_count = 1,
	},
	]]
	
	-- low tiers	
	{
		type = "recipe",
		name = "y-dirtwasher", enabled = true,
		ingredients = {
			{type="item", name="assembling-machine-1", amount=1},
			{type="item", name="steel-plate", amount=4},
			{type="item", name="copper-plate", amount=3},
			{type="item", name="iron-gear-wheel", amount=2}
		},
		results = {{type="item", name="y-dirtwasher", amount=1},},
		main_product = "y-dirtwasher",
		--result = "y-dirtwasher", result_count = 1,
		subgroup = "y_line1", order="f",
	},	
	{
		type = "recipe",
		name = "y-heat-form-press",
		ingredients = {
			{type="item", name="assembling-machine-1", amount=1},
			{type="item", name="steel-plate", amount=6},
			{type="item", name="copper-plate", amount=2},
			{type="item", name="iron-gear-wheel", amount=3}
		},
		results = {{type="item", name="y-heat-form-press", amount=1},},
		main_product = "y-heat-form-press",
		--result = "y-heat-form-press",
		enabled = true,
		--result_count = 1,
		subgroup = "y_line1", order="e",
	},
	{
		type = "recipe",
		name = "y-mining-drill",
		ingredients = {
			{type="item", name="burner-mining-drill", amount=2},
			{type="item", name="steel-plate", amount=4},
			{type="item", name="copper-plate", amount=3},
			{type="item", name="iron-gear-wheel", amount=4}
		},
		results = {{type="item", name="y-mining-drill", amount=1},},
		main_product = "y-mining-drill",
		--result = "y-mining-drill",
		enabled = true,		
		--result_count = 1,
		subgroup = "y_line1", order="a",
	},
	{
		type = "recipe",
		name = "y-crusher",
		ingredients = {
			{type="item", name="assembling-machine-1", amount=2},
			{type="item", name="copper-plate", amount=2},
			{type="item", name="iron-gear-wheel", amount=6}
		},
		results = {{type="item", name="y-crusher", amount=1},},
		main_product = "y-crusher",
		--result = "y-crusher",
		enabled = true,		
		--result_count = 1,
		subgroup = "y_line1", order="d",
	},
	
	-- medium tiers
	{
		type = "recipe",
		name = "y-mining-drill-e2",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/mine-drill-g-icon.png",
		ingredients = {
			{type="item", name="steel-plate", amount=8},
			{type="item", name="y-bluegear", amount=3},
			{type="item", name="y-refined-yres1", amount=4},
			{type="item", name="y_structure_element", amount=2}
		},
		results=
		{
			{type="item", name="y-mining-drill-e2", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=1, },      	  						
		},		
		main_product = "y-mining-drill-e2",						
		enabled = true,		
		subgroup = "y_line1", order="b",
	},
	{
		type = "recipe",
		name = "y-underground-drill",
		ingredients = {
			{type="item", name="y-mining-drill-e2", amount=1},
			{type="item", name="y_structure_vessel", amount=3},
			{type="item", name="y-basic-t1-mf", amount=1},
		},
		results = {{type="item", name="y-underground-drill", amount=1},},
		main_product = "y-underground-drill",
		--result = "y-underground-drill",
		enabled = true,		
		--result_count = 1,	
		subgroup = "y_line1", order="c",
	},	
	{
		type = "recipe",
		name = "y-atomic-constructor",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/cimota-icon.png",
		ingredients = {
			{type="item", name="assembling-machine-2", amount=1},
			{type="item", name="y-crusher", amount=1},
			{type="item", name="y-heat-form-press", amount=1},
			{type="item", name="y-fuel-reactor", amount=3}
		},
		results=
		{
			{type="item", name="y-atomic-constructor", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=1, },      	  						
		},				
		main_product = "y-atomic-constructor",						
		enabled = true, order = "a1",					
		subgroup = "y_line1b",
	},
	{
		type = "recipe",
		name = "y-water-gen",
		ingredients = {
			{type="item", name="y-atomic-constructor", amount=1},
			{type="item", name="y-unicomp-raw", amount=8},
			{type="item", name="y-unicomp-a2", amount=2}
		},
		results = {{type="item", name="y-water-gen", amount=1},},
		main_product = "y-water-gen",
		--result = "y-water-gen",
		enabled = true,		
		--result_count = 1,
		subgroup = "y_refine_machinery",
	},
	{
		type = "recipe",
		name = "y-water-gen-e",
		ingredients = {
			{type="item", name="y-water-gen", amount=1},
			{type="item", name="y-conductive-coil-1", amount=4 }
		},
		results = {{type="item", name="y-water-gen-e", amount=1},},
		main_product = "y-water-gen-e",
		--result = "y-water-gen-e",
		enabled = true,		
		--result_count = 1,		
		subgroup = "y_refine_machinery",
	},
	--[[
	{
		type = "recipe",
		name = "y_water_mixer_recipe",
		ingredients = {{"y-water-gen",1}, {"y-basic-t1-mf",2}, {"y_structure_vessel",2} },
		result = "y_water_mixer",
		enabled = true,		
		result_count = 1,		
		subgroup = "y_refine_machinery",
	},
	]]
	
	
	-- high tiers
	{
		type = "recipe",
		name = "y-atomic-quantum-composer",
		ingredients = {
			{type="item", name="y_compensator_25", amount=2},
			{type="item", name="y-basic-t2-mf", amount=3},
			{type="item", name="y_structure_element", amount=8},
			{type="item", name="y_rwtechsign", amount=3}
		},
		results = {{type="item", name="y-atomic-quantum-composer", amount=1},},
		main_product = "y-atomic-quantum-composer",
		--result = "y-atomic-quantum-composer",
		enabled = true, order = "a2",			
		--result_count = 1,
		subgroup = "y_line1b",
	},
	{
		type = "recipe",
		name = "y-alien-infuser",
		ingredients = {
			{type="item", name="y-atomic-quantum-composer", amount=1},
			{type="item", name="y-atomic-constructor", amount=1},
			{type="item", name="y-heat-form-press", amount=1},
			{type="item", name="y-fuel-reactor", amount=2},
			{type="item", name="y_rwtechsign", amount=5}
		},
		results = {{type="item", name="y-alien-infuser", amount=1},},
		main_product = "y-alien-infuser",
		--result = "y-alien-infuser",
		enabled = true, order = "a3",			
		--result_count = 1,
		subgroup = "y_line1b",
	},
	
	{
		type = "item",
		name = "y-dirtwasher", place_result = "y-dirtwasher", stack_size = 20, default_request_amount = 5, 
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/dw.png",				
		order = "f",		
		subgroup = "y_line1",
	},
	{
		type = "item",
		name = "y-heat-form-press", place_result = "y-heat-form-press",	stack_size = 20, default_request_amount = 5,
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/pressure_icon.png",		
		order = "e",		
		subgroup = "y_line1",
	},		
	{
		type = "item",
		name = "y-mining-drill", place_result = "y-mining-drill", stack_size = 20, default_request_amount = 5,
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/mine-drill-o-icon.png",
		order = "a",
		subgroup = "y_line1",
	},
	{
		type = "item",
		name = "y-mining-drill-e2", place_result = "y-mining-drill-e2", stack_size = 20, default_request_amount = 6,
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/mine-drill-g-icon.png",
		order = "b",				
		subgroup = "y_line1",
	},	
	
	{
		type = "item",
		name = "y-underground-drill", place_result = "y-underground-drill", stack_size = 20, default_request_amount = 5,
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/deep-drill-v1-icon.png",
		order = "c",				
		subgroup = "y_line1",
	},	
	
	{
		type = "item",
		name = "y-crusher", place_result = "y-crusher", stack_size = 20, default_request_amount = 5,
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/crusher-icon.png",
		order = "d",	
		subgroup = "y_line1",		
	},
	{
		type = "item",
		name = "y-atomic-quantum-composer", place_result = "y-atomic-quantum-composer", stack_size = 10, 
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/space-assembly-icon.png",
		subgroup = "y_line1b",
	},
	{
		type = "item",
		name = "y-atomic-constructor", place_result = "y-atomic-constructor", stack_size = 10,
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/cimota-icon.png",
		order = "a1",				
		subgroup = "y_line1b",
	},
	{
		type = "item",
		name = "y-alien-infuser", place_result = "y-alien-infuser", stack_size = 5,
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/alien_infuser_icon.png",
		order = "a3",				
		subgroup = "y_line1b",
	},
	-- alien Water generator
	{
		type = "item",
		name = "y-water-gen", place_result = "y-water-gen", stack_size = 15, default_request_amount = 5,
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/alien_water_gen_icon.png",
		order="water-gen1",
		subgroup = "y_refine_machinery",
	},
	-- alien Water generator electric
	{
		type = "item",
		name = "y-water-gen-e", place_result = "y-water-gen-e", stack_size = 15, default_request_amount = 5,
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/alien_water_gen-e-icon.png",
		order="water-gen2",
		subgroup = "y_refine_machinery",		
	},
	-- Water mixer
	{
		type = "item",
		name = "y_water_mixer", place_result = "y_water_mixer", stack_size = 15, default_request_amount = 5,
		icon_size = 64, icon =  "__Yuoki__/graphics/entity/water_mixer_icon.png",
		order="water-mix",
		subgroup = "y_refine_machinery",		
	},
	
})