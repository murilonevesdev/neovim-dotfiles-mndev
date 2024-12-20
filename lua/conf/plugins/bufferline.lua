return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "tabs",
      separator_style = "thick",
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          text_align = "left", 
          separator = false
        }
      }
    }
  }
}
