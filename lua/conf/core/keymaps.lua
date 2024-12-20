vim.g.mapleader = " "

local keymap = vim.keymap

-- keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" } ) -- I don't like this too much, that's why I commented it.

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "No highlights" }) -- Clear search highlights after match.

-- increment/decrement numbers
keymap.set("n", "<C-=>", "<C-a>", { desc = "Increment Number" }) -- increment 21
keymap.set("n", "<C-->", "<C-x>", { desc = "Decrement Number" }) -- decrement 56

-- window splitting/closing
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" })

-- tabs management

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- save

keymap.set("i", "<C-s>", "<cmd>w<CR>", { desc = "Save current file/tab. " })
-- Visual indent without leaving visual mode, so you can indent multiple lines without
-- losing the selected lines
keymap.set("v", ">", ">gv", { desc = "Indent right in visual mode" })
keymap.set("v", "<", "<gv", { desc = "Indent left in visual mode" })

-- Adding Enter creates new line functionality
keymap.set("n", "<C-Enter>", "k0o<Esc>j", { desc = "Create new line (full)" })
keymap.set("n", "<Enter>", "i<Enter><Esc>", { desc = "Create new line (break)" })
