data:extend(
	{
		{
			type = "recipe",
			name = "yi_equip_shield_a",
			energy_required = 3,
			ingredients = {
				{type="item", name="y-accumulator-b", amount=1},
				{type="item", name="y_structure_element", amount=4}
			},
			results = {
				{type="item", name="yi_equip_shield_a", amount=1},
			},
			main_product = "yi_equip_shield_a",
			enabled = true,
			order = "a1",
			group = "yuoki-energy",
			subgroup = "y_personal_equip",
			category = "yuoki-wonder"
		},

		{
			type = "recipe",
			name = "yi_equip_shield_b",
			energy_required = 3,
			ingredients = {
				{type="item", name="y-accumulator-b-t2", amount=1},
				{type="item", name="y_structure_element", amount=8}
			},
			results = {
				{type="item", name="yi_equip_shield_b", amount=1},
			},
			main_product = "yi_equip_shield_b",
			enabled = true,
			order = "a2",
			group = "yuoki-energy",
			subgroup = "y_personal_equip",
			category = "yuoki-wonder"
		},

		{
			type = "recipe",
			name = "yi_equip_battery_a",
			energy_required = 3,
			ingredients = {
				{type="item", name="y-raw-fuelnium", amount=8},
				{type="item", name="y-chip-2", amount=6},
				{type="item", name="y_structure_vessel", amount=2}
			},
			results = {
				{type="item", name="yi_equip_battery_a", amount=1},
			},
			main_product = "yi_equip_battery_a",
			enabled = true,
			order = "b1",
			group = "yuoki-energy",
			subgroup = "y_personal_equip",
			category = "yuoki-wonder"
		},

		{
			type = "recipe",
			name = "yi_equip_generator_a",
			energy_required = 3,
			ingredients = {
				{type="item", name="y_steam_turbine_mc", amount=1},
				{type="item", name="y-infused-uca2", amount=4},
				{type="item", name="y-basic-t2-mf", amount=8},
				{type="item", name="y_structure_vessel", amount=8}
			},
			results = {
				{type="item", name="yi_equip_generator_a", amount=1},
			},
			main_product = "yi_equip_generator_a",
			enabled = true,
			order = "c1",
			group = "yuoki-energy",
			subgroup = "y_personal_equip",
			category = "yuoki-wonder"
		},

		{
			type = "recipe",
			name = "yi_equip_legs_a",
			energy_required = 3,
			ingredients = {
				{type="item", name="y-basic-t2-mf", amount=8},
				{type="item", name="y_structure_element", amount=12},
				{type="item", name="y-bluegear", amount=8},
				{type="item", name="y-chip-2", amount=2}
			},
			results = {
				{type="item", name="yi_equip_legs_a", amount=1},
			},
			main_product = "yi_equip_legs_a",
			enabled = true,
			order = "d1",
			group = "yuoki-energy",
			subgroup = "y_personal_equip",
			category = "yuoki-wonder"
		},

		{
			type = "recipe",
			name = "yi_minigun",
			energy_required = 3,
			ingredients = {
				{type="item", name="y-basic-t2-mf", amount=1},
				{type="item", name="y_structure_element", amount=4},
				{type="item", name="y-bluegear", amount=3}
			},
			results = {
				{type="item", name="yi_minigun", amount=1},
			},
			main_product = "yi_minigun",
			enabled = true,
			order = "w1",
			group = "yuoki-energy",
			subgroup = "y_personal_equip",
			category = "yuoki-wonder"
		},

		{
			type = "recipe",
			name = "yi_lasergun",
			energy_required = 3,
			ingredients = {
				{type="item", name="y-raw-fuelnium", amount=3},
				{type="item", name="y-crystal-cnd", amount=1},
				{type="item", name="y_structure_element", amount=3},
			},
			results = {
				{type="item", name="yi_lasergun", amount=1},
			},
			main_product = "yi_lasergun",
			enabled = true,
			order = "w2",
			group = "yuoki-energy",
			subgroup = "y_personal_equip",
			category = "yuoki-wonder"
		},

		{
			type = "recipe",
			name = "yi_ammo_energie",
			energy_required = 2,
			ingredients = {
				{type="item", name="y-raw-fuelnium", amount=1},
				{type="item", name="y_structure_element", amount=2},
				{type="item", name="y-conductive-wire-1", amount=1}
			},
			results = {
				{type="item", name="yi_ammo_energie", amount=10},
			},
			main_product = "yi_ammo_energie",
			enabled = true,
			order = "x1",
			group = "yuoki-energy",
			subgroup = "y_personal_equip",
			category = "crafting"
		},

		{
			type = "recipe",
			name = "yi_equip_roboport",
			energy_required = 3,
			ingredients = {
				{type="item", name="personal-roboport-equipment", amount=1},
				{type="item", name="y_rwtechsign", amount=500},
				{type="item", name="y_compensator_25", amount=2},
				{type="item", name="yi_equip_battery_a", amount=1}
			},
			results = {
				{type="item", name="yi_equip_roboport", amount=1},
			},
			main_product = "yi_equip_roboport",
			enabled = true,
			order = "e1",
			group = "yuoki-energy",
			subgroup = "y_personal_equip",
			category = "yuoki-wonder"
		},

		{
			type = "recipe",
			name = "yi_pld_equipment",
			energy_required = 3,
			ingredients = {
				{type="item", name="y_turret_laser22f12", amount=1},
				{type="item", name="y_rwtechsign", amount=300},
				{type="item", name="y_structure_element", amount=6}
			},
			results = {
				{type="item", name="yi_pld_equipment", amount=1},
			},
			main_product = "yi_pld_equipment",
			enabled = true,
			order = "f1",
			group = "yuoki-energy",
			subgroup = "y_personal_equip",
			category = "yuoki-wonder"},

		{
			type = "item",
			name = "yi_equip_shield_a",
			icon_size = 64,
			icon = "__Yuoki__/graphics/armor/panz4_32.png",
			order = "a1",
			stack_size = 15,
			place_as_equipment_result = "yi_equip_shield_a",
			group = "yuoki-energy",
			subgroup = "y_personal_equip"
		},

		{
			type = "item",
			name = "yi_equip_shield_b",
			icon_size = 64,
			icon = "__Yuoki__/graphics/armor/panz5_32.png",
			order = "a2",
			stack_size = 15,
			place_as_equipment_result = "yi_equip_shield_b",
			group = "yuoki-energy",
			subgroup = "y_personal_equip"
		},

		{
			type = "item",
			name = "yi_equip_battery_a",
			icon_size = 64,
			icon = "__Yuoki__/graphics/armor/lfg13.png",
			order = "b1",
			stack_size = 15,
			place_as_equipment_result = "yi_equip_battery_a",
			group = "yuoki-energy",
			subgroup = "y_personal_equip"
		},

		{
			type = "item",
			name = "yi_equip_generator_a",
			icon_size = 64,
			icon = "__Yuoki__/graphics/armor/energy_icon.png",
			order = "c1",
			stack_size = 15,
			place_as_equipment_result = "yi_equip_generator_a",
			group = "yuoki-energy",
			subgroup = "y_personal_equip"
		},

		{
			type = "item",
			name = "yi_equip_legs_a",
			icon_size = 64,
			icon = "__Yuoki__/graphics/armor/exo1_icon_e.png",
			order = "d1",
			stack_size = 15,
			place_as_equipment_result = "yi_equip_legs_a",
			group = "yuoki-energy",
			subgroup = "y_personal_equip"
		},

		{
			type = "item",
			name = "yi_equip_roboport",
			icon_size = 64,
			icon = "__Yuoki__/graphics/armor/mobile_roboport_32.png",
			order = "e1",
			stack_size = 15,
			place_as_equipment_result = "yi_equip_roboport",
			group = "yuoki-energy",
			subgroup = "y_personal_equip"
		},

		{
			type = "item",
			name = "yi_pld_equipment",
			icon_size = 64,
			icon = "__Yuoki__/graphics/armor/personal_laser_defense_icon.png",
			order = "f1",
			stack_size = 15,
			place_as_equipment_result = "yi_pld_equipment",
			group = "yuoki-energy",
			subgroup = "y_personal_equip"
		},

		{
			type = "energy-shield-equipment",
			name = "yi_equip_shield_a",
			sprite = {
				filename = "__Yuoki__/graphics/armor/panz_4-96be.png",
				width = 96,
				height = 64,
				priority = "medium"
			},
			shape = {
				width = 3,
				height = 2,
				type = "full"
			},
			max_shield_value = 350,
			energy_source = {
				type = "electric",
				buffer_capacity = "350kJ",
				input_flow_limit = "700kW",
				usage_priority = "primary-input"
			},
			energy_per_shield = "30kJ",
			categories = {"armor"}
		},

		{
			type = "energy-shield-equipment",
			name = "yi_equip_shield_b",
			sprite = {
				filename = "__Yuoki__/graphics/armor/panz_5-96be.png",
				width = 96,
				height = 64,
				priority = "medium"
			},
			shape = {
				width = 3,
				height = 2,
				type = "full"
			},
			max_shield_value = 600,
			energy_source = {
				type = "electric",
				buffer_capacity = "600kJ",
				input_flow_limit = "1.2MW",
				usage_priority = "primary-input"
			},
			energy_per_shield = "30kJ",
			categories = {"armor"}
		},

		{
			type = "battery-equipment",
			name = "yi_equip_battery_a",
			sprite = {
				filename = "__Yuoki__/graphics/armor/lfg13_64.png",
				width = 64,
				height = 64,
				priority = "medium"
			},
			shape = {
				width = 2,
				height = 2,
				type = "full"
			},
			energy_source = {
				type = "electric",
				buffer_capacity = "300MJ",
				input_flow_limit = "2GW",
				output_flow_limit = "2GW",
				usage_priority = "tertiary"
			},
			categories = {"armor"}
		},

		{
			type = "generator-equipment",
			name = "yi_equip_generator_a",
			sprite = {
				filename = "__Yuoki__/graphics/armor/energy-128e.png",
				width = 128,
				height = 128,
				priority = "medium"
			},
			shape = {
				width = 4,
				height = 4,
				type = "full"
			},
			energy_source = {
				type = "electric",
				usage_priority = "primary-output"
			},
			power = "1.6MW",
			categories = {"armor"}
		},

		-- schnelle Beine
		{
			type = "movement-bonus-equipment",
			name = "yi_equip_legs_a",
			sprite = {
				filename = "__Yuoki__/graphics/armor/exo1_upgrade_e.png",
				width = 64,
				height = 96,
				priority = "medium"
			},
			shape = {
				width = 2,
				height = 3,
				type = "full"
			},
			energy_source = {
				type = "electric",
				usage_priority = "secondary-input"
			},
			energy_consumption = "250kW",
			movement_bonus = 0.275,
			categories = {"armor"}
		},

		-- Minigun
		{
			type = "gun",
			name = "yi_minigun",
			icon_size = 64,
			icon = "__Yuoki__/graphics/armor/minigun.png",
			subgroup = "y_personal_equip",
			group = "yuoki-energy",
			order = "a[basic-clips]-b[submachine-gun]",
			attack_parameters = {
				type = "projectile",
				ammo_category = "bullet",
				cooldown = 2,
				movement_slow_down_factor = 0.8,
				damage_modifier = 2,
				shell_particle = {
					name = "shell-particle",
					direction_deviation = 0.1,
					speed = 0.1,
					speed_deviation = 0.03,
					center = {0, 0.6},
					creation_distance = 0.6,
					starting_frame_speed = 0.4,
					starting_frame_speed_deviation = 0.1
				},
				projectile_creation_distance = 0.6,
				range = 18,
				sound = {
					{
						filename = "__Yuoki__/sounds/railgun.ogg",
						volume = 0.2
					}
				}
			},
			stack_size = 100
		},

		-- Lasergun
		{
			type = "gun",
			name = "yi_lasergun",
			icon_size = 64,
			icon = "__Yuoki__/graphics/armor/lasergun.png",
			subgroup = "y_personal_equip",
			group = "yuoki-energy",
			order = "c[railgun]",
			attack_parameters = {
				type = "projectile",
				ammo_category = "plasma",
				cooldown = 8,
				movement_slow_down_factor = 0.1,
				projectile_creation_distance = 0.6,
				range = 30,
				damage_modifier = 1,
				sound = {
					{
						filename = "__Yuoki__/sounds/plasma-1.ogg",
						volume = 0.2
					}
				}
			},
			stack_size = 10
		},

		{
			type = "ammo",
			name = "yi_ammo_energie",
			icon_size = 64,
			icon = "__Yuoki__/graphics/armor/bst_z2.png",
			ammo_category = "plasma",
			ammo_type = {
				--category = "plasma",
				target_type = "direction",
				action = {
					type = "direct",
					repeat_count = 16,
					action_delivery = {
						type = "projectile",
						projectile = "p2",
						--projectile = "piercing-shotgun-pellet",
						starting_speed = 1.5,
						direction_deviation = 0.0,
						range_deviation = 0.0,
						max_range = 20,
						target_effects = {
							{
								type = "create-entity",
								entity_name = "explosion-hit"
							},
							{type = "damage", damage = {amount = 20, type = "fire"}},
							{type = "damage", damage = {amount = 5, type = "impact"}}
						}
					}
				}
			},
			magazine_size = 25,
			subgroup = "y_personal_equip",
			group = "yuoki-energy",
			order = "c[railgun]",
			stack_size = 1000
		},

		{
			type = "projectile",
			name = "p2",
			flags = {"not-on-map"},
			collision_box = {{-0.05, -1}, {0.05, 1}},
			acceleration = 0,
			direction_only = true,
			action = {
				type = "direct",
				action_delivery = {
					type = "instant",
					target_effects = {
						type = "damage",
						damage = {amount = 8, type = "impact"}
					}
				}
			},
			animation = {
				filename = "__base__/graphics/entity/piercing-bullet/piercing-bullet.png",
				tint = {r = 0.0, g = 1.0, b = 0.0},
				frame_count = 1,
				width = 3,
				height = 50,
				priority = "high"
			}
		},

		{
			type = "roboport-equipment",
			name = "yi_equip_roboport",
			take_result = "yi_equip_roboport",
			sprite = {
				filename = "__Yuoki__/graphics/armor/mobile_roboport_64.png",
				width = 64,
				height = 64,
				priority = "medium"
			},
			shape = {
				width = 2,
				height = 2,
				type = "full"
			},
			energy_source = {
				type = "electric",
				buffer_capacity = "120MJ",
				input_flow_limit = "12000kW",
				usage_priority = "secondary-input"
			},
			charging_energy = "4000kW",
			--energy_consumption = "50kW",
			robot_limit = 25,
			construction_radius = 25,
			spawn_and_station_height = 0.4,
			charge_approach_distance = 3.6,
			recharging_animation = {
				filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
				priority = "high",
				width = 37,
				height = 35,
				frame_count = 16,
				scale = 1.5,
				animation_speed = 0.5
			},
			recharging_light = {intensity = 0.4, size = 5},
			stationing_offset = {0, -0.6},
			charging_station_shift = {0, 0.5},
			charging_station_count = 4,
			charging_distance = 1.6,
			charging_threshold_distance = 5,
			categories = {"armor"}
		},

		{
			type = "active-defense-equipment",
			name = "yi_pld_equipment",
			sprite = {
				filename = "__Yuoki__/graphics/armor/personal_laser_defense_96.png",
				width = 64,
				height = 96,
				priority = "medium"
			},
			shape = {
				width = 2,
				height = 3,
				type = "full"
			},
			energy_source = {
				type = "electric",
				usage_priority = "secondary-input",
				buffer_capacity = "1200kJ"
			},
			attack_parameters = {
				type = "beam",
				cooldown = 10,
				range = 24,
				--source_direction_count = 64,
				--source_offset = {0, -3.423489 / 4},
				damage_modifier = 6,
				ammo_category = "laser",
				ammo_type = {
					--category = "laser",
					energy_consumption = "150kJ",
					action = {
						type = "direct",
						action_delivery = {
							type = "beam",
							beam = "laser-beam",
							max_length = 24,
							duration = 10,
							source_offset = {0, -1.31439}
						}
					}
				}
			},
			automatic = true,
			categories = {"armor"}
		}
	}
)
