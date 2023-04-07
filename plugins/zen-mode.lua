local utils = require "astronvim.utils"
local is_available = utils.is_available
local ui = require "astronvim.utils.ui"

return {
  "folke/zen-mode.nvim",
  lazy = false,
  config = function()
    require("zen-mode").setup {
      window = {
        backdrop = 1,
        width = 80,
        options = {
          number = false,
          relativenumber = false,
          cursorline = false,
          cursorcolumn = false,
        },
      },
      plugins = {

      },
      on_open = function(win)
        ui.toggle_statusline()
        ui.toggle_cmp()
        ui.toggle_wrap()
      end,
    }
  end
}
