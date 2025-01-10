return {
  "MeanderingProgrammer/render-markdown.nvim",
  -- dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
  -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {},
  config = function()
    require("render-markdown").setup({
      bullet = {
        enabled = true,
        icons = { "●", "○", "◆", "◇" },
        right_pad = 1,
      },
      checkbox = {
        custom = {
          tilde = {
            raw = "[~]",
            rendered = "",
            highlight = "DiagnosticOk",
            scope_highlight = nil,
          },
          checked = {
            raw = "[x]",
            rendered = "󰄵",
            highlight = "ObsidianDone",
            scope_highlight = nil,
          },
          canceled = {
            raw = "[-]",
            rendered = "",
            highlight = "DiagnosticError",
            scope_highlight = nil,
          },
          bookmark = {
            raw = "[b]",
            rendered = "",
            highlight = "ObsidianTodo",
            scope_highlight = nil,
          },
          location = {
            raw = "[l]",
            rendered = "",
            highlight = "ObsidianExtLinkIcon",
            scope_highlight = nil,
          },
          star = {
            raw = "[*]",
            rendered = "",
            highlight = "DiagnosticWarn",
            scope_highlight = nil,
          },
          important = {
            raw = "[!]",
            rendered = "",
            highlight = "DiagnosticWarn",
            scope_highlight = nil,
          },
          question = {
            raw = "[?]",
            rendered = "󰠗",
            highlight = "DiagnosticOk",
            scope_highlight = nil,
          },
          scheduling = {
            raw = "[<]",
            rendered = "󰃰",
            highlight = "DiagnosticInfo",
            scope_highlight = nil,
          },
          forwarded = {
            raw = "[>]",
            rendered = "",
            highlight = "ObsidianRightArrow",
            scope_highlight = nil,
          },
          information = {
            raw = "[i]",
            rendered = "󰋼",
            highlight = "DiagnosticInfo",
            scope_highlight = nil,
          },
          savings = {
            raw = "[S]",
            rendered = "",
            highlight = "DiagnosticOk",
            scope_highlight = nil,
          },
          incomplete = {
            raw = "[/]",
            rendered = "󱎖",
            highlight = "DiagnosticTodo",
            scope_highlight = nil,
          },
        },
      },
      callout = {
        bible = { raw = "[!bible]", rendered = " Bible", highlight = "RenderMarkdownInfo" },
      },
      pipe_table = { preset = "round", cell = "trimmed" },
    })
  end,
}
