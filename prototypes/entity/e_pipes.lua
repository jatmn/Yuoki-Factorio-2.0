--- @param i integer
local function make_visualization(i)
	return
	{
	  filename = "__base__/graphics/entity/pipe/visualization.png",
	  priority = "extra-high",
	  x = i * 64,
	  size = 64,
	  scale = 0.5,
	  flags = {"icon"},
	}
  end

  --- @param i integer
local function make_disabled_visualization(i)
	return
	{
	  filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
	  priority = "extra-high",
	  x = i * 64,
	  size = 64,
	  scale = 0.5,
	  flags = {"icon"},
	}
  end

pipepictures_hv = function()
return {
	straight_vertical_single =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_sv_b.png",
		--filename = "__yi_engines__/graphics/entity/pipe-hc/pipe-straight-vertical-window.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	straight_vertical =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_sv_b.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	straight_vertical_window =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_vclean_b.png",
		--filename = "__yi_engines__/graphics/entity/pipe-hc/pipe-straight-vertical-single.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	straight_horizontal_single =
	{		
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_sh_b.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},	
	straight_horizontal_window =
	{		
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_hclean_b.png",
		priority = "extra-high",
		width = 40,
		height = 40,		
	},
	straight_horizontal =
	{	
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_sh_b.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},	
	corner_up_right =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_ur_b.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	corner_up_left =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_ul_b.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	corner_down_right =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_dr_b.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	corner_down_left =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_dl_b.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	t_up =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_tu_b.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	t_down =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_td_b.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	t_right =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_tr_b.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	t_left =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_tl_b.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	cross =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_cross_b.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	ending_up =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_ed_b.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	ending_down =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_eu_b.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	ending_right =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_el_b.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	ending_left =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_er_b.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	horizontal_window_background =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/clear.png",
		priority = "extra-high",
		width = 32,
		height = 32
	},
	vertical_window_background =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/clear.png",
		priority = "extra-high",
		width = 32,
		height = 32
	},
	fluid_background =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/clear.png",
		priority = "extra-high",
		width = 32,
		height = 20
	},
	low_temperature_flow =
	{
		filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
		priority = "extra-high",
		width = 160,
		height = 20
	},
	middle_temperature_flow =
	{
		filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
		priority = "extra-high",
		width = 160,
		height = 20
	},
	high_temperature_flow =
	{
		filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
		priority = "extra-high",
		width = 160,
		height = 20
	},
	gas_flow =
	{
		filename = "__base__/graphics/entity/pipe/steam.png",
		priority = "extra-high",
		line_length = 10,
		width = 24,
		height = 15,
		frame_count = 60,
		axially_symmetrical = false,
		direction_count = 1,
		hr_version =
		{
			filename = "__base__/graphics/entity/pipe/hr-steam.png",
			priority = "extra-high",
			line_length = 10,
			width = 48,
			height = 30,
			frame_count = 60,
			axially_symmetrical = false,
			direction_count = 1
		}
	},
	straight_vertical_single_visualization = make_visualization(0),
    straight_vertical_visualization = make_visualization(5),
    straight_vertical_window_visualization = make_visualization(5),
    straight_horizontal_window_visualization = make_visualization(10),
    straight_horizontal_visualization = make_visualization(10),
    corner_up_right_visualization = make_visualization(3),
    corner_up_left_visualization = make_visualization(9),
    corner_down_right_visualization = make_visualization(6),
    corner_down_left_visualization = make_visualization(12),
    t_up_visualization = make_visualization(11),
    t_down_visualization = make_visualization(14),
    t_right_visualization = make_visualization(7),
    t_left_visualization = make_visualization(13),
    cross_visualization = make_visualization(15),
    ending_up_visualization = make_visualization(1),
    ending_down_visualization = make_visualization(4),
    ending_right_visualization = make_visualization(2),
    ending_left_visualization = make_visualization(8),
    straight_vertical_single_disabled_visualization = make_disabled_visualization(0),
    straight_vertical_disabled_visualization = make_disabled_visualization(5),
    straight_vertical_window_disabled_visualization = make_disabled_visualization(5),
    straight_horizontal_window_disabled_visualization = make_disabled_visualization(10),
    straight_horizontal_disabled_visualization = make_disabled_visualization(10),
    corner_up_right_disabled_visualization = make_disabled_visualization(3),
    corner_up_left_disabled_visualization = make_disabled_visualization(9),
    corner_down_right_disabled_visualization = make_disabled_visualization(6),
    corner_down_left_disabled_visualization = make_disabled_visualization(12),
    t_up_disabled_visualization = make_disabled_visualization(11),
    t_down_disabled_visualization = make_disabled_visualization(14),
    t_right_disabled_visualization = make_disabled_visualization(7),
    t_left_disabled_visualization = make_disabled_visualization(13),
    cross_disabled_visualization = make_disabled_visualization(15),
    ending_up_disabled_visualization = make_disabled_visualization(1),
    ending_down_disabled_visualization = make_disabled_visualization(4),
    ending_right_disabled_visualization = make_disabled_visualization(2),
    ending_left_disabled_visualization = make_disabled_visualization(8),
}
end


