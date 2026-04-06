# AGENTS.md

This file provides guidance to agents when working with code in this repository.

## Project Overview

Yuoki Industries is a Factorio 2.0 mod written in Lua. It adds generators, resource transformations, machinery, and turrets. The mod has integration support for Bob's Ores, Angel's Refining, Krastorio 2, Omnimatter, Space Age, and other mods.

## Directory Structure

```
yuoki/
├── control.lua          -- Runtime script (events, remote interface)
├── data.lua             -- Data stage entry point (prototypes)
├── data-final-fixes.lua -- Post-data fixes
├── data-updates.lua     -- Data updates
├── lib/                 -- Core library (yi-*)
│   ├── yi-tools.lua     -- Main library loader
│   ├── yi-utils.lua     -- yi.lib.get_quality_multiplier, blank_sprite
│   ├── yi-item.lua      -- Item manipulation functions
│   ├── yi-error.lua     -- yi.lib.error.recipe/item/ingredient
│   ├── yi-entity.lua    -- Pipe/storage/valve entity creation
│   ├── yi-recipe.lua    -- Recipe manipulation (atomics, etc.)
│   └── yi-migration.lua -- Migration utilities
├── prototypes/
│   ├── entity/          -- Entity definitions (e_*.lua)
│   ├── item/            -- Item definitions (i_*.lua, ir_*.lua)
│   ├── recipe/          -- Recipe definitions (r_*.lua)
│   ├── objects/         -- Miscellaneous prototypes (y_*.lua)
│   ├── integration/      -- Mod integration (bobores/, angels/, space-age/, etc.)
│   └── z_*.lua          -- Auto-generation files (z_groups, z_items, z_recipes)
```

## Critical Patterns

- **Global namespace**: Uses `yi` and `yi.lib` for all library functions. Check these exist before using.
- **Library loading order** in `lib/yi-tools.lua`: yi-utils → yi-item → yi-error → yi-entity → yi-recipe → yi-migration
- **Space Age detection**: `yi.lib.get_quality_multiplier()` checks `prototypes.item["quality-module"]` to detect Space Age
- **Recipe building**: Use `yi.lib.recipe.atomics.make_down_item()`, `make_down_fluid()`, `make_up_item()` from `lib/yi-recipe.lua`
- **data:extend()**: All prototype definitions use `data:extend({...})` - never use `data:add()`

## Naming Conventions

| Type | Prefix | Example |
|------|--------|---------|
| Entity | `yi_`, `j_yi_` | `yi_radar`, `j_yi_roboport1` |
| Item subgroup | `y-`, `j-y-` | `y-ammo`, `j-y-atomics-1` |
| Recipe category | `yuoki-`, `yrcat_` | `yuoki-atomics`, `yrcat_crystalize` |
| File (entity) | `e_` | `e_electric.lua` |
| File (item) | `i_`, `ir_` | `i_ores.lua`, `ir_atomics.lua` |
| File (recipe) | `r_` | `r_energy.lua` |

## Testing

- Factorio mods have no standalone test command
- Test by launching Factorio with the mod loaded via `factorio --mod-directory <path> --load-save <save>`
- For data stage errors, use `--check-unused-prototypes` flag
- Remote interface available: `remote.call("yuoki", "spawn")` regenerates `y-res1` and `y-res2` entities

## Mod Dependencies

Dependencies in `info.json`:
- `base >= 2.0.42` (required)
- `space-age >= 2.0.43` (optional, use `?` prefix)
- `quality >= 2.0.43` (optional)
- Conflicts: `! Yuoki_F2`, `! yi_engines_F2`, `! YuokiTweaks`

## Code Style

- **Indent**: Tabs (based on Factorio conventions)
- **String concatenation**: Use `..` operator
- **Color values**: Tables like `{r = 179/255, g = 198/255, b = 255/255}` (normalize to 0-1)
- **Coordinates**: Tables like `{x, y}` or `{x, y, z}` for 3D positions
- **Collision/selection boxes**: `{{x1, y1}, {x2, y2}}` format

## Common Tasks

- **Add new item**: Create in `prototypes/item/` following `i_*.lua` pattern, require in `data.lua`
- **Add new entity**: Create in `prototypes/entity/` following `e_*.lua` pattern, require in `data.lua`
- **Add recipe**: Create in `prototypes/recipe/` or use library functions from `yi-lib`
- **Add integration**: Create in `prototypes/integration/<modname>/` with `ir_atomics.lua` pattern
