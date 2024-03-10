local modes = require "modes"

-- Remove existing bindings
modes.remove_binds("normal", { "j", "k", "l", "h" })

-- Add new bindings
modes.add_binds("normal", {
    -- Scroll left
    { "j", "Scroll the page left.",
      function (w) w:scroll{ xrel = -40 } end },

    -- Scroll up
    { "k", "Scroll the page up.",
      function (w) w:scroll{ yrel = -40 } end },

    -- Scroll down
    { "l", "Scroll the page down.",
      function (w) w:scroll{ yrel = 40 } end },

    -- Scroll right
    { "m", "Scroll the page right.",
      function (w) w:scroll{ xrel = 40 } end },
})
