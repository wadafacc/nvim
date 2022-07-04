-- some shit i copied lmao
vim.cmd('packadd packer.nvim')

-- idk what it does but here ya go
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])


return require('packer').startup(function()
    use {'wbthomason/packer.nvim'}
	use {'lewis6991/impatient.nvim'} 
-- telli
	use { 'nvim-telescope/telescope.nvim' }
	use { "nvim-lua/plenary.nvim" }	
-- ZEY ARE IN ZE TREEES
	use {'kyazdani42/nvim-tree.lua',cmd={'NvimTreeToggle','NvimTreeOpen'}, config = function() require 'configs.TREE.tree' end}
	use { 'kyazdani42/nvim-web-devicons', config = function () require 'configs.QOL.devicons' end }
-- bufferline
	use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

-- good ol' dashboard
	use {'glepnir/dashboard-nvim', config = function() require 'configs.QOL.dashboard' end }
	
-- themes
	use {'olimorris/onedarkpro.nvim', config = function() require 'themes.onedark' end}
	use {'shaunsingh/nord.nvim'}
    -- lsp
    use {
      'neovim/nvim-lspconfig',
      config = function()
        require 'configs.LSP.lsp'
      end,
      requires = {
        'williamboman/nvim-lsp-installer'
      }
    }

-- completion
  use {
      'hrsh7th/nvim-cmp',
      config = function()
        require('configs.LSP.completion')
      end,
      requires = {
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-calc',
        'hrsh7th/cmp-emoji',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lsp-signature-help',
        'saadparwaiz1/cmp_luasnip',
        'f3fora/cmp-spell',
        'petertriho/cmp-git',
        'rafamadriz/friendly-snippets',
        'L3MON4D3/LuaSnip',
      }
    }

-- color hightlighting
	use {'norcalli/nvim-colorizer.lua', ft={'css'},config = function() require 'colorizer'.setup() end }

-- tree sitter (syntax highlighting)
	use {'nvim-treesitter/nvim-treesitter', config = function() require 'configs.TREE.treesitter' end} 

-- floaty term
	use {'akinsho/toggleterm.nvim',config = function() require 'configs.QOL.toggleterminal' end}
-- lualine
	use {'nvim-lualine/lualine.nvim', config = function() require 'configs.QOL.lualine' end,requires = { 'kyazdani42/nvim-web-devicons',opt=true}}
-- which key
	use { "folke/which-key.nvim", config = function() require("which-key").setup {} end}
end)
