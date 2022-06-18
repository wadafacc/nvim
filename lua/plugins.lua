return require('packer').startup(function()
    use {'wbthomason/packer.nvim'}

-- telli
	use { 'nvim-telescope/telescope.nvim' }
	use { "nvim-lua/plenary.nvim" }	
-- ZEY ARE IN ZE TREEES
	use {'kyazdani42/nvim-tree.lua',cmd={'NvimTreeToggle','NvimTreeOpen'}, config = function() require 'configs.tree' end}
	use { 'kyazdani42/nvim-web-devicons', config = function () require 'configs.devicons' end }

-- good ol' dashboard
	use {'glepnir/dashboard-nvim', config = function() require 'configs.dashboard' end }
	
-- themes
	use {'olimorris/onedarkpro.nvim', config = function() require 'themes.onedark' end}

-- LSP Completion Snippets
	use { 'neovim/nvim-lspconfig' }

	use { 'hrsh7th/cmp-nvim-lsp' }
	use { 'hrsh7th/cmp-buffer' }  --, opt = true
	use { 'hrsh7th/cmp-path' } --, opt = true
	use { 'hrsh7th/cmp-cmdline' } --, opt = true
	use { 'hrsh7th/nvim-cmp' } -- , opt = true
	use { 'L3MON4D3/LuaSnip' } --, opt = true
	use { 'saadparwaiz1/cmp_luasnip' } --, opt = true
	use { 'onsails/lspkind.nvim' }

-- COC
	use {'neoclide/coc.nvim'}

-- color hightlighting
	use {'norcalli/nvim-colorizer.lua', ft={'css'},config = function() require 'colorizer'.setup() end }

-- floaty term
	use {'akinsho/toggleterm.nvim',config = function() require 'configs.toggleterminal' end}
end)
