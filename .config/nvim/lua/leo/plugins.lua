vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  -- Some pendencies
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"

  -- Autoclose everything
  use "townk/vim-autoclose"

  -- Autocomplete LSP
  use "neovim/nvim-lspconfig"
  use "nvim-lua/completion-nvim"
  use "ncm2/float-preview.nvim"
  use "simrat39/symbols-outline.nvim"
  use { "prettier/vim-prettier", run = "yarn install", branch = "master" }

  -- Treesitter
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-fzy-native.nvim"

  -- Git
  use "tpope/vim-fugitive"
  use "lewis6991/gitsigns.nvim"

  -- Easily comment
  use "scrooloose/nerdcommenter"

  -- UndoTree
  use "mbbill/undotree"

  -- Line
  use { "glepnir/galaxyline.nvim", branch = "main" }

  -- Shade not focused pane
  --use "sunjon/shade.nvim"

  -- Vimux
  use "preservim/vimux"

  -- Explorer files
  use "kyazdani42/nvim-tree.lua"
  use "kevinhwang91/rnvimr"

  -- Colors and design
  use "norcalli/nvim-colorizer.lua"
  use "kyazdani42/nvim-web-devicons"
  use "gruvbox-community/gruvbox"
  use { "kaicataldo/material.vim", branch = "main" }
end)

