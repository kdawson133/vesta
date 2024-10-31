return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")
    -- get lualine nord theme
    local lualine_nord = require("lualine.themes.nord")
    -- new colors for status line
    local new_colors = {
      blue = "#88c0d0", -- nord8
      green = "#a3be8c", -- nord14
      violet = "#b48ead", -- nord15
      yellow = "ebcb8b", -- nord13
      black = "#2e3440", -- nord0
    }
    -- change nord theme colors
    lualine_nord.normal.a.bg = new_colors.blue
    lualine_nord.insert.a.bg = new_colors.green
    lualine_nord.visual.a.bg = new_colors.violet
    lualine_nord.command = {
      a = {
        gui = "bold",
        bg = new_colors.yellow,
        fg = new_colors.black,
      },
    }
    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = lualine_nord,
        icons_enabled = true,
        disabled_filetypes = {
          'alpha', 'NvimTree', 'lazy', 'Mason'
        },
      },
    })
  end
}
