if mods["angelsrefining"] then
	yi.lib.recipe.replace_ingredient_in_all("y-slag", "angels-slag")
	yi.lib.recipe.atomics.update_auto_icon("angels-slag", "y-ac-slag2uc", "down")

	local recipe_replacements = {
		"y-smelt-crush-res1",
		"y-smelt-crush-res2",
		"y-press-richdust",
		"y_hps_purecopper",
		"y_hps_pureiron",
		"y_hps_steel",
	}

	for _, recipe_name in ipairs(recipe_replacements) do
		yi.lib.recipe.replace_result(recipe_name, "y-slag", "angels-slag", 1)
	end

	yi.lib.item.hide("y-slag")

	if mods["quality"] then
		if data.raw.item["y-slag"] then
			local slag = data.raw.item["y-slag"]
			slag.hidden = true
			slag.factorio_enabled = false
			-- This flag prevents NEW recycler recipes from being made
			slag.auto_recycle = false
			-- This part deletes the recipe if it was ALREADY generated
			if data.raw.recipe["y-slag-recycling"] then
				data.raw.recipe["y-slag-recycling"] = nil
			end

			for name, recipe in pairs(data.raw.recipe) do
				if recipe.category == "recycling" then
					local results = recipe.results or (recipe.result and { { name = recipe.result } })
					if results then
						for _, res in ipairs(results) do
							if (res.name == "y-slag") or (res[1] == "y-slag") then
								data.raw.recipe[name] = nil
								break
							end
						end
					end
				end
			end
		end
	end
end
