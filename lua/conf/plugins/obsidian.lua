return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter/nvim-treesitter",
    -- see below for full list of optional dependencies 👇
  },
  config = function()
    local keymap = vim.keymap
  end,
  opts = {
    workspaces = {
      {
        name = "Christian",
        path = "~/Documents/ObsidianVaults/Christian/",
      },
      {
        name = "TechStuff",
        path = "~/Documents/ObsidianVaults/TechStuff/",
      },
      {
        name = "A Human of valor",
        path = "~/Documents/ObsidianVaults/A Human of valor/",
      },
    },
    templates = {
      folder = "Ξ Templates",
      date_format = "%Y-%m-%d-%a",
      time_format = "%H:%M",
    },
    -- Optional, by default when you use `:ObsidianFollowLink` on a link to an external
    -- URL it will be ignored but you can customize this behavior here.
    ---@param url string
    follow_url_func = function(url)
      -- Open the URL in the default web browser.
      -- vim.fn.jobstart({"open", url})  -- Mac OS
      vim.fn.jobstart({ "xdg-open", url }) -- linux
      -- vim.cmd(':silent exec "!start ' .. url .. '"') -- Windows
      -- vim.ui.open(url) -- need Neovim 0.10.0+
    end,
    -- see below for full list of options 👇
  },
}
