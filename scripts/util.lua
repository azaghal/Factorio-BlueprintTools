local constants = require("constants")

local util = {}

--- Get the current blueprint from the item stack, if it exists and is set up.
--- @param item_stack LuaItemStack
--- @return LuaItemStack|nil
function util.get_blueprint(item_stack)
  if not item_stack or not item_stack.valid_for_read then
    return
  end
  local blueprint
  if item_stack.is_blueprint then
    blueprint = item_stack
  elseif item_stack.is_blueprint_book and item_stack.active_index then
    local inventory = item_stack.get_inventory(defines.inventory.item_main)
    if inventory.is_empty() or item_stack.active_index > #inventory then
      return
    end
    blueprint = util.get_blueprint(inventory[item_stack.active_index])
  end

  if blueprint and blueprint.is_blueprint_setup() then
    return blueprint
  end
end

function util.get_rail_tiles(entity)
  local category = constants.rail_tiles[game.entity_prototypes[entity.name].type]
  if not category then
    return
  end

  return category[entity.direction or 0]
end

--- Displays notification for player at cursor position.
--
-- @param player LuaPlayer Player to notify.
-- @param message LocalisedString Message to show to player.
-- @param sound SoundPath|nil Optional sound to play for the player.
--
function util.cursor_notification(player, message, sound)
  player.create_local_flying_text{
    text = message,
    create_at_cursor = true
  }

  if sound then
    player.play_sound{path = sound}
  end
end

--- Calculates largest build grid size for all entities in the passed-in list of blueprints.
--
-- Useful when dealing with things like rails and train stops that can only be repositioned in increments of two.
--
-- @param blueprint {LuaItemStack} List of blueprints for which to calculate the value. Must be valid for read.
--
function util.get_blueprint_largest_build_grid_size(blueprints)
  local build_grid_size = 1

  for _, blueprint in pairs(blueprints) do
    for _, entity in pairs(blueprint.get_blueprint_entities()) do
      if game.entity_prototypes[entity.name].building_grid_bit_shift > build_grid_size then
        build_grid_size = game.entity_prototypes[entity.name].building_grid_bit_shift
      end
    end
  end

  return build_grid_size
end

--- Returns list of all blueprints in a blueprint book.
--
--
-- @param book LuaItemStack Blueprint book to traverse.
--
-- @return {LuaItemStack} List of blueprints from the passed-in book.
--
function util.get_book_blueprints(book)

  -- Helper function that recursively collects blueprints from the passed-in blueprint book and stores them in the passed-in result table.
  local function collect_blueprints(book, result_table)
    local items = book.get_inventory(defines.inventory.item_main)

    for i = 1, #items do
      local item = items[i]
      if not item then
        return
      elseif item.is_blueprint_book then
        process_book(items, result_table)
      elseif item.is_blueprint then
        table.insert(result_table, item)
      end
    end
  end

  local blueprints = {}

  collect_blueprints(book, blueprints)

  return blueprints
end

return util