pipepictures_ec = function()
return {
	straight_vertical_single =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_sv.png",
		--filename = "__yi_engines__/graphics/entity/pipe-hc/pipe-straight-vertical-window.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	straight_vertical =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_sv.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	straight_vertical_window =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_vclean.png",
		--filename = "__yi_engines__/graphics/entity/pipe-hc/pipe-straight-vertical-single.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	straight_horizontal_single =
	{		
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_sh.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},	
	straight_horizontal_window =
	{		
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_hclean.png",
		priority = "extra-high",
		width = 40,
		height = 40,
		shift = {-0.125,0}
	},
	straight_horizontal =
	{	
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_sh.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},	
	corner_up_right =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_ur.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	corner_up_left =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_ul.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	corner_down_right =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_dr.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	corner_down_left =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_dl.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	t_up =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_tu.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	t_down =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_td.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	t_right =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_tr.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	t_left =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_tl.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	cross =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_cross.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	ending_up =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_ed.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	ending_down =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_eu.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	ending_right =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_el.png",
		priority = "extra-high",
		width = 40,
		height = 40
	},
	ending_left =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_er.png",
		priority = "extra-high",
		width = 40,
		height = 40,
		shift = { -0.05,0},
	},
	horizontal_window_background =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/clear.png",
		priority = "extra-high",
		width = 32,
		height = 32
	},
	vertical_window_background =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/clear.png",
		priority = "extra-high",
		width = 32,
		height = 32
	},
	fluid_background =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/clear.png",
		priority = "extra-high",
		width = 32,
		height = 20
	},
	low_temperature_flow =
	{
		filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
		priority = "extra-high",
		width = 160,
		height = 20
	},
	middle_temperature_flow =
	{
		filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
		priority = "extra-high",
		width = 160,
		height = 20
	},
	high_temperature_flow =
	{
		filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
		priority = "extra-high",
		width = 160,
		height = 20
	},
	gas_flow =
	{
		filename = "__base__/graphics/entity/pipe/steam.png",
		priority = "extra-high",
		line_length = 10,
		width = 24,
		height = 15,
		frame_count = 60,
		axially_symmetrical = false,
		direction_count = 1,
		hr_version =
		{
			filename = "__base__/graphics/entity/pipe/hr-steam.png",
			priority = "extra-high",
			line_length = 10,
			width = 48,
			height = 30,
			frame_count = 60,
			axially_symmetrical = false,
			direction_count = 1
		}

	},
	straight_vertical_single_visualization = make_visualization(0),
    straight_vertical_visualization = make_visualization(5),
    straight_vertical_window_visualization = make_visualization(5),
    straight_horizontal_window_visualization = make_visualization(10),
    straight_horizontal_visualization = make_visualization(10),
    corner_up_right_visualization = make_visualization(3),
    corner_up_left_visualization = make_visualization(9),
    corner_down_right_visualization = make_visualization(6),
    corner_down_left_visualization = make_visualization(12),
    t_up_visualization = make_visualization(11),
    t_down_visualization = make_visualization(14),
    t_right_visualization = make_visualization(7),
    t_left_visualization = make_visualization(13),
    cross_visualization = make_visualization(15),
    ending_up_visualization = make_visualization(1),
    ending_down_visualization = make_visualization(4),
    ending_right_visualization = make_visualization(2),
    ending_left_visualization = make_visualization(8),
    straight_vertical_single_disabled_visualization = make_disabled_visualization(0),
    straight_vertical_disabled_visualization = make_disabled_visualization(5),
    straight_vertical_window_disabled_visualization = make_disabled_visualization(5),
    straight_horizontal_window_disabled_visualization = make_disabled_visualization(10),
    straight_horizontal_disabled_visualization = make_disabled_visualization(10),
    corner_up_right_disabled_visualization = make_disabled_visualization(3),
    corner_up_left_disabled_visualization = make_disabled_visualization(9),
    corner_down_right_disabled_visualization = make_disabled_visualization(6),
    corner_down_left_disabled_visualization = make_disabled_visualization(12),
    t_up_disabled_visualization = make_disabled_visualization(11),
    t_down_disabled_visualization = make_disabled_visualization(14),
    t_right_disabled_visualization = make_disabled_visualization(7),
    t_left_disabled_visualization = make_disabled_visualization(13),
    cross_disabled_visualization = make_disabled_visualization(15),
    ending_up_disabled_visualization = make_disabled_visualization(1),
    ending_down_disabled_visualization = make_disabled_visualization(4),
    ending_right_disabled_visualization = make_disabled_visualization(2),
    ending_left_disabled_visualization = make_disabled_visualization(8),
		
}
end

pipepictures_green = function()
return {
	straight_vertical_single =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_ns_c.png",
		--filename = "__yi_engines__/graphics/entity/pipe-hc/pipe-straight-vertical-window.png",
		priority = "extra-high",
		width = 80,	height = 80 , scale = 0.5, shift = { 0, -0.075 }
	},
	straight_vertical =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_ns.png",
		priority = "extra-high",
		width = 80,	height = 80 , scale = 0.5, shift = { 0, -0.075 }
	},
	straight_vertical_window =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_ns_c.png",
		--filename = "__yi_engines__/graphics/entity/pipe-hc/pipe-straight-vertical-single.png",
		priority = "extra-high",
		width = 80,	height = 80 , scale = 0.5, shift = { 0, -0.075 }
	},
	straight_horizontal_single =
	{		
		filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_we_c.png",
		priority = "extra-high",
		width = 80,	height = 80 , scale = 0.5, shift = { -0.1, -0.075 }
	},	
	straight_horizontal_window =
	{		
		filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_we.png",
		priority = "extra-high",
		width = 80,	height = 80 , scale = 0.5, shift = { -0.1, -0.075 }
	},
	straight_horizontal =
	{	
		filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_we_c.png",
		priority = "extra-high",
		width = 80,	height = 80 , scale = 0.5, shift = { -0.1, -0.075 }
	},	
	corner_up_right =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_bor.png",
		priority = "extra-high",
		width = 80,	height = 80 , scale = 0.5, shift = { 0, -0.075 }
	},
	corner_up_left =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_blo.png",
		priority = "extra-high",
		width = 80,	height = 80 , scale = 0.5, shift = { 0, -0.075 }
	},
	corner_down_right =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_bru.png",
		priority = "extra-high",
		width = 80,	height = 80 , scale = 0.5, shift = { 0, -0.075 }
	},
	corner_down_left =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_blu.png",
		priority = "extra-high",
		width = 80,	height = 80 , scale = 0.5, shift = { 0, -0.075 }
	},
	t_up =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_tu.png",
		priority = "extra-high",
		width = 80,	height = 80 , scale = 0.5, shift = { 0, -0.075 }
	},
	t_down =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_td.png",
		priority = "extra-high",
		width = 80,	height = 80 , scale = 0.5, shift = { 0, -0.075 }
	},
	t_right =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_tr.png",
		priority = "extra-high",
		width = 80,	height = 80 , scale = 0.5, shift = { 0, -0.075 }
	},
	t_left =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_tl.png",
		priority = "extra-high",
		width = 80,	height = 80 , scale = 0.5, shift = { 0, -0.075 }
	},
	cross =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_cross.png",
		priority = "extra-high",
		width = 80,	height = 80 , scale = 0.5, shift = { 0, -0.075 }
	},
	ending_up =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_ed.png",
		priority = "extra-high",
		width = 80,	height = 80 , scale = 0.5, shift = { 0, -0.075 }
	},
	ending_down =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_eu.png",
		priority = "extra-high",
		width = 80,	height = 80 , scale = 0.5, shift = { 0, -0.075 }
	},
	ending_right =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_el.png",
		priority = "extra-high",
		width = 80,	height = 80 , scale = 0.5, shift = { 0, -0.075 }
	},
	ending_left =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_er.png",
		priority = "extra-high",
		width = 80,	height = 80 , scale = 0.5, shift = { -0.05, -0.075 }
	},
	horizontal_window_background =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/clear.png",
		priority = "extra-high",
		width = 32,
		height = 32
	},
	vertical_window_background =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/clear.png",
		priority = "extra-high",
		width = 32,
		height = 32
	},
	fluid_background =
	{
		filename = "__Yuoki__/graphics/entity/pipe-hc/clear.png",
		priority = "extra-high",
		width = 32,
		height = 20
	},
	low_temperature_flow =
	{
		filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
		priority = "extra-high",
		width = 160,
		height = 20
	},
	middle_temperature_flow =
	{
		filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
		priority = "extra-high",
		width = 160,
		height = 20
	},
	high_temperature_flow =
	{
		filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
		priority = "extra-high",
		width = 160,
		height = 20
	},
	gas_flow =
	{
		filename = "__base__/graphics/entity/pipe/steam.png",
		priority = "extra-high",
		line_length = 10,
		width = 24,
		height = 15,
		frame_count = 60,
		axially_symmetrical = false,
		direction_count = 1,
		hr_version =
		{
			filename = "__base__/graphics/entity/pipe/hr-steam.png",
			priority = "extra-high",
			line_length = 10,
			width = 48,
			height = 30,
			frame_count = 60,
			axially_symmetrical = false,
			direction_count = 1
		}
	},	
	straight_vertical_single_visualization = make_visualization(0),
    straight_vertical_visualization = make_visualization(5),
    straight_vertical_window_visualization = make_visualization(5),
    straight_horizontal_window_visualization = make_visualization(10),
    straight_horizontal_visualization = make_visualization(10),
    corner_up_right_visualization = make_visualization(3),
    corner_up_left_visualization = make_visualization(9),
    corner_down_right_visualization = make_visualization(6),
    corner_down_left_visualization = make_visualization(12),
    t_up_visualization = make_visualization(11),
    t_down_visualization = make_visualization(14),
    t_right_visualization = make_visualization(7),
    t_left_visualization = make_visualization(13),
    cross_visualization = make_visualization(15),
    ending_up_visualization = make_visualization(1),
    ending_down_visualization = make_visualization(4),
    ending_right_visualization = make_visualization(2),
    ending_left_visualization = make_visualization(8),
    straight_vertical_single_disabled_visualization = make_disabled_visualization(0),
    straight_vertical_disabled_visualization = make_disabled_visualization(5),
    straight_vertical_window_disabled_visualization = make_disabled_visualization(5),
    straight_horizontal_window_disabled_visualization = make_disabled_visualization(10),
    straight_horizontal_disabled_visualization = make_disabled_visualization(10),
    corner_up_right_disabled_visualization = make_disabled_visualization(3),
    corner_up_left_disabled_visualization = make_disabled_visualization(9),
    corner_down_right_disabled_visualization = make_disabled_visualization(6),
    corner_down_left_disabled_visualization = make_disabled_visualization(12),
    t_up_disabled_visualization = make_disabled_visualization(11),
    t_down_disabled_visualization = make_disabled_visualization(14),
    t_right_disabled_visualization = make_disabled_visualization(7),
    t_left_disabled_visualization = make_disabled_visualization(13),
    cross_disabled_visualization = make_disabled_visualization(15),
    ending_up_disabled_visualization = make_disabled_visualization(1),
    ending_down_disabled_visualization = make_disabled_visualization(4),
    ending_right_disabled_visualization = make_disabled_visualization(2),
    ending_left_disabled_visualization = make_disabled_visualization(8),
}
end



