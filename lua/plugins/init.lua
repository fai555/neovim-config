return require('packer').startup(function()

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'sainnhe/gruvbox-material'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
  use {'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'}}
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons' -- optional, for file icon
    }
  }
  use {'windwp/nvim-ts-autotag'}
  use {'p00f/nvim-ts-rainbow'}
  use {'windwp/nvim-autopairs'}
  use {'folke/which-key.nvim'}
  use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}}
  use {'glepnir/dashboard-nvim'}
  use {'lukas-reineke/format.nvim'}
  use {'akinsho/toggleterm.nvim'}
  use {'ahmedkhalf/project.nvim'}
  use {'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim'}
  use {'nvim-neorg/neorg', requires = 'nvim-lua/plenary.nvim'}
end)

