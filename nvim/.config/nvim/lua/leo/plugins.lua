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

  -- Utils
  use {
    "folke/trouble.nvim",
  }

  -- Completion
  use {
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-nvim-lsp-signature-help",

    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip"
  }

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


  -- Style

  use { "alvarosevilla95/luatab.nvim", requires="kyazdani42/nvim-web-devicons" }

  use "glepnir/dashboard-nvim"

  use {
    "nvim-telescope/telescope.nvim",
    requires = "nvim-lua/plenary.nvim"
  }

  use {
    "nvim-lualine/lualine.nvim",
    requires = {"kyazdani42/nvim-web-devicons", opt = true}
  }

  use {
    "lewis6991/gitsigns.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  }

  use {
    "kyazdani42/nvim-tree.lua",
    requires = {
      "kyazdani42/nvim-web-devicons", -- optional, for file icon
    },
    config = function() require"nvim-tree".setup {} end
  }

  use "luisiacc/gruvbox-baby"
  use "rebelot/kanagawa.nvim"
  use {
    "marko-cerovac/material.nvim",
    config = function()
      require('material').setup({
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


  -- [G]old
  use "tpope/vim-fugitive"

  -- Copilot because I"m useless
  -- use "github/copilot.vim"

  use {
    "akinsho/bufferline.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  }

  use {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end
  }

  -- Which key
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {}
    end
  }

  -- Delete buffers
  use "moll/vim-bbye"

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
end)