data:extend(
{

	{
		type = "pipe",
		name = "y-pipe-h",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/pipe-h.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 0.1, result = "y-pipe-h"},
		max_health = 50,
		corpse = "pipe-remnants",
		dying_explosion = "pipe-explosion",
		--icon_draw_specification = {scale = 0.5},
		resistances =
		{
		  {
			type = "fire",
			percent = 80
		  },
		  {
			type = "impact",
			percent = 30
		  }
		},
		fast_replaceable_group = "pipe",
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		--damaged_trigger_effect = hit_effects.entity(),
		fluid_box =
		{
		  volume = 200,
		  pipe_covers = pipecoverspictures(), -- in case a real pipe is connected to a ghost
		  pipe_connections =
		  {
			--{ direction = defines.direction.north, position = {0, 0} },
			{ direction = defines.direction.east, position = {0, 0} },
			--{ direction = defines.direction.sout, position = {0, 0} },
			{ direction = defines.direction.west, position = {0, 0} }
		  },
		  hide_connection_info = true
		},
		--impact_category = "metal",
		pictures = pipepictures_hv(),
		--working_sound = sounds.pipe,
		--open_sound = sounds.metal_small_open,
		--close_sound = sounds.metal_small_close,
	
		horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.15625}},
		vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}}
	},


	{
		type = "pipe",
		name = "y-pipe-v",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/pipe-v.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 0.1, result = "y-pipe-v"},
		max_health = 50,
		corpse = "pipe-remnants",
		dying_explosion = "pipe-explosion",
		--icon_draw_specification = {scale = 0.5},
		resistances =
		{
		  {
			type = "fire",
			percent = 80
		  },
		  {
			type = "impact",
			percent = 30
		  }
		},
		fast_replaceable_group = "pipe",
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		--damaged_trigger_effect = hit_effects.entity(),
		fluid_box =
		{
		  volume = 200,
		  pipe_covers = pipecoverspictures(), -- in case a real pipe is connected to a ghost
		  pipe_connections =
		  {
			{ direction = defines.direction.north, position = {0, 0} },
			--{ direction = defines.direction.east, position = {0, 0} },
			{ direction = defines.direction.south, position = {0, 0} },
			--{ direction = defines.direction.west, position = {0, 0} }
		  },
		  hide_connection_info = true
		},
		--impact_category = "metal",
		pictures = pipepictures_hv(),
		--working_sound = sounds.pipe,
		--open_sound = sounds.metal_small_open,
		--close_sound = sounds.metal_small_close,
	
		horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.15625}},
		vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}}
	  },

	-- PipeBuffer also flow restriction test
	{
		type = "storage-tank",
		name = "y-valve-direction-buffer",
		 icon_size = 64, icon =  "__Yuoki__/graphics/icons/pressure_pipe_icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 0.1, result = "y-valve-direction-buffer"},
		max_health = 150,
		corpse = "small-remnants",
		collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box =
		{
			volume = 200,
			pipe_covers = pipecoverspictures(),
			pipe_connections =
			{
				{ flow_direction="input-output", direction = defines.direction.east, position = {0, 0},},
				{ flow_direction="input-output", direction = defines.direction.west, position = { 0, 0} },
			},			
		},
		two_direction_only = true,
		window_bounding_box = {{-0.05, -0.5}, {0.05, 0.0}},
		pictures={
			picture =
			{
				sheet={
					filename = "__Yuoki__/graphics/entity/valve_sheet.png",
					priority = "high",
					frames = 4,
					width = 64,
					height = 64,
					scale = 0.8,
					shift = {0.0, -0.25}
				}			
			},
			fluid_background =
			{
				filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
				priority = "extra-high",
				width = 16,
				height = 15
			},
			window_background =
			{
				filename = "__base__/graphics/entity/storage-tank/window-background.png",
				priority = "extra-high",
				width = 17,
				height = 24
			},
			flow_sprite =
			{
				filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
				priority = "extra-high",
				width = 160,
				height = 20
			},		
		gas_flow =
		{
			filename = "__base__/graphics/entity/pipe/steam.png",
			priority = "extra-high",
			line_length = 10,
			width = 24,
			height = 15,
			frame_count = 60,
			axially_symmetrical = false,
			direction_count = 1,
			animation_speed = 0.25,
			hr_version =
			{
				filename = "__base__/graphics/entity/pipe/hr-steam.png",
				priority = "extra-high",
				line_length = 10,
				width = 48,
				height = 30,
				frame_count = 60,
				axially_symmetrical = false,
				animation_speed = 0.25,
				direction_count = 1
			}
		}
			
		},
		flow_length_in_ticks = 360,
		circuit_wire_connection_points =
		{
			{
				shadow =
				{
					red = {-0.55, -0.15},
					green = {-0.75, -0.15},
				},
				wire =
				{
					red = {-0.55, -0.15},
					green = {-0.75, -0.15},
				}
			},
			{
				shadow =
				{
					red = {-0.55, -0.15},
					green = {-0.75, -0.15},
				},
				wire =
				{
					red = {-0.55, -0.15},
					green = {-0.75, -0.15},
				}
			},
			{
				shadow =
				{
					red = {-0.55, -0.15},
					green = {-0.75, -0.15},
				},
				wire =
				{
					red = {-0.55, -0.15},
					green = {-0.75, -0.15},
				}
			},
			{
				shadow =
				{
					red = {-0.55, -0.15},
					green = {-0.75, -0.15},
				},
				wire =
				{
					red = {-0.55, -0.15},
					green = {-0.75, -0.15},
				}
			}
		},
		circuit_wire_max_distance = 15,				
	    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
		circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,					
	},

	{
		type = "pipe",
		name = "y-pipe-hc",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/pipe-hc.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 0.1, result = "y-pipe-hc"},
		max_health = 80,
		corpse = "pipe-remnants",
		dying_explosion = "pipe-explosion",
		icon_draw_specification = {scale = 0.5},
		resistances =
		{
		  {
			type = "fire",
			percent = 80
		  },
		  {
			type = "impact",
			percent = 30
		  }
		},
		fast_replaceable_group = "pipe",
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		--damaged_trigger_effect = hit_effects.entity(),
		fluid_box =
		{
		  volume = 200,
		  pipe_covers = pipecoverspictures(), -- in case a real pipe is connected to a ghost
		  pipe_connections =
		  {
			{ direction = defines.direction.north, position = {0, 0} },
			{ direction = defines.direction.east, position = {0, 0} },
			{ direction = defines.direction.south, position = {0, 0} },
			{ direction = defines.direction.west, position = {0, 0} }
		  },
		  hide_connection_info = true
		},
		--impact_category = "metal",
		pictures = pipepictures_hv(),
		--working_sound = sounds.pipe,
		--open_sound = sounds.metal_small_open,
		--close_sound = sounds.metal_small_close,
	
		horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.15625}},
		vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}}
	  },

	{
		type = "pipe-to-ground",
		name = "y-pipe-to-ground-hc",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/pipe-tg-hc.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 0.1, result = "y-pipe-to-ground-hc"},
		max_health = 80,
		corpse = "pipe-to-ground-remnants",
		dying_explosion = "pipe-to-ground-explosion",
		--factoriopedia_simulation = simulations.factoriopedia_pipe_to_ground,
		icon_draw_specification = {scale = 0.5},
		resistances =
		{
		  {
			type = "fire",
			percent = 80
		  },
		  {
			type = "impact",
			percent = 40
		  }
	
		},
		fast_replaceable_group = "pipe",
		collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		--damaged_trigger_effect = hit_effects.entity(),
		fluid_box =
		{
		  volume =200,
		  --pipe_covers = pipecoverspictures(),
		  pipe_connections =
		  {
			{ direction = defines.direction.north, position = {0, 0} },
			{
			  connection_type = "underground",
			  direction = defines.direction.south,
			  position = {0, 0},
			  max_underground_distance = 20
			}
		  },
		  hide_connection_info = true
		},
		impact_category = "metal",
		--working_sound = sounds.pipe,
		--open_sound = sounds.metal_small_open,
		--close_sound = sounds.metal_small_close,
		pictures =
		{
			north =
			{
				filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_gu_b.png",
				priority = "high",
				width = 40,
				height = 40 --, shift = {0.10, -0.04}
			},
			south =
			{
				filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_gd_b.png",
				priority = "high",
				width = 40,
				height = 40 --, shift = {0.05, 0}
			},
			west =
			{
				filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_gl_b.png",
				priority = "high",
				width = 40,
				height = 40, shift = { 0.1, 0.075}
			},
			east =
			{
				filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_gr_b.png",
				priority = "high",
				width = 40,
				height = 40, shift = {0.1, 0.075},
			},
		},
		visualization =
		{
		  north =
		  {
			filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
			priority = "extra-high",
			x = 64,
			size = 64,
			scale = 0.5,
			flags = {"icon"}
		  },
		  south =
		  {
			filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
			priority = "extra-high",
			x = 192,
			size = 64,
			scale = 0.5,
			flags = {"icon"}
		  },
		  west =
		  {
			filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
			priority = "extra-high",
			x = 256,
			size = 64,
			scale = 0.5,
			flags = {"icon"}
		  },
		  east =
		  {
			filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
			priority = "extra-high",
			x = 128,
			size = 64,
			scale = 0.5,
			flags = {"icon"}
		  },
		},
		disabled_visualization =
		{
		  north =
		  {
			filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
			priority = "extra-high",
			x = 64,
			size = 64,
			scale = 0.5,
			flags = {"icon"}
		  },
		  south =
		  {
			filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
			priority = "extra-high",
			x = 192,
			size = 64,
			scale = 0.5,
			flags = {"icon"}
		  },
		  west =
		  {
			filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
			priority = "extra-high",
			x = 256,
			size = 64,
			scale = 0.5,
			flags = {"icon"}
		  },
		  east =
		  {
			filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
			priority = "extra-high",
			x = 128,
			size = 64,
			scale = 0.5,
			flags = {"icon"}
		  },
		},
	  },


