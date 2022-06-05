require('settings')
require('plugins')
require('nvim-tree-config')
require('mappings')
--Lua:
--vim.cmd[[colorscheme nord]]
--local catpuccin = require('catppuccin')

--catpuccin.setup(
  --  {
    --    transparent_background = true
   -- }
--)
-- Lua
--vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
--vim.cmd[[colorscheme catppuccin]]
vim.cmd[[colorscheme nord]]
vim.g.nord_disable_background = true
require('nord').set()

