return {
  "VonHeikemen/fine-cmdline.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local keymap = vim.keymap
    keymap.set("n", ":", "<cmd>FineCmdline<CR>", { noremap = true })
    require("fine-cmdline").setup({
      cmdline = {
        prompt = ":",
      },
      popup = {
        position = {
          row = "50%",
          col = "50%",
        },
        size = {
          width = "40%",
        },
      },
    })
  end,
}
