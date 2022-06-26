local map = vim.keymap.set
vim.g.mapleader = " "

map("n", "<C-n>", ":NvimTreeToggle<CR>")
map("n", "<C-h>", ":NvimTreeFocus<CR>")
map("n", "<C-l>", "<C-w>l")
map("n", "<leader>ff", ":Telescope find_files<CR>")
map("n", "<leader>fa", ":Telescope find_files follow=true no_ignore=true hidden=true <CR>")
map("n", "<leader>fw", ":Telescope live_grep <CR>")
map("n", "<C-s>", ":w<CR>")