{
	type = "pipe",
	name = "y-pipe-ec",
	icon_size = 64, icon =  "__Yuoki__/graphics/icons/pipe-ec.png",
	flags = {"placeable-neutral", "player-creation"},
	minable = {mining_time = 0.1, result = "y-pipe-ec"},
	max_health = 100,
	corpse = "pipe-remnants",
	dying_explosion = "pipe-explosion",
	icon_draw_specification = {scale = 0.5},
	resistances =
	{
	  {
		type = "fire",
		percent = 80
	  },
	  {
		type = "impact",
		percent = 30
	  }
	},
	fast_replaceable_group = "pipe",
	collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	--damaged_trigger_effect = hit_effects.entity(),
	fluid_box =
	{
	  volume = 200,
	  pipe_covers = pipecoverspictures(), -- in case a real pipe is connected to a ghost
	  pipe_connections =
	  {
		{ direction = defines.direction.north, position = {0, 0} },
		{ direction = defines.direction.east, position = {0, 0} },
		{ direction = defines.direction.south, position = {0, 0} },
		{ direction = defines.direction.west, position = {0, 0} }
	  },
	  hide_connection_info = true
	},
	--impact_category = "metal",
	pictures = pipepictures_ec(),
	--working_sound = sounds.pipe,
	--open_sound = sounds.metal_small_open,
	--close_sound = sounds.metal_small_close,

	horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.15625}},
	vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}}
  },

	{
		type = "pipe-to-ground",
		name = "y-pipe-to-ground-ec",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/pipe-tg-ec.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 0.1, result = "y-pipe-to-ground-ec"},
		max_health = 100,
		corpse = "pipe-to-ground-remnants",
		dying_explosion = "pipe-to-ground-explosion",
		--factoriopedia_simulation = simulations.factoriopedia_pipe_to_ground,
		icon_draw_specification = {scale = 0.5},
		resistances =
		{
		  {
			type = "fire",
			percent = 80
		  },
		  {
			type = "impact",
			percent = 40
		  }
	
		},
		fast_replaceable_group = "pipe",
		collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		--damaged_trigger_effect = hit_effects.entity(),
		fluid_box =
		{
		  volume =200,
		  --pipe_covers = pipecoverspictures(),
		  pipe_connections =
		  {
			{ direction = defines.direction.north, position = {0, 0} },
			{
			  connection_type = "underground",
			  direction = defines.direction.south,
			  position = {0, 0},
			  max_underground_distance = 30
			}
		  },
		  hide_connection_info = true
		},
		impact_category = "metal",
		--working_sound = sounds.pipe,
		--open_sound = sounds.metal_small_open,
		--close_sound = sounds.metal_small_close,
		pictures =
		{
			north =
			{
				filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_gu.png",
				priority = "high",
				width = 40,
				height = 40 --, shift = {0.10, -0.04}
			},
			south =
			{
				filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_gd.png",
				priority = "high",
				width = 40,
				height = 40 --, shift = {0.05, 0}
			},
			west =
			{
				filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_gl.png",
				priority = "high",
				width = 40,
				height = 40, shift = { 0.1, 0.075}
			},
			east =
			{
				filename = "__Yuoki__/graphics/entity/pipe-hc/u_pipe_gr.png",
				priority = "high",
				width = 40,
				height = 40, shift = { 0.1, 0.075}
			},
		},
		visualization =
		{
		  north =
		  {
			filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
			priority = "extra-high",
			x = 64,
			size = 64,
			scale = 0.5,
			flags = {"icon"}
		  },
		  south =
		  {
			filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
			priority = "extra-high",
			x = 192,
			size = 64,
			scale = 0.5,
			flags = {"icon"}
		  },
		  west =
		  {
			filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
			priority = "extra-high",
			x = 256,
			size = 64,
			scale = 0.5,
			flags = {"icon"}
		  },
		  east =
		  {
			filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
			priority = "extra-high",
			x = 128,
			size = 64,
			scale = 0.5,
			flags = {"icon"}
		  },
		},
		disabled_visualization =
		{
		  north =
		  {
			filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
			priority = "extra-high",
			x = 64,
			size = 64,
			scale = 0.5,
			flags = {"icon"}
		  },
		  south =
		  {
			filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
			priority = "extra-high",
			x = 192,
			size = 64,
			scale = 0.5,
			flags = {"icon"}
		  },
		  west =
		  {
			filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
			priority = "extra-high",
			x = 256,
			size = 64,
			scale = 0.5,
			flags = {"icon"}
		  },
		  east =
		  {
			filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
			priority = "extra-high",
			x = 128,
			size = 64,
			scale = 0.5,
			flags = {"icon"}
		  },
		},
	  },


	
	
	{
		type = "storage-tank",
		name = "y-tank-1000",
		 icon_size = 64, icon =  "__Yuoki__/graphics/icons/tank-1000-icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y-tank-1000"},
		max_health = 150,
		corpse = "small-remnants",
		collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
		fluid_box =
		{
			volume = 4000,
			base_area = 150,
			base_level = 0,
			--pipe_covers = pipecoverspictures(),
			pipe_connections =
			{
				{ direction = defines.direction.north, position = {  0.5, -0.5} },
				{ direction = defines.direction.south, position = {   -0.5, 0.5} },
			},			
		},
		window_bounding_box = {{-0.05, -0.5}, {0.05, 0.0}},
		pictures={

			picture =
			{
				sheet={
					filename = "__Yuoki__/graphics/entity/tank_35n.png",
					priority = "high",
					frames = 2,
					width = 96,
					height = 96,
					shift = { 0.31, 0.0 },
				}
			},
			fluid_background =
			{
				filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
				priority = "extra-high",
				width = 32,
				height = 15
			},
			window_background =
			{
				filename = "__base__/graphics/entity/storage-tank/window-background.png",
				priority = "extra-high",
				width = 17,
				height = 24
			},
			flow_sprite =
			{
				filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
				priority = "extra-high",
				width = 160,
				height = 20
			},	
		gas_flow =
		{
			filename = "__base__/graphics/entity/pipe/steam.png",
			priority = "extra-high",
			line_length = 10,
			width = 24,
			height = 15,
			frame_count = 60,
			axially_symmetrical = false,
			direction_count = 1,
			animation_speed = 0.25,
			hr_version =
			{
				filename = "__base__/graphics/entity/pipe/hr-steam.png",
				priority = "extra-high",
				line_length = 10,
				width = 48,
				height = 30,
				frame_count = 60,
				axially_symmetrical = false,
				animation_speed = 0.25,
				direction_count = 1
			},
		}
			
		},
		flow_length_in_ticks = 360,
		circuit_wire_connection_points =
		{
			{
				shadow =
				{
					red = {2.0, 1.0},
					green = {2.0, 1.0},
				},
				wire =
				{
					red = {1.0, -0.0},
					green = {1.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 1.0},
					green = {0.0, 1.0},
				},
				wire =
				{
					red = {-1, -0.25},
					green = {-1, -0.25},
				}
			},
			{
				shadow =
				{
					red = {2.0, 1.0},
					green = {2.0, 1.0},
				},
				wire =
				{
					red = {1.0, -0.0},
					green = {1.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 1.0},
					green = {0.0, 1.0},
				},
				wire =
				{
					red = {-1, -0.25},
					green = {-1, -0.25},
				}
			}
		},
		circuit_wire_max_distance = 7.5,
		working_sound =
		{
			sound = {
				filename = "__base__/sound/storage-tank.ogg",
				volume = 0.8
			},
			apparent_volume = 1.5,
			
		},
	    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
		circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
	},
	{
		type = "storage-tank",
		name = "y-tank-4500",
		 icon_size = 64, icon =  "__Yuoki__/graphics/entity/tank-4500-icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y-tank-4500"},
		max_health = 250,
		corpse = "small-remnants",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fluid_box =
		{
			volume = 9000,
			base_area = 450, base_level = -1,
			--pipe_covers = pipecoverspictures(),
			pipe_connections = {
				{ direction = defines.direction.north, position = {  0,  -1} },
				{ direction = defines.direction.east, position = {  1, 0} },
				{ direction = defines.direction.south, position = {  0,  1} },
				{ direction = defines.direction.west, position = { -1,  0} },
			},			
		},
		window_bounding_box = {{-0.05, -0.5}, {0.05, 0.0}},
		pictures={

			picture =
			{
				sheet={
					filename = "__Yuoki__/graphics/entity/ugt_9k.png",
					priority = "high",
					frames = 1, width = 256, height = 256, scale = 0.5,
					shift = { 0.0, 0.25 },
				}
			},
			fluid_background =
			{
				filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
				priority = "extra-high",
				width = 32,
				height = 15
			},
			window_background =
			{
				filename = "__base__/graphics/entity/storage-tank/window-background.png",
				priority = "extra-high",
				width = 17,
				height = 24
			},
			flow_sprite =
			{
				filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
				priority = "extra-high",
				width = 160,
				height = 20
			},	
		gas_flow =
		{
			filename = "__base__/graphics/entity/pipe/steam.png",
			priority = "extra-high",
			line_length = 10,
			width = 24,
			height = 15,
			frame_count = 60,
			axially_symmetrical = false,
			direction_count = 1,
			animation_speed = 0.25,
			hr_version =
			{
				filename = "__base__/graphics/entity/pipe/hr-steam.png",
				priority = "extra-high",
				line_length = 10,
				width = 48,
				height = 30,
				frame_count = 60,
				axially_symmetrical = false,
				animation_speed = 0.25,
				direction_count = 1
			}
		},
			
		},
		flow_length_in_ticks = 360,
		circuit_wire_connection_points =
		{
			{
				shadow =
				{
					red = {2.0, 1.0},
					green = {2.0, 1.0},
				},
				wire =
				{
					red = {1.0, -0.0},
					green = {1.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 1.0},
					green = {0.0, 1.0},
				},
				wire =
				{
					red = {-1, -0.25},
					green = {-1, -0.25},
				}
			},
			{
				shadow =
				{
					red = {2.0, 1.0},
					green = {2.0, 1.0},
				},
				wire =
				{
					red = {1.0, -0.0},
					green = {1.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 1.0},
					green = {0.0, 1.0},
				},
				wire =
				{
					red = {-1, -0.25},
					green = {-1, -0.25},
				}
			}
		},
		circuit_wire_max_distance = 7.5,				
		working_sound =
		{
			sound = {
				filename = "__base__/sound/storage-tank.ogg",
				volume = 0.8
			},
			apparent_volume = 1.5,			
		},
	    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
		circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
		gas_flow =
		{
			filename = "__base__/graphics/entity/pipe/steam.png",
			priority = "extra-high",
			line_length = 10,
			width = 24,
			height = 15,
			frame_count = 60,
			axially_symmetrical = false,
			direction_count = 1,
			animation_speed = 0.25,
			hr_version =
			{
				filename = "__base__/graphics/entity/pipe/hr-steam.png",
				priority = "extra-high",
				line_length = 10,
				width = 48,
				height = 30,
				frame_count = 60,
				axially_symmetrical = false,
				animation_speed = 0.25,
				direction_count = 1
			}
		}
		
	},
	{
		type = "storage-tank",
		name = "y-tank-8000",
		 icon_size = 64, icon =  "__Yuoki__/graphics/entity/tank-8000-icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y-tank-8000"},
		max_health = 300,
		corpse = "small-remnants",
		collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
		selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
		fluid_box =
		{
			volume = 24000,
			base_area = 800, base_level = 0,
			
			--[[
			pipe_connections =
			{				
				{ type="input", position = {-2, 0},},
				{ type="input", position = { 2, 0} },						
				{ position = {0, -2} },       
				{ position = {0, 2} },        
			},			
			]]
			pipe_connections = {
				{ direction = defines.direction.north, position = {  1.5, -1.6} },
				{ direction = defines.direction.east, position = {  1.5, -1.5} },
				{ direction = defines.direction.south, position = { -1.5,  1.6} },
				{ direction = defines.direction.west, position = { -1.5, 1.5} },
			},			
		},
		window_bounding_box = {{-0.05, -0.5}, {0.05, 0.0}},
		pictures={

			picture =
			{
				sheet={
					filename = "__Yuoki__/graphics/entity/ugt_24k.png",
					priority = "high",
					frames = 2, width = 384, height = 384, scale = 0.5,					
					shift = { 0.0, 0.0 },
				}
			},
			fluid_background =
			{
				filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
				priority = "extra-high",
				width = 32,
				height = 15
			},
			window_background =
			{
				filename = "__base__/graphics/entity/storage-tank/window-background.png",
				priority = "extra-high",
				width = 17,
				height = 24
			},
			flow_sprite =
			{
				filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
				priority = "extra-high",
				width = 160,
				height = 20
			},	
		gas_flow =
		{
			filename = "__base__/graphics/entity/pipe/steam.png",
			priority = "extra-high",
			line_length = 10,
			width = 24,
			height = 15,
			frame_count = 60,
			axially_symmetrical = false,
			direction_count = 1,
			animation_speed = 0.25,
			hr_version =
			{
				filename = "__base__/graphics/entity/pipe/hr-steam.png",
				priority = "extra-high",
				line_length = 10,
				width = 48,
				height = 30,
				frame_count = 60,
				axially_symmetrical = false,
				animation_speed = 0.25,
				direction_count = 1
			}
		},		
		},
		flow_length_in_ticks = 360,
		circuit_wire_connection_points =
		{
			{
				shadow =
				{
					red = {2.0, 1.0},
					green = {2.0, 1.0},
				},
				wire =
				{
					red = {1.0, -0.0},
					green = {1.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 1.0},
					green = {0.0, 1.0},
				},
				wire =
				{
					red = {-1, -0.25},
					green = {-1, -0.25},
				}
			},
			{
				shadow =
				{
					red = {2.0, 1.0},
					green = {2.0, 1.0},
				},
				wire =
				{
					red = {1.0, -0.0},
					green = {1.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 1.0},
					green = {0.0, 1.0},
				},
				wire =
				{
					red = {-1, -0.25},
					green = {-1, -0.25},
				}
			}
		},
		circuit_wire_max_distance = 7.5,				
		working_sound =
		{
			sound = {
				filename = "__base__/sound/storage-tank.ogg",
				volume = 0.8
			},
			apparent_volume = 1.5,			
		},
	    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
		circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
	},
	
	{
		type = "storage-tank",
		name = "y-tank-24k",
		 icon_size = 64, icon =  "__Yuoki__/graphics/entity/tank-48k-icon.png",
		flags = {"placeable-player", "player-creation"}, minable = { mining_time = 0.5, result = "y-tank-24k"}, corpse = "medium-remnants",
		max_health = 350,		
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fluid_box =
		{
			volume = 50000,
			base_area = 1500, base_level = -1,
			--pipe_covers = pipecoverspictures(),			
			pipe_connections = {
				{ direction = defines.direction.north, position = {  0,  -1} },
				{ direction = defines.direction.east, position = {  1, 0} },
				{ direction = defines.direction.south, position = {  0,  1} },
				{ direction = defines.direction.west, position = { -1,  0} },
			},			
		},
		window_bounding_box = {{-0.05, -0.5}, {0.05, 0.0}},
		pictures={

			picture = {
				sheet={
					filename = "__Yuoki__/graphics/entity/tank-48k-e.png",
					priority = "high",
					frames = 1, width = 128, height = 112,
					shift = { 0.315, 0.15 },
				}
			},
			fluid_background =
			{
				filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
				priority = "extra-high",
				width = 32,
				height = 15
			},
			window_background =
			{
				filename = "__base__/graphics/entity/storage-tank/window-background.png",
				priority = "extra-high",
				width = 17,
				height = 24
			},
			flow_sprite =
			{
				filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
				priority = "extra-high",
				width = 160,
				height = 20
			}		,	
		gas_flow =
		{
			filename = "__base__/graphics/entity/pipe/steam.png",
			priority = "extra-high",
			line_length = 10,
			width = 24,
			height = 15,
			frame_count = 60,
			axially_symmetrical = false,
			direction_count = 1,
			animation_speed = 0.25,
			hr_version =
			{
				filename = "__base__/graphics/entity/pipe/hr-steam.png",
				priority = "extra-high",
				line_length = 10,
				width = 48,
				height = 30,
				frame_count = 60,
				axially_symmetrical = false,
				animation_speed = 0.25,
				direction_count = 1
			}
		},
		},
		flow_length_in_ticks = 360,
		circuit_wire_connection_points =
		{
			{
				shadow =
				{
					red = {2.0, 1.0},
					green = {2.0, 1.0},
				},
				wire =
				{
					red = {1.0, -0.0},
					green = {1.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 1.0},
					green = {0.0, 1.0},
				},
				wire =
				{
					red = {-1, -0.25},
					green = {-1, -0.25},
				}
			},
			{
				shadow =
				{
					red = {2.0, 1.0},
					green = {2.0, 1.0},
				},
				wire =
				{
					red = {1.0, -0.0},
					green = {1.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 1.0},
					green = {0.0, 1.0},
				},
				wire =
				{
					red = {-1, -0.25},
					green = {-1, -0.25},
				}
			}
		},
		circuit_wire_max_distance = 15,				
		working_sound = { sound = { filename = "__base__/sound/storage-tank.ogg", volume = 0.8 }, apparent_volume = 1.5, },
	    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
		circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
	},
	
	{
		type = "storage-tank",
		name = "y_flowcheck_10",
		 icon_size = 64, icon =  "__Yuoki__/graphics/icons/flow_indicator_icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y_flowcheck_10"},
		max_health = 50,
		corpse = "small-remnants",
		collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box =
		{
			volume = 1,
			base_area = 1,
			base_level = 0,			
			pipe_connections =
			{
				{ direction = defines.direction.north, position = {  0, 0} },
				{ direction = defines.direction.south, position = {  0, 0} },

			},			
		},
		two_direction_only = true,
		window_bounding_box = {{-0.05, -0.5}, {0.05, 0.0}},
		pictures={
			picture =
			{
				sheet={
					filename = "__Yuoki__/graphics/entity/flow_indicator.png",
					priority = "high",
					frames = 1,
					width = 64,
					height = 64,
					shift = { 0.25, -0.125 },
				}
			},
			fluid_background =
			{
				filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
				priority = "extra-high",
				width = 32,
				height = 15
			},
			window_background =
			{
				filename = "__base__/graphics/entity/storage-tank/window-background.png",
				priority = "extra-high",
				width = 17,
				height = 24
			},
			flow_sprite =
			{
				filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
				priority = "extra-high",
				width = 160,
				height = 20
			},	
		gas_flow =
		{
			filename = "__base__/graphics/entity/pipe/steam.png",
			priority = "extra-high",
			line_length = 10,
			width = 24,
			height = 15,
			frame_count = 60,
			axially_symmetrical = false,
			direction_count = 1,
			animation_speed = 0.25,
			hr_version =
			{
				filename = "__base__/graphics/entity/pipe/hr-steam.png",
				priority = "extra-high",
				line_length = 10,
				width = 48,
				height = 30,
				frame_count = 60,
				axially_symmetrical = false,
				animation_speed = 0.25,
				direction_count = 1
			}
		},		
		},
		flow_length_in_ticks = 360,
		circuit_wire_connection_points =
		{
			{
				shadow =
				{
					red = {0.0, 0.0},
					green = {0.0, 0.0},
				},
				wire =
				{
					red = {0.0, -0.0},
					green = {0.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 0.0},
					green = {0.0, 0.0},
				},
				wire =
				{
					red = {0.0, -0.0},
					green = {0.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 0.0},
					green = {0.0, 0.0},
				},
				wire =
				{
					red = {0.0, -0.0},
					green = {0.0, -0.0},
				}
			},
			{
				shadow =
				{
					red = {0.0, 0.0},
					green = {0.0, 0.0},
				},
				wire =
				{
					red = {0.0, -0.0},
					green = {0.0, -0.0},
				}
			},
			
		},
		circuit_wire_max_distance = 15,
		working_sound =
		{
			sound = {
				filename = "__base__/sound/storage-tank.ogg",
				volume = 0.8
			},
			apparent_volume = 1.5,
			
		},
	    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
		circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
	},	


	-- Buffer Station also flow restriction test
	{
		type = "storage-tank",
		name = "y_buffer_station",
		 icon_size = 64, icon =  "__Yuoki__/graphics/entity/special_tank3_icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y_buffer_station"},
		max_health = 500,
		corpse = "small-remnants",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},

		fluid_box =
		{
			volume = 7000,
			base_area = 70,						
			base_level = 0,
			--pipe_covers = pipecoverspictures(),
			pipe_connections =
			{				
				{ direction = defines.direction.north, position = {0, -1},},
				{ direction = defines.direction.east, position = { 1, 0} },					
				{ direction = defines.direction.south, position = {0, 1} },       
				{ direction = defines.direction.west, position = {-1, 0} },        
			},			
		},
		
		two_direction_only = false,
		window_bounding_box = {{-0.05, -0.5}, {0.05, 0.0}},
		pictures={
			picture =
			{
				sheet={
					filename = "__Yuoki__/graphics/entity/special_tank3_sheet.png",
					priority = "high",
					frames = 4,
					width = 256,
					height = 256,
					scale = 0.5,
					shift = {0.435, 0.05}
				}			
			},
			fluid_background =
			{
				filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
				priority = "extra-high",
				width = 16,
				height = 15
			},
			window_background =
			{
				filename = "__base__/graphics/entity/storage-tank/window-background.png",
				priority = "extra-high",
				width = 17,
				height = 24
			},
			flow_sprite =
			{
				filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
				priority = "extra-high",
				width = 160,
				height = 20
			},	
		gas_flow =
		{
			filename = "__base__/graphics/entity/pipe/steam.png",
			priority = "extra-high",
			line_length = 10,
			width = 24,
			height = 15,
			frame_count = 60,
			axially_symmetrical = false,
			direction_count = 1,
			animation_speed = 0.25,
			hr_version =
			{
				filename = "__base__/graphics/entity/pipe/hr-steam.png",
				priority = "extra-high",
				line_length = 10,
				width = 48,
				height = 30,
				frame_count = 60,
				axially_symmetrical = false,
				animation_speed = 0.25,
				direction_count = 1
			}
		},		
		},
		flow_length_in_ticks = 360,
		circuit_wire_connection_points =
		{
			{
				shadow =
				{
					red = {-0.55, -0.15},
					green = {-0.75, -0.15},
				},
				wire =
				{
					red = {-0.55, -0.15},
					green = {-0.75, -0.15},
				}
			},
			{
				shadow =
				{
					red = {-0.55, -0.15},
					green = {-0.75, -0.15},
				},
				wire =
				{
					red = {-0.55, -0.15},
					green = {-0.75, -0.15},
				}
			},
			{
				shadow =
				{
					red = {-0.55, -0.15},
					green = {-0.75, -0.15},
				},
				wire =
				{
					red = {-0.55, -0.15},
					green = {-0.75, -0.15},
				}
			},
			{
				shadow =
				{
					red = {-0.55, -0.15},
					green = {-0.75, -0.15},
				},
				wire =
				{
					red = {-0.55, -0.15},
					green = {-0.75, -0.15},
				}
			}
		},
		circuit_wire_max_distance = 15,		
	    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
		circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
	},


	-- grüne Rohre komplett

