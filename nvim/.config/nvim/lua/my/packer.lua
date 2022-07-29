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
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'rcarriga/cmp-dap'
  use 'saadparwaiz1/cmp_luasnip'
  use 'onsails/lspkind-nvim' -- nice icons
  use 'gbrlsnchs/telescope-lsp-handlers.nvim'
  use {
    'folke/todo-comments.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('todo-comments').setup()
    end,
  }

  use {
    'folke/trouble.nvim',
    require = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('trouble').setup {
        icons = true,
      }
    end,
  }

  -- need to do this because of eslint
  use 'jose-elias-alvarez/null-ls.nvim'

  -- trying different things
  use 'TimUntersberger/neogit'
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end,
  }

  -- undotree is cool
  use 'mbbill/undotree'

  -- better code
  use('nvim-treesitter/nvim-treesitter', {
    run = ':TSUpdate',
  })
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'gpanders/editorconfig.nvim'

  -- better go code
  use {
    'ray-x/go.nvim',
    config = function()
      require('go').setup {}
    end,
  }

  -- i'm too lazy to comment
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end,
  }

  -- just because it's fancy
  use {
    'j-hui/fidget.nvim',
    config = function()
      require('fidget').setup()
    end,
  }

  -- beauty
  use 'nvim-lualine/lualine.nvim'

  -- debug
  use 'mfussenegger/nvim-dap'
  use 'nvim-telescope/telescope-dap.nvim'
  use 'rcarriga/nvim-dap-ui'
  use 'theHamsta/nvim-dap-virtual-text'

  use 'github/copilot.vim'
end)
