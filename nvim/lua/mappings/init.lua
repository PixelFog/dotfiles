local map = vim.keymap.set
vim.g.mapleader = ' '

map('n' , '<C-n>' , ':NvimTreeToggle<CR>')
map('n' , '<C-h>' , ':NvimTreeFocus<CR>')
map('n' , '<C-l>' , '<C-w>l')

