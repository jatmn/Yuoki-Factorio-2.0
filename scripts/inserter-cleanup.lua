local recipes = require("scripts.inserter-cleanup-recipes")

return function()
	local setting = settings.startup["yuoki-inserter-cleanup"]
	local cleanup = setting and setting.value or false
	if cleanup or storage.yuoki_inserter_cleanup then
		for _, force in pairs(game.forces) do
			for _, name in ipairs(recipes) do
				local recipe = force.recipes[name]
				if recipe then
					local enabled = not cleanup and not recipe.hidden and recipe.prototype.enabled
					if not cleanup and not recipe.hidden and not enabled then
						for _, technology in pairs(force.technologies) do
							if technology.researched then
								for _, effect in pairs(technology.prototype.effects) do
									if effect.type == "unlock-recipe" and effect.recipe == name then
										enabled = true
									end
								end
							end
						end
					end
					recipe.enabled = enabled
				end
			end
		end
	end
	storage.yuoki_inserter_cleanup = cleanup
end