{
	type = "pipe",
	name = "yi_pipe_green",
	icon_size = 64, icon =  "__Yuoki__/graphics/icons/g_pipe_icon.png",
	flags = {"placeable-neutral", "player-creation"},
	minable = {mining_time = 0.1, result = "yi_pipe_green"},
	max_health = 100,
	corpse = "pipe-remnants",
	dying_explosion = "pipe-explosion",
	icon_draw_specification = {scale = 0.5},
	resistances =
	{
	  {
		type = "fire",
		percent = 80
	  },
	  {
		type = "impact",
		percent = 30
	  }
	},
	fast_replaceable_group = "pipe",
	collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	--damaged_trigger_effect = hit_effects.entity(),
	fluid_box =
	{
	  volume = 200,
	  pipe_covers = pipecoverspictures(), -- in case a real pipe is connected to a ghost
	  pipe_connections =
	  {
		{ direction = defines.direction.north, position = {0, 0} },
		{ direction = defines.direction.east, position = {0, 0} },
		{ direction = defines.direction.south, position = {0, 0} },
		{ direction = defines.direction.west, position = {0, 0} }
	  },
	  hide_connection_info = true
	},
	--impact_category = "metal",
	pictures = pipepictures_green(),
	--working_sound = sounds.pipe,
	--open_sound = sounds.metal_small_open,
	--close_sound = sounds.metal_small_close,

	horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.15625}},
	vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}}
  },

