local builtin = require("telescope.builtin")
vim.g.mapleader = " "

local opts = { noremap = true, silent = true }
local key = vim.keymap.set

key("n", "<C-i>", ":bn<CR>", opts)
key("n", "<C-o>", ":bp<CR>", opts)

key("i", "jk", "<esc>", opts)

key("n", "<C-s>", ":vsplit<cr>", opts)
key("n", "<S-l>", "<C-w>l", opts)
key("n", "<S-h>", "<C-w>h", opts)

key("v", ">", ">gv")
key("v", "<", "<gv")

key("n", "<m-h>", ":vertical resize -2<CR>")
key("n", "<m-l>", ":vertical resize +2<CR>")

key("n", "<leader>ff", builtin.find_files, opts)
key("n", "<leader>fg", builtin.live_grep, opts)
key("n", "<leader>fb", builtin.buffers, opts)

key("n", "<C-n>", ":Neotree source=filesystem toggle=true position=right<CR>", opts)

key("n", "<leader>n", ":tabnew<CR>", opts)
key("n", "<Tab>", ":tabnext<CR>", opts)
key("n", "<S-Tab>", ":tabprev<CR>", opts)
key("n", "<leader>x", ":tabclose<CR>", opts)
