return {
  "gbprod/nord.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nord").setup({})
    vim.cmd.colorscheme("nord")
    vim.api.nvim_set_hl(0, "@markup.strong", { fg = "#bf616a", bold = true })
    vim.api.nvim_set_hl(0, "@markup.italic", { fg = "#ebcb8b", italic = true })
  end,
}
