return require('packer').startup(function()
    use {'wbthomason/packer.nvim'}

--telli
	use { 'nvim-telescope/telescope.nvim' }
	use { "nvim-lua/plenary.nvim" }	
--ZEY ARE IN ZE TREEES
	use {'kyazdani42/nvim-tree.lua',cmd={'NvimTreeToggle','NvimTreeOpen'}, config = function() require 'configs.tree' end}
	use { 'kyazdani42/nvim-web-devicons', config = function () require 'configs.devicons' end }

--good ol' dashboard
	use {'glepnir/dashboard-nvim', config = function() require 'configs.dashboard' end }
	
--themes
	use {'olimorris/onedarkpro.nvim'}
end)
