local mod_gui = require("__core__.lualib.mod-gui")

local buttons_gui = {}

function buttons_gui.refresh(player, player_table)
  local button_flow = mod_gui.get_button_flow(player)

  for _, button in pairs(player_table.guis.buttons or {}) do
    button.destroy()
  end

  local flip_horizontally = button_flow.add{
    type = "sprite-button",
    style = "bpt_mod_gui_button_blue",
    sprite = "bpt_flip_horizontally_white",
    tooltip = {"bpt-gui.flip-horizontally-tooltip"}
  }
  flip_horizontally.visible = false

  local flip_vertically = button_flow.add{
    type = "sprite-button",
    style = "bpt_mod_gui_button_blue",
    sprite = "bpt_flip_vertically_white",
    tooltip = {"bpt-gui.flip-vertically-tooltip"}
  }
  flip_vertically.visible = false

  local swap_wire_colors = button_flow.add{
    type = "sprite-button",
    style = "bpt_mod_gui_button_blue",
    sprite = "bpt_swap_wire_colors_white",
    tooltip = {"bpt-gui.swap-wire-colors-tooltip"}
  }
  swap_wire_colors.visible = false

  local set_tiles = button_flow.add{
    type = "sprite-button",
    style = "bpt_mod_gui_button_blue",
    sprite = "bpt_set_tiles_white",
    tooltip = {"bpt-gui.set-tiles-tooltip"}
  }
  set_tiles.visible = false

  player_table.guis.buttons = {
    flip_horizontally = flip_horizontally,
    flip_vertically = flip_vertically,
    swap_wire_colors = swap_wire_colors,
    set_tiles = set_tiles
  }
end

function buttons_gui.show(player_table)
  for _, button in pairs(player_table.guis.buttons) do
    button.visible = true
  end
  player_table.flags.buttons_shown = true
end

function buttons_gui.hide(player_table)
  for _, button in pairs(player_table.guis.buttons) do
    button.visible = false
  end
  player_table.flags.buttons_shown = false
end

return buttons_gui