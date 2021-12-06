local constants = {}

constants.curved_rail_grid_sizes = {
  { left_top = { x = -2, y = -4 }, right_bottom = { x = 2, y = 4 } },
  { left_top = { x = -4, y = -2 }, right_bottom = { x = 4, y = 2 } },
}

-- collisions for diagonal and curved rails are hardcoded
-- each table is a direction -> colliding tiles mapping, relative to the centerpoint of the entity
constants.rail_tiles = {
  ["curved-rail"] = {
    [0] = {
      { x = -3, y = -3 },
      { x = -3, y = -2 },
      { x = -2, y = -4 },
      { x = -2, y = -3 },
      { x = -2, y = -2 },
      { x = -2, y = -1 },
      { x = -1, y = -3 },
      { x = -1, y = -2 },
      { x = -1, y = -1 },
      { x = -1, y = 0 },
      { x = 0, y = -2 },
      { x = 0, y = -1 },
      { x = 0, y = 0 },
      { x = 0, y = 1 },
      { x = 0, y = 2 },
      { x = 0, y = 3 },
      { x = 1, y = 0 },
      { x = 1, y = 1 },
      { x = 1, y = 2 },
      { x = 1, y = 3 },
    },
    [1] = {
      { x = -2, y = 0 },
      { x = -2, y = 1 },
      { x = -2, y = 2 },
      { x = -2, y = 3 },
      { x = -1, y = -2 },
      { x = -1, y = -1 },
      { x = -1, y = 0 },
      { x = -1, y = 1 },
      { x = -1, y = 2 },
      { x = -1, y = 3 },
      { x = 0, y = -3 },
      { x = 0, y = -2 },
      { x = 0, y = -1 },
      { x = 0, y = 0 },
      { x = 1, y = -4 },
      { x = 1, y = -3 },
      { x = 1, y = -2 },
      { x = 1, y = -1 },
      { x = 2, y = -3 },
      { x = 2, y = -2 },
    },
    [2] = {
      { x = -4, y = 0 },
      { x = -4, y = 1 },
      { x = -3, y = 0 },
      { x = -3, y = 1 },
      { x = -2, y = 0 },
      { x = -2, y = 1 },
      { x = -1, y = -1 },
      { x = -1, y = 0 },
      { x = -1, y = 1 },
      { x = 0, y = -2 },
      { x = 0, y = -1 },
      { x = 0, y = 0 },
      { x = 1, y = -3 },
      { x = 1, y = -2 },
      { x = 1, y = -1 },
      { x = 1, y = 0 },
      { x = 2, y = -3 },
      { x = 2, y = -2 },
      { x = 2, y = -1 },
      { x = 3, y = -2 },
    },
    [3] = {
      { x = -4, y = -2 },
      { x = -4, y = -1 },
      { x = -3, y = -2 },
      { x = -3, y = -1 },
      { x = -2, y = -2 },
      { x = -2, y = -1 },
      { x = -1, y = -2 },
      { x = -1, y = -1 },
      { x = -1, y = 0 },
      { x = 0, y = -1 },
      { x = 0, y = 0 },
      { x = 0, y = 1 },
      { x = 1, y = -1 },
      { x = 1, y = 0 },
      { x = 1, y = 1 },
      { x = 1, y = 2 },
      { x = 2, y = 0 },
      { x = 2, y = 1 },
      { x = 2, y = 2 },
      { x = 3, y = 1 },
    },
    [4] = {
      { x = -2, y = -4 },
      { x = -2, y = -3 },
      { x = -2, y = -2 },
      { x = -2, y = -1 },
      { x = -1, y = -4 },
      { x = -1, y = -3 },
      { x = -1, y = -2 },
      { x = -1, y = -1 },
      { x = -1, y = 0 },
      { x = -1, y = 1 },
      { x = 0, y = -1 },
      { x = 0, y = 0 },
      { x = 0, y = 1 },
      { x = 0, y = 2 },
      { x = 1, y = 0 },
      { x = 1, y = 1 },
      { x = 1, y = 2 },
      { x = 1, y = 3 },
      { x = 2, y = 1 },
      { x = 2, y = 2 },
    },
    [5] = {
      { x = -3, y = 1 },
      { x = -3, y = 2 },
      { x = -2, y = 0 },
      { x = -2, y = 1 },
      { x = -2, y = 2 },
      { x = -2, y = 3 },
      { x = -1, y = -1 },
      { x = -1, y = 0 },
      { x = -1, y = 1 },
      { x = -1, y = 2 },
      { x = 0, y = -4 },
      { x = 0, y = -3 },
      { x = 0, y = -2 },
      { x = 0, y = -1 },
      { x = 0, y = 0 },
      { x = 0, y = 1 },
      { x = 1, y = -4 },
      { x = 1, y = -3 },
      { x = 1, y = -2 },
      { x = 1, y = -1 },
    },
    [6] = {
      { x = -4, y = 1 },
      { x = -3, y = 0 },
      { x = -3, y = 1 },
      { x = -3, y = 2 },
      { x = -2, y = -1 },
      { x = -2, y = 0 },
      { x = -2, y = 1 },
      { x = -2, y = 2 },
      { x = -1, y = -1 },
      { x = -1, y = 0 },
      { x = -1, y = 1 },
      { x = 0, y = -2 },
      { x = 0, y = -1 },
      { x = 0, y = 0 },
      { x = 1, y = -2 },
      { x = 1, y = -1 },
      { x = 2, y = -2 },
      { x = 2, y = -1 },
      { x = 3, y = -2 },
      { x = 3, y = -1 },
    },
    [7] = {
      { x = -4, y = -2 },
      { x = -3, y = -3 },
      { x = -3, y = -2 },
      { x = -3, y = -1 },
      { x = -2, y = -3 },
      { x = -2, y = -2 },
      { x = -2, y = -1 },
      { x = -2, y = 0 },
      { x = -1, y = -2 },
      { x = -1, y = -1 },
      { x = -1, y = 0 },
      { x = 0, y = -1 },
      { x = 0, y = 0 },
      { x = 0, y = 1 },
      { x = 1, y = 0 },
      { x = 1, y = 1 },
      { x = 2, y = 0 },
      { x = 2, y = 1 },
      { x = 3, y = 0 },
      { x = 3, y = 1 },
    },
  },
  ["straight-rail"] = {
    [1] = {
      { x = -1, y = -1 },
      { x = 0, y = -2 },
      { x = 0, y = -1 },
      { x = 0, y = 0 },
      { x = 1, y = -1 },
    },
    [3] = {
      { x = -1, y = 0 },
      { x = 0, y = -1 },
      { x = 0, y = 0 },
      { x = 0, y = 1 },
      { x = 1, y = 0 },
    },
    [5] = {
      { x = -2, y = 0 },
      { x = -1, y = -1 },
      { x = -1, y = 0 },
      { x = -1, y = 1 },
      { x = 0, y = 0 },
    },
    [7] = {
      { x = -2, y = -1 },
      { x = -1, y = -2 },
      { x = -1, y = -1 },
      { x = -1, y = 0 },
      { x = 0, y = -1 },
    },
  },
}

constants.settings = {
  consider_tiles_for_quick_grid = "bpt-consider-tiles-for-quick-grid",
  show_swap_wire_colors = "bpt-show-swap-wire-colors",
  show_set_tiles = "bpt-show-set-tiles",
  show_quick_grid = "bpt-show-quick-grid",
  show_configure = "bpt-show-configure",
}

return constants
