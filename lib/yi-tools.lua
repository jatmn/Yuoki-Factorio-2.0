local util = require("util")

-- Multiple functions used with permission from boblibrary per Bobmeister Nov 7 2024
-- https://discord.com/channels/351216213327609858/497860215010754560/1304116352017109013

-- Create global yi namespace if not exists
if not yi then
	yi = {}
end
if not yi.lib then
	yi.lib = {}
end

-- Load modules in dependency order
-- 1. yi-utils: defines blank_sprite and yi.lib.get_quality_multiplier
require("lib.yi-utils")

-- 2. yi-item: item manipulation functions (required by yi-error, yi-recipe, yi-migration)
require("lib.yi-item")

-- 3. yi-error: error handling functions (depends on yi-item)
require("lib.yi-error")

-- 4. yi-entity: pipe, storage tank, valve entity creation (no external dependencies)
require("lib.yi-entity")

-- 5. yi-recipe: recipe manipulation functions (depends on yi-item)
require("lib.yi-recipe")

-- 6. yi-migration: migration utilities (depends on yi-item)
require("lib.yi-migration")

-- Set global quality multiplier variable for backward compatibility
yi_energy_usage_quality_multiplier = yi.lib.get_quality_multiplier()

-- Debug log (only in data stage)
if log then
	log("Yi Tools modular library loaded successfully")
end