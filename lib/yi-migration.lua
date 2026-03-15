local util = require("util")

-- Multiple functions used with permission from boblibrary per Bobmeister Nov 7 2024
-- https://discord.com/channels/351216213327609858/497860215010754560/1304116352017109013

-- Migration utilities for upgrading save games and replacing items/fluids in Yuoki's Factorio mod library.
if not yi then
	yi = {}
end
if not yi.lib then
	yi.lib = {}
end

-- MIGRATION
--------------------------------------------------------------------------------

yi.lib.migration = {}

-- Bulk replace items using a replacement table.
-- Calls global_replace_item for each mapping, then cleans up unknown ghosts.
-- Usage: yi.lib.migration.bulk_replace({["old-item"]="new-item", ["old-fluid"]="new-fluid"})
--        yi.lib.migration.bulk_replace({["y-old"]="y-new", ["y-obsolete"]="y-replacement"})
--      replacement_table - Table mapping old item names to new item names (table, required)
-- Returns: Nothing (performs global replacement and ghost cleanup)
function yi.lib.migration.bulk_replace(replacement_table)
	for old_name, new_name in pairs(replacement_table) do
		yi.lib.migration.global_replace_item(old_name, new_name)
	end
	yi.lib.migration.remove_unknown_ghosts()
end

