return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-tree/nvim-web-devicons",
      "folke/todo-comments.nvim",
    },
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")

      telescope.setup({
        defaults = {
          path_display = { "smart" },
          mappings = {
            i = {
              ["<C-k>"] = actions.move_selection_previous, -- move to prev result
              ["<C-j>"] = actions.move_selection_next, -- move to next result
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
          },
        },
      })

      telescope.load_extension("fzf")

      local builtin = require("telescope.builtin")
      -- set keymaps
      local keymap = vim.keymap -- for conciseness

      keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Fuzzy find files in cd" })
      keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Fuzzy find recent files" })
      keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Find string in cwd" })
      keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Find string under cursor in cwd" })
      keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find TODOs" })
      keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "[F]ind [D]iagnostics" })
      keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[F]ind Existing [B]uffers" })
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      -- get access to telescopes navigation functions
      local actions = require("telescope.actions")

      require("telescope").setup({
        -- use ui-select dropdown as our ui
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
        -- set keymappings to navigate through items in the telescope io
        mappings = {
          i = {
            -- use <cltr> + n to go to the next option
            ["<C-n>"] = actions.cycle_history_next,
            -- use <cltr> + p to go to the previous option
            ["<C-p>"] = actions.cycle_history_prev,
            -- use <cltr> + j to go to the next preview
            ["<C-j>"] = actions.move_selection_next,
            -- use <cltr> + k to go to the previous preview
            ["<C-k>"] = actions.move_selection_previous,
          },
        },
        -- load the ui-select extension
        require("telescope").load_extension("ui-select"),
      })
    end,
  },
}
