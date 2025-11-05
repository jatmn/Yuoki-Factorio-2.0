if not yi then
	yi = {}
end
if not yi.lib then
	yi.lib = {}
end
if not yi.lib.recipe then
	yi.lib.recipe = {}
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

-- need to update so i can get icon if its a liquid too..

if not yi.lib.recipe.atomics then
	yi.lib.recipe.atomics = {}
end

-- Used to make icons for Item -> Unicomp recipes
function yi.lib.recipe.atomics.item_down(icon_name, size)
	local item_name = data.raw.item[icon_name].icon
	local image_size = size or 64
	if type(icon_name) == "string" then
		return {
			{
				icon = item_name,
				icon_size = image_size,
			},
			{
				icon = "__Yuoki__/graphics/icons/atomics/atomics-down-arrow.png",
				icon_size = 128,
				Scale = 1,
			},
		}
	end
end

-- Used to make icons for Unicomp -> Item recipes
function yi.lib.recipe.atomics.item_up(icon_name, size)
	local item_name = data.raw.item[icon_name].icon
	local image_size = size or 64
	if type(icon_name) == "string" then
		return {
			{
				icon = item_name,
				icon_size = image_size,
			},
			{
				icon = "__Yuoki__/graphics/icons/atomics/atomics-up-arrow.png",
				icon_size = 128,
				Scale = 1,
			},
		}
	end
end

-- Used to make icons for Fluid -> Unicomp recipes
function yi.lib.recipe.atomics.fluid_down(icon_name, size)
	local item_name = data.raw.fluid[icon_name].icon
	local image_size = size or 64
	if type(icon_name) == "string" then
		return {
			{
				icon = item_name,
				icon_size = image_size,
			},
			{
				icon = "__Yuoki__/graphics/icons/atomics/atomics-down-arrow.png",
				icon_size = 128,
				Scale = 1,
			},
		}
	end
end

-- Used to make icons for Unicomp -> Fluid recipes
function yi.lib.recipe.atomics.fluid_up(icon_name, size)
	local item_name = data.raw.fluid[icon_name].icon
	local image_size = size or 64
	if type(icon_name) == "string" then
		return {
			{
				icon = item_name,
				icon_size = image_size,
			},
			{
				icon = "__Yuoki__/graphics/icons/atomics/atomics-up-arrow.png",
				icon_size = 128,
				Scale = 1,
			},
		}
	end
end
