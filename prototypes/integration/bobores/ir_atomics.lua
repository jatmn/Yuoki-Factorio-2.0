if mods["bobores"] then
	local ore_config = {
		{ setting = "bobmods-ores-enablebauxite", item = "bob-bauxite-ore", amount = 20 }, -- Bauxite
		{ setting = "bobmods-ores-enablecobaltore", item = "bob-cobalt-ore", amount = 10 }, -- Cobalt ore
		{ setting = "bobmods-ores-enablegoldore", item = "bob-gold-ore", amount = 10 }, -- Gold ore
		{ setting = "bobmods-ores-enableleadore", item = "bob-lead-ore", amount = 20 }, -- Lead ore
		{ setting = "bobmods-ores-enablenickelore", item = "bob-nickel-ore", amount = 20 }, -- Nickel ore
		{ setting = "bobmods-ores-enablequartz", item = "bob-quartz", amount = 20 }, -- Quartz
		{ setting = "bobmods-ores-enablerutile", item = "bob-rutile-ore", amount = 20 }, -- Rutile ore
		{ setting = "bobmods-ores-enablesilverore", item = "bob-silver-ore", amount = 20 }, -- Silver ore
		{ setting = "bobmods-ores-enabletinore", item = "bob-tin-ore", amount = 20 }, -- Tin ore
		{ setting = "bobmods-ores-enabletungstenore", item = "bob-tungsten-ore", amount = 10 }, -- Tungsten ore
		{ setting = "bobmods-ores-enablezincore", item = "bob-zinc-ore", amount = 20 }, -- Zinc ore
		{ setting = "bobmods-ores-enablethoriumore", item = "bob-thorium-ore", amount = 10 }, -- Thorium ore
	}

	-- Ores
	for _, config in ipairs(ore_config) do
		if settings.startup[config.setting].value == true then
			yi.lib.recipe.atomics.recipes_make_item(config.item, 32, config.amount, 1)
		end
	end

	-- Fluids
	if settings.startup["bobmods-ores-enablewaterores"].value == true then
		yi.lib.recipe.atomics.recipes_make_fluid("bob-lithia-water", 32, 80, 1) -- Lithia water
	end

	if mods["angelsrefining"] then
		-- Ores (override all settings when Angels Refining is active)
		for _, config in ipairs(ore_config) do
			yi.lib.recipe.atomics.recipes_make_item(config.item, 32, config.amount, 1)
		end
	end
end
