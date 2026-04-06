# Inserter Optimization Plan

## Executive Summary

After reviewing [`y_inserter.lua`](prototypes/objects/y_inserter.lua) and [`y_inserter_2.lua`](prototypes/objects/y_inserter_2.lua), I found **no existing yi library functions that directly apply** to inserter prototype creation. The yi library contains pipe helpers in [`yi-entity.lua`](lib/yi-entity.lua) and item manipulation functions in [`yi-item.lua`](lib/yi-item.lua), but nothing for inserter entities.

However, there is **significant code duplication** in the inserter files that can be optimized by creating new helper functions following the established `make_pipe()` pattern.

---

## Current State Analysis

### Files Analyzed

| File | Lines | Inserters | Unique Properties |
|------|-------|-----------|-------------------|
| `y_inserter.lua` | 1069 | 8 | Fast, Long, Smart, Smart-Long, RightR2, LeftR2, RR, LL |
| `y_inserter_2.lua` | ~340 | 3 | Diagonal, Evade-ShortR, Evade-ShortL |

### Existing yi Library Functions

| Module | Function | Applicable? |
|--------|----------|-------------|
| `yi.lib.entity.make_pipe_pictures()` | Generate pipe pictures | ❌ Pipe-specific |
| `yi.lib.entity.make_pipe()` | Create pipe entity | ❌ Pipe-specific |
| `yi.lib.entity.make_pipe_to_ground()` | Create underground pipe | ❌ Pipe-specific |
| `yi.lib.item.hide()` | Hide item from menus | ❌ Post-creation |
| `yi.lib.item.retire()` | Retire obsolete items | ❌ Post-creation |
| `yi.lib.recipe.replace_ingredient()` | Replace recipe ingredient | ❌ Recipe manipulation |

**Conclusion**: No existing functions can reduce inserter code duplication. New helpers are needed.

---

## Duplication Identified

### 1. Working Sound Table (Repeated 8+ times)

```lua
working_sound = {
    match_progress_to_activity = true,
    sound = {
        { filename = "__base__/sound/inserter-long-handed-1.ogg", volume = 0.75 },
        { filename = "__base__/sound/inserter-long-handed-2.ogg", volume = 0.75 },
        { filename = "__base__/sound/inserter-long-handed-3.ogg", volume = 0.75 },
        { filename = "__base__/sound/inserter-long-handed-4.ogg", volume = 0.75 },
        { filename = "__base__/sound/inserter-long-handed-5.ogg", volume = 0.75 },
    },
},
```

### 2. Hand Shadow Pictures (Identical across all inserters)

```lua
hand_base_shadow = {
    filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
    priority = "extra-high",
    width = 8,
    height = 33,
},
hand_closed_shadow = {
    filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
    priority = "extra-high",
    width = 18,
    height = 41,
},
hand_open_shadow = {
    filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
    priority = "extra-high",
    width = 18,
    height = 41,
},
```

### 3. Standard Entity Properties (Repeated for every inserter)

```lua
flags = { "placeable-neutral", "placeable-player", "player-creation" }
corpse = "small-remnants"
max_health = 150
filter_count = 5
collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } }
selection_box = { { -0.4, -0.35 }, { 0.4, 0.45 } }
fast_replaceable_group = "inserter"
circuit_wire_connection_points = circuit_connector_definitions["inserter"].points
circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites
circuit_wire_max_distance = 22.5
```

---

## Proposed Solution

### New Functions to Add in [`yi-entity.lua`](lib/yi-entity.lua)

Following the established pattern of `make_pipe_pictures()` and `make_pipe()`, create:

#### 1. `yi.lib.entity.make_inserter_working_sound(sound_type)`

Returns standardized working sound table.

```lua
-- Usage:
working_sound = yi.lib.entity.make_inserter_working_sound("fast")  -- fast inserter sounds
working_sound = yi.lib.entity.make_inserter_working_sound("long")  -- long-handed sounds
```

#### 2. `yi.lib.entity.make_inserter_shadow_pictures()`

Returns hand shadow picture tables.