-- Global item migration function for Factorio 2.0
-- Handles ground, inventories, belts, filters, and active recipes.
-- Usage: yi.lib.migration.global_replace_item("old-item", "new-item")
--        yi.lib.migration.global_replace_item("y-old", "y-new")
--      old_name - Old item name to replace (string, required)
--      new_name - New item name to use (string, required)
-- Returns: Nothing (replaces item globally, logs error if new item doesn't exist)
function yi.lib.migration.global_replace_item(old_name, new_name)
	local new_prototype = prototypes.item[new_name]
	if not new_prototype then
		log("Migration Error: Target item " .. new_name .. " does not exist.")
		return
	end

	for _, surface in pairs(game.surfaces) do
		local entities = surface.find_entities_filtered({
			type = {
				"container",
				"logistic-container",
				"assembling-machine",
				"furnace",
				"inserter",
				"splitter",
				"transport-belt",
				"underground-belt",
				"item-entity",
				"character",
				"cargo-wagon",
				"loader",
				"loader-1x1",
				"logistic-robot",
				"construction-robot",
			},
		})

		for _, entity in ipairs(entities) do
			-- A. Items on Ground
			if entity.type == "item-entity" then
				if entity.stack and entity.stack.valid_for_read and entity.stack.name == old_name then
					local pos = entity.position
					local count = entity.stack.count
					entity.destroy()
					surface.create_entity({
						name = "item-on-ground",
						stack = { name = new_name, count = count },
						position = pos,
					})
				end

			-- B. Check Transport Belts / Splitters / Loaders
			elseif
				entity.type == "transport-belt"
				or entity.type == "underground-belt"
				or entity.type == "splitter"
				or entity.type == "loader"
				or entity.type == "loader-1x1"
			then
				local line_count = entity.get_max_transport_line_index()
				for i = 1, line_count do
					local line = entity.get_transport_line(i)
					local count = line.get_item_count(old_name)
					if count > 0 then
						line.remove_item({ name = old_name, count = count })
						line.insert_at_back({ name = new_name, count = count })
					end
				end

				if entity.type == "splitter" then
					-- 1. Clear stuck items in the internal buffer
					for i = 1, 2 do
						local inv = entity.get_inventory(i)
						if inv and inv.valid then
							local count = inv.get_item_count(old_name)
							if count > 0 then
								inv.remove({ name = old_name, count = count })
								inv.insert({ name = new_name, count = count })
							end
						end
					end

					-- 2. Update the Filter
					-- In 2.0, the engine treats the filter as a "SignalID"
					if entity.splitter_filter and entity.splitter_filter.name == old_name then
						local side = entity.splitter_output_priority
						entity.splitter_filter = nil -- Reset first
						-- Use the most basic 2.0 compatible table
						entity.splitter_filter = { type = "item", name = new_name }
						entity.splitter_output_priority = side
					end
				end

			-- C. Inserter Filters
			elseif entity.type == "inserter" then
				for slot = 1, entity.filter_slot_count do
					if entity.get_filter(slot) == old_name then
						entity.set_filter(slot, new_name)
					end
				end

			-- D. Logistic Containers
			elseif entity.type == "logistic-container" then
				if entity.prototype.logistic_mode == "storage" then
					if entity.storage_filter and entity.storage_filter.name == old_name then
						entity.storage_filter = new_prototype
					end
				end

				local logic_point = entity.get_logistic_point(0)
				if logic_point then
					for i = 1, logic_point.sections_count do
						local section = logic_point.get_section(i)
						if section then
							for j = 1, section.filters_count do
								local filter = section.get_slot(j)
								if filter and filter.value and filter.value.name == old_name then
									section.set_slot(j, { value = new_name, min = filter.min, max = filter.max })
								end
							end
						end
					end
				end
			end

			-- E. Inventory Scrub
			for i = 1, entity.get_max_inventory_index() do
				local inv = entity.get_inventory(i)
				if inv and inv.valid then
					local count = inv.get_item_count(old_name)
					if count > 0 then
						local removed = inv.remove({ name = old_name, count = count })
						inv.insert({ name = new_name, count = removed })
					end
				end
			end
		end
	end

	-- F. Player Hand and Logistics
	for _, player in pairs(game.players) do
		if player.cursor_stack and player.cursor_stack.valid_for_read and player.cursor_stack.name == old_name then
			player.cursor_stack.set_stack({ name = new_name, count = player.cursor_stack.count })
		end
		if player.character then
			local lp = player.character.get_logistic_point(0)
			if lp then
				for i = 1, lp.sections_count do
					local section = lp.get_section(i)
					if section then
						for j = 1, section.filters_count do
							local f = section.get_slot(j)
							if f and f.value and f.value.name == old_name then
								section.set_slot(j, { value = new_name, min = f.min, max = f.max })
							end
						end
					end
				end
			end
		end
	end
end

-- Global fluid migration function
-- Handles pipes, tanks, and internal fluidboxes of machines.
-- Usage: yi.lib.migration.global_replace_fluid("old-fluid", "new-fluid")
--        yi.lib.migration.global_replace_fluid("y-old-fluid", "y-new-fluid")
--      old_name - Old fluid name to replace (string, required)
--      new_name - New fluid name to use (string, required)
-- Returns: Nothing (replaces fluid globally, logs error if new fluid doesn't exist)
function yi.lib.migration.global_replace_fluid(old_name, new_name)
	if not prototypes.fluid[new_name] then
		log("Migration Error: Target fluid " .. new_name .. " does not exist.")
		return
	end

	for _, surface in pairs(game.surfaces) do
		-- Find everything that can hold fluids
		local entities = surface.find_entities_filtered({
			type = {
				"pipe",
				"pipe-to-ground",
				"storage-tank",
				"assembling-machine",
				"furnace",
				"generator",
				"boiler",
				"pump",
				"fluid-wagon",
				"offshore-pump",
			},
		})

		for _, entity in ipairs(entities) do
			-- Loop through all fluidboxes in the entity
			for i = 1, #entity.fluidbox do
				local box = entity.fluidbox[i]
				if box and box.name == old_name then
					-- Store the amount and temperature
					local amount = box.amount
					local temp = box.temperature

					-- Replace the fluid
					entity.fluidbox[i] = {
						name = new_name,
						amount = amount,
						temperature = temp,
					}
				end
			end
		end
	end
	log("Yi Migration: Successfully replaced fluid " .. old_name .. " with " .. new_name)
end

-- Fix splitter filters after item replacement.
-- Updates splitter filter settings when an item has been renamed.
-- Usage: yi.lib.migration.fix_splitters("old-item", "new-item")
--        yi.lib.migration.fix_splitters("y-old", "y-new")
--      old_name - Old item name (string, required)
--      new_name - New item name (string, required)
-- Returns: Nothing (updates splitter filters globally)
function yi.lib.migration.fix_splitters(old_name, new_name)
	local new_proto = prototypes.item[new_name]
	if not new_proto then
		return
	end

	for _, surface in pairs(game.surfaces) do
		local splitters = surface.find_entities_filtered({ type = "splitter" })
		for _, splitter in ipairs(splitters) do
			-- Check if the filter is set to the old item
			if splitter.splitter_filter and splitter.splitter_filter.name == old_name then
				-- 1. Store the exact priority state
				local current_priority = splitter.splitter_output_priority

				-- 2. Clear both to "unlock" the state
				splitter.splitter_output_priority = "none"
				splitter.splitter_filter = nil

				-- 3. Set the new item
				splitter.splitter_filter = new_proto

				-- 4. Re-apply the priority (e.g., "right")
				-- This order is critical in 2.0 to force the UI to update
				splitter.splitter_output_priority = current_priority
			end
		end
	end
end

-- Remove unknown ghosts and clear invalid combinator signals.
-- Cleans up entity/tile ghosts and constant combinator signals referencing missing items.
-- Usage: yi.lib.migration.remove_unknown_ghosts()
-- Returns: Nothing (cleans up ghosts and invalid combinator signals globally)
function yi.lib.migration.remove_unknown_ghosts()
	for _, surface in pairs(game.surfaces) do
		-- FIXED: Check for type "entity-ghost" and "tile-ghost" specifically
		local ghosts = surface.find_entities_filtered({ type = { "entity-ghost", "tile-ghost" } })
		for _, ghost in ipairs(ghosts) do
			if not ghost.ghost_prototype then
				ghost.destroy()
			end
		end

		local combinators = surface.find_entities_filtered({ type = "constant-combinator" })
		for _, entity in ipairs(combinators) do
			local control = entity.get_control_behavior()
			if control then
				for i = 1, control.sections_count do
					local section = control.get_section(i)
					if section then
						for j = 1, section.filters_count do
							local slot = section.get_slot(j)
							if slot and slot.value and slot.value.name and not prototypes.item[slot.value.name] then
								section.clear_slot(j)
							end
						end
					end
				end
			end
		end
	end
end