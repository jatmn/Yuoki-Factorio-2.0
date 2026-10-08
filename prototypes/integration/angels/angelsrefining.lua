local util = require("util")

if mods["angelsrefining"] then
  yi.lib.recipe.replace_ingredient_in_all("y-slag", "angels-slag")
  yi.lib.recipe.atomics.update_auto_icon("angels-slag", "y-ac-slag2uc", "down")

  yi.lib.recipe.replace_result("y-smelt-crush-res1", "y-slag", "angels-slag", 1)
  yi.lib.recipe.replace_result("y-smelt-crush-res2", "y-slag", "angels-slag", 1)
  yi.lib.recipe.replace_result("y-press-richdust", "y-slag", "angels-slag", 1)
  yi.lib.recipe.replace_result("y_hps_purecopper", "y-slag", "angels-slag", 1)
  yi.lib.recipe.replace_result("y_hps_pureiron", "y-slag", "angels-slag", 1)
  yi.lib.recipe.replace_result("y_hps_steel", "y-slag", "angels-slag", 1)

  yi.lib.item.hide("y-slag")

  if mods["recycler"] then
    if data.raw.item["y-slag"] then
      local slag = data.raw.item["y-slag"]
      local removed_recipes = {}
      slag.hidden = true
      slag.factorio_enabled = false
      -- This flag prevents NEW recycler recipes from being made
      slag.auto_recycle = false
      -- This part deletes the recipe if it was ALREADY generated
      if data.raw.recipe["y-slag-recycling"] then
        data.raw.recipe["y-slag-recycling"] = nil
        removed_recipes["y-slag-recycling"] = true
      end

      for name, recipe in pairs(data.raw.recipe) do
        if util.contains_value(recipe.categories or {}, "recycling") then
          local results = recipe.results or (recipe.result and { { name = recipe.result } })
          if results then
            for _, res in ipairs(results) do
              if (res.name == "y-slag") or (res[1] == "y-slag") then
                data.raw.recipe[name] = nil
                removed_recipes[name] = true
                break
              end
            end
          end
        end
      end

      for _, technology in pairs(data.raw.technology) do
        for i = #(technology.effects or {}), 1, -1 do
          local effect = technology.effects[i]
          if effect.type == "unlock-recipe" and removed_recipes[effect.recipe] then
            table.remove(technology.effects, i)
          end
        end
      end
    end
  end
end
