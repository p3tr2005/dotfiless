require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- Vim Navigator mappings
map("n", "<C-h>", ":TmuxNavigateLeft<CR>", { noremap = true, silent = true, desc = "Navigate left in tmux" })
map("n", "<C-j>", ":TmuxNavigateDown<CR>", { noremap = true, silent = true, desc = "Navigate down in tmux" })
map("n", "<C-k>", ":TmuxNavigateUp<CR>", { noremap = true, silent = true, desc = "Navigate up in tmux" })
map("n", "<C-l>", ":TmuxNavigateRight<CR>", { noremap = true, silent = true, desc = "Navigate right in tmux" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
