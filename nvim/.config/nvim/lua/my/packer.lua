return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- colorscheme
  use 'folke/tokyonight.nvim'

  -- telescope is great
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } },
  }

  -- snippets
  use 'L3MON4D3/LuaSnip'

  -- LSP things
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'saadparwaiz1/cmp_luasnip'
  use {
    'tzachar/cmp-tabnine',
    run = './install.sh',
  }
  use 'onsails/lspkind-nvim' -- nice icons

  -- need to do this because of eslint
  use 'jose-elias-alvarez/null-ls.nvim'

  -- trying different things
  use 'TimUntersberger/neogit'
end)
