local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

vim.g.mapleader = " "

map("n", "<leader>ff", ":Telescope find_files<CR>", opt)
map("v", "<C-c>", '"+yy', opt)
map("n", "<C-v>", '"+p', opt)


