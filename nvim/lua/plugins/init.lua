return require('packer').startup(function(use)
      use 'wbthomason/packer.nvim'
     --[[ use {
          'EdenEast/nightfox.nvim',
          config = function()
                require('colors.nord')
          end
      }--]]
     -- If you are using Packer
      use 'shaunsingh/nord.nvim'
      use {
          'kyazdani42/nvim-tree.lua',
           requires = {
             'kyazdani42/nvim-web-devicons' -- optional, for file icon
          }
      }
      use {
        "williamboman/nvim-lsp-installer",
        {
            "neovim/nvim-lspconfig",
            config = function()
                require("plugins.lspinstaller")
                require("plugins.lspconfig")
            end
        }
      }
      use {
          'hrsh7th/nvim-cmp', --Autocompletion plugin
         config = function()
             require("plugins.cmp")
         end
      }
      use 'hrsh7th/cmp-buffer' --nvim-cmp for buffer words
      use 'hrsh7th/cmp-path' --nvim-cmp for path
      use 'hrsh7th/cmp-nvim-lua'
      use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
      use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
      use "rafamadriz/friendly-snippets"
      use {
          'L3MON4D3/LuaSnip', -- Snippets plugin
          config = function ()
            require('plugins.luasnip')
          end
      }
      use {
          'windwp/nvim-autopairs',
          config = function()
              require("plugins.autopairs")
          end
      }
      use {
          'nvim-treesitter/nvim-treesitter',
          run = ":TSUpdate",
          config = function ()
            require 'plugins.treesitter'
          end
      }
      use {
          'windwp/nvim-ts-autotag',
          config = function ()
            require('nvim-ts-autotag').setup()
          end
      }
end)
