data:extend({
	-- ============================================
	-- YUOKI CONTAINERS (Standard Storage Chests)
	-- ============================================
	-- 1x1 Storage Container (y_sc11)
	yi.lib.entity.make_container("y_sc11", {
		icon = "__Yuoki__/graphics/entity/store/y-c11-icon.png",
		picture = {
			filename = "__Yuoki__/graphics/entity/store/y-c11.png",
			priority = "high",
			width = 48,
			height = 48,
			shift = { 0.1875, -0.094 },
		},
	}),

	-- 2x2 Storage Container (y_c22)
	yi.lib.entity.make_container("y_c22", {
		icon = "__Yuoki__/graphics/entity/store/y-c22-icon.png",
		size_tier = "2x2",
		health = 800,
		resistances = { { type = "physical", percent = 50 }, { type = "fire", percent = 50 } },
		picture = {
			filename = "__Yuoki__/graphics/entity/store/y-c22.png",
			priority = "high",
			width = 96,
			height = 96,
			shift = { 0.5, -0.125 },
		},
		overrides = {
			circuit_wire_connection_point = yi.lib.entity.make_standard_container_circuit_wire_connection_point(),
		},
	}),

	-- 3x3 Storage Container (y_cg33)
	yi.lib.entity.make_container("y_cg33", {
		icon = "__Yuoki__/graphics/entity/store/y-c33-icon.png",
		size_tier = "3x3",
		health = 1400,
		resistances = { { type = "physical", percent = 50 }, { type = "fire", percent = 50 } },
		picture = {
			filename = "__Yuoki__/graphics/entity/store/y-cg33.png",
			priority = "high",
			width = 128,
			height = 128,
			shift = { 0.5, -0.125 },
		},
		overrides = {
			circuit_wire_connection_point = yi.lib.entity.make_standard_container_circuit_wire_connection_point(),
		},
	}),

	-- 4x4 Storage Container (y_sc44)
	yi.lib.entity.make_container("y_sc44", {
		icon = "__Yuoki__/graphics/entity/store/y-c44-icon.png",
		size_tier = "4x4",
		health = 2000,
		resistances = { { type = "physical", percent = 50 }, { type = "fire", percent = 50 } },
		picture = {
			filename = "__Yuoki__/graphics/entity/store/y-c44.png",
			priority = "high",
			width = 160,
			height = 160,
			shift = { 0.5, -0.25 },
		},
		circuit_wire_max_distance = 8.5,
		overrides = {
			circuit_wire_connection_point = yi.lib.entity.make_standard_container_circuit_wire_connection_point(),
		},
	}),

	-- ============================================
	-- YUOKI LOGISTIC CONTAINERS
	-- ============================================
	-- 1x1 Logistic Storage (y-rare-chest-log)
	yi.lib.entity.make_logistic_container("y-rare-chest-log", {
		icon = "__Yuoki__/graphics/entity/store/y-lc11-icon.png",
		logistic_mode = "storage",
		max_logistic_slots = 1,
		picture = {
			filename = "__Yuoki__/graphics/entity/store/y-lc11.png",
			priority = "extra-high",
			width = 48,
			height = 48,
			shift = { 0.1875, -0.094 },
		},
	}),

	-- 3x3 Logistic Storage Bunker (y-rare-m1bunker-log)
	yi.lib.entity.make_logistic_container("y-rare-m1bunker-log", {
		icon = "__Yuoki__/graphics/entity/store/y-cl33-icon.png",
		size_tier = "3x3",
		health = 1400,
		minable = { mining_time = 1.5, result = "y-rare-m1bunker-log" },
		resistances = { { type = "physical", percent = 50 }, { type = "fire", percent = 50 } },
		max_logistic_slots = 1,
		trash_inventory_size = 40,
		logistic_mode = "storage",
		picture = {
			filename = "__Yuoki__/graphics/entity/store/y-cl33.png",
			priority = "high",
			width = 128,
			height = 128,
			shift = { 0.5, -0.125 },
		},
	}),

	-- 2x2 Passive Provider (y_pc22)
	yi.lib.entity.make_logistic_container("y_pc22", {
		icon = "__Yuoki__/graphics/entity/store/y-pc22-icon.png",
		size_tier = "2x2",
		health = 800,
		resistances = { { type = "physical", percent = 50 }, { type = "fire", percent = 50 } },
		inventory_size = 70,
		logistic_mode = "passive-provider",
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		picture = {
			filename = "__Yuoki__/graphics/entity/store/y-pc22.png",
			priority = "extra-high",
			width = 96,
			height = 96,
			shift = { 0.5, -0.125 },
		},
		overrides = {
			circuit_wire_connection_point = yi.lib.entity.make_standard_container_circuit_wire_connection_point(),
		},
	}),

	-- 2x2 Requester (y_rc22)
	yi.lib.entity.make_logistic_container("y_rc22", {
		icon = "__Yuoki__/graphics/entity/store/y-rc22-icon.png",
		size_tier = "2x2",
		health = 800,
		resistances = { { type = "physical", percent = 50 }, { type = "fire", percent = 50 } },
		inventory_size = 70,
		logistic_mode = "requester",
		logistic_slots_count = 12,
		picture = {
			filename = "__Yuoki__/graphics/entity/store/y-rc22.png",
			priority = "extra-high",
			width = 96,
			height = 96,
			shift = { 0.5, -0.125 },
		},
		overrides = {
			circuit_wire_connection_point = yi.lib.entity.make_standard_container_circuit_wire_connection_point(),
		},
	}),

	-- ============================================
	-- DUROTAL LOGISTICS (JATMN Containers)
	-- ============================================
	-- Durotal Requester (j-dl-request) - 1x1 tiny
	yi.lib.entity.make_logistic_container("j-dl-request", {
		icon = "__Yuoki__/graphics/entity/store/Durotal-Logistics-Requester-Icon.png",
		icon_size = 32,
		size_tier = "1x1",
		health = 300,
		logistic_mode = "requester",
		logistic_slots_count = 12,
		inventory_size = 60,
		picture = {
			filename = "__Yuoki__/graphics/entity/store/Durotal-Logistics-Requester.png",
			priority = "extra-high",
			width = 48,
			height = 48,
			shift = { 0.1875, -0.094 },
		},
		overrides = {
			collision_box = { { -0.25, -0.25 }, { 0.25, 0.25 } },
			circuit_wire_connection_point = yi.lib.entity.make_standard_container_circuit_wire_connection_point(),
		},
	}),

	-- Durotal Provider (j-dl-provider) - 1x1 tiny
	yi.lib.entity.make_logistic_container("j-dl-provider", {
		icon = "__Yuoki__/graphics/entity/store/Durotal-Logistics-Provider-Icon.png",
		icon_size = 32,
		size_tier = "1x1",
		health = 300,
		logistic_mode = "passive-provider",
		inventory_size = 60,
		picture = {
			filename = "__Yuoki__/graphics/entity/store/Durotal-Logistics-Provider.png",
			priority = "extra-high",
			width = 48,
			height = 48,
			shift = { 0.1875, -0.094 },
		},
		overrides = {
			collision_box = { { -0.25, -0.25 }, { 0.25, 0.25 } },
			circuit_wire_connection_point = yi.lib.entity.make_standard_container_circuit_wire_connection_point(),
		},
	}),

	-- Durotal Buffer (j-dl-buffer) - 1x1 tiny
	yi.lib.entity.make_logistic_container("j-dl-buffer", {
		icon = "__Yuoki__/graphics/entity/store/Durotal-Logistics-Buffer-Icon.png",
		icon_size = 32,
		size_tier = "1x1",
		health = 300,
		logistic_mode = "buffer",
		logistic_slots_count = 12,
		inventory_size = 60,
		picture = {
			filename = "__Yuoki__/graphics/entity/store/Durotal-Logistics-Buffer.png",
			priority = "extra-high",
			width = 48,
			height = 48,
			shift = { 0.1875, -0.094 },
		},
		overrides = {
			collision_box = { { -0.25, -0.25 }, { 0.25, 0.25 } },
			circuit_wire_connection_point = yi.lib.entity.make_standard_container_circuit_wire_connection_point(),
		},
	}),
})
