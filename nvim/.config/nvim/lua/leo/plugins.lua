return require("packer").startup(function()
  use "wbthomason/packer.nvim"

  -- Autocomplete
  use {
    "nvim-lua/plenary.nvim",
    "neovim/nvim-lspconfig",
    "williamboman/nvim-lsp-installer",
    "simrat39/symbols-outline.nvim",
    "jose-elias-alvarez/null-ls.nvim",
    "ray-x/lsp_signature.nvim",
  }

  use {
    "weilbith/nvim-code-action-menu",
    cmd = "CodeActionMenu",
    config = function()
      vim.g.code_action_menu_show_details = true
      vim.g.code_action_menu_show_diff = true
    end
  }

  -- Completion
  use {
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-nvim-lsp-document-symbol",

    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip"
  }

  -- Copilot because I"m useless - For new installations I have to use this
  -- use "github/copilot.vim"

  -- Copilot with cmp
  use {
    "zbirenbaum/copilot-cmp",
    requires = "zbirenbaum/copilot.lua",
    event = {"VimEnter"},
    config = function()
      vim.defer_fn(function()
        require("copilot").setup()
      end, 100)
    end,
  }

  -- Code colors
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

  use { "alvarosevilla95/luatab.nvim", requires="kyazdani42/nvim-web-devicons" }

  use {
    "nvim-telescope/telescope.nvim",
  }

  use {
    "akinsho/bufferline.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  }
  use "famiu/bufdelete.nvim"

  use {
    "nvim-lualine/lualine.nvim",
    requires = {"kyazdani42/nvim-web-devicons", opt = true}
  }

  use {
    "kyazdani42/nvim-tree.lua",
    requires = {
      "kyazdani42/nvim-web-devicons", -- optional, for file icon
    },
    config = function() require"nvim-tree".setup {} end
  }

  use "lewis6991/gitsigns.nvim"

  use "tjdevries/colorbuddy.nvim"
  use "luisiacc/gruvbox-baby"
  use {
    "marko-cerovac/material.nvim",
    config = function()
      require("material").setup({
        contrast = {
          floating_windows = true,
          non_current_windows = true,
        },
        high_visibility = {
          darker = true,
        },
      })
    end
  }

  use "rcarriga/nvim-notify"

  -- [G]old
  -- use "tpope/vim-fugitive"
  use {
    "TimUntersberger/neogit",
    requires = {
      "sindrets/diffview.nvim",
    },
  }

  use {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end
  }

  -- Which key
  use "folke/which-key.nvim"

  -- Toggle terminal
  use "akinsho/toggleterm.nvim"

  -- cursor word
  use {
    "yamatsum/nvim-cursorline",
    config = function()
      require("nvim-cursorline").setup({
        cursorline = {
          enable = true,
          timeout = 1000,
          number = false,
        },
        cursorword = {
          enable = true,
          min_length = 3,
          hl = { underline = true },
        }
      })
    end
  }

  use "lukas-reineke/indent-blankline.nvim"

  use "ThePrimeagen/harpoon"

  use "sago35/tinygo.vim"
end)
