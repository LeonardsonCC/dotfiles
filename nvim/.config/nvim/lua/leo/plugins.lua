return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Autocomplete
  use {
    'nvim-lua/plenary.nvim',
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
    'simrat39/symbols-outline.nvim',
    'onsails/lspkind-nvim',
    'jose-elias-alvarez/null-ls.nvim',
    'RishabhRD/popfix',
    'RishabhRD/nvim-lsputils',
  }

  -- Utils
  use {
    'folke/trouble.nvim',
  }

  -- Completion
  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip'
  }

  -- Code colors
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }


  -- Style

  use { 'alvarosevilla95/luatab.nvim', requires='kyazdani42/nvim-web-devicons' }

  use 'glepnir/dashboard-nvim'

  use {
    'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' }
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }

  use 'chriskempson/base16-vim'
  use 'gruvbox-community/gruvbox'
  use 'luisiacc/gruvbox-baby'


  -- [G]old
  use 'tpope/vim-fugitive'

  -- Copilot because I'm useless
  use 'github/copilot.vim'

  -- Fish Shell
  use 'dag/vim-fish'

  use {
    'akinsho/bufferline.nvim', 
    requires = 'kyazdani42/nvim-web-devicons',
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
end)
