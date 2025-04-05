data:extend(
{

	-- Drillhead
	{
		type = "recipe",
		name = "y_drillhead",
		enabled = true,
		energy_required = 8,
		ingredients = {
			{type="item", name="y_structure_element", amount=5},
			{type="item", name="y_structure_vessel", amount=3},
		},
		results = {
			{type="item", name="y_drillhead", amount=1},
		},
		main_product = "y_drillhead",
		subgroup = "y-parts",
	},
	{
		type = "recipe",
		name = "y_drillhead_repair",
		enabled = true,
		energy_required = 2,
		ingredients = {
			{type="item", name="y_drillhead_broken", amount=4},
			{type="item", name="y-repair-durotal", amount=1},
			{type="item", name="y-refined-yres1", amount=1},
		},
		results = {
			{type="item",name="y_drillhead",amount=4},
			{type="item",name="y-repair-durotal",amount=1},
			{type="item",name="y_rwtechsign",amount=1},
		},
		main_product = "y_drillhead",
		subgroup = "yuoki-formpress",
		category = "yuoki-repair",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/drillhead_repair.png",
		order="1A",
	},
	{
		type = "item",
		name = "y_drillhead",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/icon-5e.png",
		stack_size = 50,
		default_request_amount = 10,
		group = "yuoki",
		subgroup = "yuoki-formpress",
	},
	{
		type = "item",
		name = "y_drillhead_broken",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/icon-5c.png",
		stack_size = 50,
		default_request_amount = 10,
		group = "yuoki",
		subgroup = "yuoki-formpress",
	},

	-- Toolhead	
	{
		type = "recipe",
		name = "y_toolhead",
		enabled = true,
		energy_required = 8,
		ingredients = {
			{type="item", name="y_structure_element", amount=5},
			{type="item", name="y_structure_vessel", amount=3},
		},
		results = {
			{type="item", name="y_toolhead", amount=1},
		},
		main_product = "y_toolhead",
		subgroup = "y-parts",
	},
	{
		type = "recipe",
		name = "y_toolhead_repair",
		enabled = true,
		energy_required = 2,
		ingredients = {
			{type="item", name="y_toolhead_broken", amount=4},
			{type="item", name="y-repair-durotal", amount=1},
			{type="item", name="stone-brick", amount=1},
		},
		results = {
			{type="item",name="y_toolhead",amount=4},
			{type="item",name="y-repair-durotal",amount=1},
			{type="item",name="y_rwtechsign",amount=1},
		},
		main_product = "y_toolhead",
		subgroup = "yuoki-formpress",
		category = "yuoki-repair",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/toolhead_repair.png",
		order="1B",
	},
	{
		type = "item",
		name = "y_toolhead",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/toolhead.png",
		stack_size = 75,
		default_request_amount = 10,
		group = "yuoki",
		subgroup = "yuoki-formpress",
	},
	{
		type = "item",
		name = "y_toolhead_broken",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/toolhead_broken.png",
		stack_size = 75,
		default_request_amount = 10,
		group = "yuoki",
		subgroup = "yuoki-formpress",
	},

	{
		type = "recipe",
		name = "y-digfdirt",
		enabled = true, energy_required = 4,
		ingredients = {

		},
		results = {
			{type="item", name="y-dirt", amount=1},
		},
		main_product = "y-dirt",
		subgroup = "y_line2",
		category="yuoki-raw-material",
		order="dfd1",
	},

	{
		type = "recipe",
		name = "y-digfdirt2",
		enabled = true, energy_required = 4,
		ingredients = {{type="item", name="y_drillhead", amount=1},},
		results = {
			{type="item",name="y-dirt",amount=8},
			{type="item",name="y_drillhead_broken",amount=1}
		},
		main_product = "y-dirt",
		subgroup = "y_line2",
		category="yuoki-raw-material",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/dirt_whead.png",
		order="dfd2",
	},


	-- washings
	{
		type = "recipe",
		name = "y-wash-dirt",
		category = "yuoki-archaeology-wash",
		energy_required = 6,
		ingredients = {
			{type="item", name="y-dirt", amount=7},
			{type="fluid", name="water", amount=175},
		},
		results=
		{
			{type="item", name="stone", amount=3, },
			{type="item", name="y-crystal2", amount=1, },
			{type="fluid", name="y-con_water", amount=150, }
		},
		main_product = "y-crystal2",
		enabled = true,
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/alien-crystal.png",
		order = "m-refined-rare3",
		subgroup = "y_line2",
	},

	{
		type = "recipe",
		name = "y-wash-special",
		category = "yuoki-archaeology-wash", enabled = true, energy_required = 6.0,
		ingredients = {
			{type="item", name="y-dirt", amount=8},
			{type="fluid", name="water", amount=1200},
		},
		results={
			{type="item", name="y-c_mud", amount=10, },
		},
		main_product = "y-c_mud",
		icon_size = 64,
		icon =  "__Yuoki__/graphics/icons/c_mud_icon.png",
		subgroup = "y_line2",
		order="m-refined-",
	},

})