{
	type = "pipe-to-ground",
	name = "yi_pipe_underground_green",
	icon_size = 64, icon =  "__Yuoki__/graphics/icons/g_pipe_u_icon.png",
	flags = {"placeable-neutral", "player-creation"},
	minable = {mining_time = 0.1, result = "yi_pipe_underground_green"},
	max_health = 100,
	corpse = "pipe-to-ground-remnants",
	dying_explosion = "pipe-to-ground-explosion",
	--factoriopedia_simulation = simulations.factoriopedia_pipe_to_ground,
	icon_draw_specification = {scale = 0.5},
	resistances =
	{
	  {
		type = "fire",
		percent = 80
	  },
	  {
		type = "impact",
		percent = 40
	  }

	},
	fast_replaceable_group = "pipe",
	collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	--damaged_trigger_effect = hit_effects.entity(),
	fluid_box =
	{
	  volume =200,
	  --pipe_covers = pipecoverspictures(),
	  pipe_connections =
	  {
		{ direction = defines.direction.north, position = {0, 0} },
		{
		  connection_type = "underground",
		  direction = defines.direction.south,
		  position = {0, 0},
		  max_underground_distance = 25
		}
	  },
	  hide_connection_info = true
	},
	impact_category = "metal",
	--working_sound = sounds.pipe,
	--open_sound = sounds.metal_small_open,
	--close_sound = sounds.metal_small_close,
	pictures =
	{
		north =
		{
			filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_uo.png",
			priority = "high",
			width = 80,	height = 80 , scale = 0.5 --, shift = {0.10, -0.04}
		},
		south =
		{
			filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_uu.png",
			priority = "high",
			width = 80,	height = 80 , scale = 0.5 --, shift = {0.05, 0}
		},
		west =
		{
			filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_ul.png",
			priority = "high",
			width = 80,	height = 80 , scale = 0.5, shift = {  0.1, -0.075}
		},
		east =
		{
			filename = "__Yuoki__/graphics/entity/pipe-hc/g_pipe_ur.png",
			priority = "high",
			width = 80,	height = 80 , scale = 0.5, shift = { -0.1, -0.075},
		},
	},
	visualization =
	{
	  north =
	  {
		filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
		priority = "extra-high",
		x = 64,
		size = 64,
		scale = 0.5,
		flags = {"icon"}
	  },
	  south =
	  {
		filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
		priority = "extra-high",
		x = 192,
		size = 64,
		scale = 0.5,
		flags = {"icon"}
	  },
	  west =
	  {
		filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
		priority = "extra-high",
		x = 256,
		size = 64,
		scale = 0.5,
		flags = {"icon"}
	  },
	  east =
	  {
		filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
		priority = "extra-high",
		x = 128,
		size = 64,
		scale = 0.5,
		flags = {"icon"}
	  },
	},
	disabled_visualization =
	{
	  north =
	  {
		filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
		priority = "extra-high",
		x = 64,
		size = 64,
		scale = 0.5,
		flags = {"icon"}
	  },
	  south =
	  {
		filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
		priority = "extra-high",
		x = 192,
		size = 64,
		scale = 0.5,
		flags = {"icon"}
	  },
	  west =
	  {
		filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
		priority = "extra-high",
		x = 256,
		size = 64,
		scale = 0.5,
		flags = {"icon"}
	  },
	  east =
	  {
		filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
		priority = "extra-high",
		x = 128,
		size = 64,
		scale = 0.5,
		flags = {"icon"}
	  },
	},
  },
	
})	
