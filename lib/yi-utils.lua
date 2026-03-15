local util = require("util")

-- Multiple functions used with permission from boblibrary per Bobmeister Nov 7 2024
-- https://discord.com/channels/351216213327609858/497860215010754560/1304116352017109013

-- Utility functions and constants for Yuoki's Factorio mod library.
if not yi then
	yi = {}
end
if not yi.lib then
	yi.lib = {}
end

-- Workaround for now for the broken turret direction images
blank_sprite = {
	base_visualisation = {
		animation = {
			layers = {
				{
					filename = "__Yuoki__/graphics/blank.png",
					priority = "high",
					width = 1,
					height = 1,
					shift = { 0, 0 },
					direction_count = 1,
					frame_count = 1,
					line_length = 1,
					axially_symmetrical = false,
				},
			},
		},
	},
}

-- Get quality multiplier table for Space Age quality system.
-- Detects if Space Age quality modules exist and returns appropriate multipliers.
-- Usage: local multipliers = yi.lib.get_quality_multiplier()
-- Returns: Table with quality multipliers (normal=1, uncommon=1.15, etc.)
--          Returns { normal = 1 } if not Space Age
function yi.lib.get_quality_multiplier()
	-- Safe check for 2.0 prototypes global
	local is_space_age = false
	if _G["prototypes"] and prototypes.item["quality-module"] then
		is_space_age = true
	end

	if is_space_age then
		return {
			normal = 1,
			uncommon = 1.15,
			rare = 1.25,
			epic = 1.35,
			legendary = 1.45,
		}
	end
	return { normal = 1 }
end