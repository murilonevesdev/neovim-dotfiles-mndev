return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        svelte = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        markdown = { "prettier" },
        yaml = { "prettier" },
        graphql = { "prettier" },
        liquid = { "prettier" },
        rust = { "rustfmt", lsp_format = "fallback" },
        java = { "google-java-format" },
        lua = { "stylua" },
        python = { "isort", "black" },
      },
      format_on_save = function(bufnr)
        -- Disable autoformat on certain filetypes
        local ignore_filetypes = { "markdown" }
        if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
          return
        end
        -- Disable with a global or buffer-local variable
        if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
          return
        end
        -- ...additional logic...
        return { timeout_ms = 1000, lsp_format = "fallback" }
      end,
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
