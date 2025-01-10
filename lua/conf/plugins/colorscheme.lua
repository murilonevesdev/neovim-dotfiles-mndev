return {
  "gbprod/nord.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nord").setup({})
    vim.cmd.colorscheme("nord")
    -- NOTE: Moved to markdown.lua -> So the "Special" HL only applies to markdown
    --
    -- local nord_black = "#2e3440"
    --
    -- vim.api.nvim_set_hl(0, "@markup.strong", { fg = "#bf616a", bold = true })
    -- vim.api.nvim_set_hl(0, "@markup.italic", { fg = "#ebcb8b", italic = true })
    -- vim.api.nvim_set_hl(0, "Special", { fg = "#9eb6c8", italic = true })
    --
    -- vim.api.nvim_set_hl(0, "RenderMarkdownH3Bg", { bg = "#b48ead", fg = nord_black })
    -- vim.api.nvim_set_hl(0, "RenderMarkdownH4Bg", { bg = "#88c0d0", fg = nord_black })
    -- vim.api.nvim_set_hl(0, "RenderMarkdownH5Bg", { bg = "#81a1c1", fg = nord_black })
    -- vim.api.nvim_set_hl(0, "RenderMarkdownH6Bg", { bg = "#5e81ac", fg = nord_black })
  end,
}
