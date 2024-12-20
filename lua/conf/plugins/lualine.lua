return {
  "nvim-lualine/lualine.nvim",
  dependencies = {"nvim-tree/nvim-web-devicons"},
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")
    -- ########### CUSTOM NORD THEME !!!!
    local colors = {
      blue   = '#5e81ac',
      cyan   = '#88c0d0',
      black  = '#2e3440',
      dgrey  = '#3b4252',
      white  = '#eceff4',
      red    = '#bf616a',
      green  = '#a3be8c',
      lgrey  = '#4c566a',
      yellow = '#ebcb8b',
    }
    local nord_custom = {
      normal = {
        a = { fg = colors.black, bg = colors.green, gui = "bold" },
        b = { fg = colors.white, bg = colors.lgrey },
        c = { fg = colors.white, bg = colors.dgrey  },
      },
      insert = { a = { fg = colors.black, bg = colors.blue, gui = "bold"  } },
      command = { a = { fg = colors.black, bg = colors.yellow, gui = "bold"  } },
      visual = { a = { fg = colors.black, bg = colors.cyan, gui = "bold"  } },
      replace = { a = { fg = colors.black, bg = colors.red, gui = "bold"  } },
      inactive = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.white },
      },
    }
    -- configure lualine with nord theme
    lualine.setup({
      options = {
        theme = nord_custom,
        component_separators = '',
        section_separators = { left = '', right = '' },
        disabled_filetypes = { 'NvimTree'}
      },
      sections = {
        lualine_a = { { 'mode', separator = { left = '', right = '' }, right_padding = 2 } },
        lualine_c = {{'branch', separator = { right ='' }}, 'diff'},
        lualine_b = {'filename'},
        lualine_x = {{lazy_status.updates, cond = lazy_status.has_updates, color = { fg = '#ebcb8b'}}, {'diagnostics'}, {'encoding'}},
        lualine_y = { 'filetype'},
        lualine_z = {
          { 'location', separator = { left = '', right = '' }, left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },
      tabline = {},
      extensions = {},
    })
  end,
}