```lua
-- Usage:
local shadows = yi.lib.entity.make_inserter_shadow_pictures()
-- Returns: { hand_base_shadow = {...}, hand_closed_shadow = {...}, hand_open_shadow = {...} }
```

#### 3. `yi.lib.entity.make_inserter(name, config)`

Generates complete inserter entity with defaults + overrides.

```lua
-- Usage:
yi.lib.entity.make_inserter("y-inserter-fast", {
    icon = "__Yuoki__/graphics/entity/inserters/y_smart_ins_icon.png",
    pickup_position = { 0, -1 },
    insert_position = { 0, 1.2 },
    energy_per_movement = "6kJ",
    energy_per_rotation = "6kJ",
    extension_speed = 0.1,
    rotation_speed = 0.1,
    hand_base_picture = {...},
    hand_closed_picture = {...},
    hand_open_picture = {...},
    platform_picture = {...},
})
```

**Default values provided:**
- `type = "inserter"`
- `bulk = true`
- `icon_size = 64`
- `flags = { "placeable-neutral", "placeable-player", "player-creation" }`
- `minable = { mining_time = 0.5, result = name }`
- `max_health = 150`
- `filter_count = 5`
- `corpse = "small-remnants"`
- `collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } }`
- `selection_box = { { -0.4, -0.35 }, { 0.4, 0.45 } }`
- `fast_replaceable_group = "inserter"`
- `energy_source = { type = "electric", usage_priority = "secondary-input" }`
- `hand_size = 1.5`
- Circuit connection defaults
- Shadow pictures (via `make_inserter_shadow_pictures()`)

---

## Implementation Plan

### Phase 1: Add Helper Functions to yi-entity.lua

1. **Add `make_inserter_working_sound(sound_type)`**
   - Support "fast" and "long" sound variants
   - Return complete working_sound table

2. **Add `make_inserter_shadow_pictures()`**
   - Return table with all three shadow picture definitions
   - Use base game burner-inserter shadow sprites

3. **Add `make_inserter(name, config)`**
   - Define default inserter properties
   - Merge user config with defaults
   - Auto-inject shadow pictures and circuit connections

### Phase 2: Refactor y_inserter.lua

Convert each inserter from ~100 lines to ~30 lines:

```lua
-- Before: ~100 lines per inserter
-- After: ~30 lines per inserter

data:extend({
    yi.lib.entity.make_inserter("y-inserter-fast", {
        icon = "__Yuoki__/graphics/entity/inserters/y_smart_ins_icon.png",
        pickup_position = { 0, -1 },
        insert_position = { 0, 1.2 },
        energy_per_movement = "6kJ",
        energy_per_rotation = "6kJ",
        extension_speed = 0.1,
        rotation_speed = 0.1,
        hand_base_picture = { filename = "...", width = 8, height = 34 },
        hand_closed_picture = { filename = "...", width = 18, height = 41, shift = { -0.0625, 0 } },
        hand_open_picture = { filename = "...", width = 18, height = 41, shift = { -0.0625, 0 } },
        platform_picture = { sheet = {...} },
    }),
})
```

### Phase 3: Refactor y_inserter_2.lua

Same pattern for the diagonal and evade inserters.

---

## Expected Results

| Metric | Before | After | Reduction |
|--------|--------|-------|-----------|
| y_inserter.lua lines | 1069 | ~400 | ~63% |
| y_inserter_2.lua lines | 340 | ~150 | ~56% |
| Duplicate code blocks | 8+ | 0 | 100% |
| Maintenance burden | High | Low | Significant |

---

## Risk Assessment

| Risk | Mitigation |
|------|------------|
| New functions introduce bugs | Follow exact pattern from working `make_pipe()` function |
| Missing inserter-specific properties | Use `overrides` table for edge cases |
| Future Factorio updates change inserter prototype | Centralized function makes updates easier |

---

## Next Steps

1. **Await user approval** of this plan
2. **Switch to Code mode** to implement helper functions in `yi-entity.lua`
3. **Refactor inserter files** to use new helpers
4. **Test in Factorio** to verify inserters work correctly
