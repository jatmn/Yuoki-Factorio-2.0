local cleanup = settings.startup["yuoki-inserter-cleanup"]
if cleanup and cleanup.value then
  -- Run before technology addons assign unlocks. Keep items and entities for saves.
  for _, name in ipairs(require("scripts.inserter-cleanup-recipes")) do
    data.raw.recipe[name].hidden = true
    data.raw.recipe[name].enabled = false
  end
end
