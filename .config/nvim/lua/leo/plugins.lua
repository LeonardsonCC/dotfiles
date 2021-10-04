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
  --use "nvim-lua/completion-nvim"
  use "hrsh7th/nvim-compe"
  use "ncm2/float-preview.nvim"
  use "simrat39/symbols-outline.nvim"
  use { "ms-jpq/coq_nvim", branch = "coq" }
  use { "ms-jpq/coq.artifacts", branch = "artifacts" }
  use "sbdchd/neoformat"

  -- Treesitter
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

  -- Telescope
  use "nvim-telescope/telescope.nvim"

  -- Git
  use "tpope/vim-fugitive"
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  -- Easily comment
  use "scrooloose/nerdcommenter"

  -- Line
  use { "glepnir/galaxyline.nvim", branch = "main" }

  -- Vimux
  use "preservim/vimux"

  -- Explorer files
  --use "kyazdani42/nvim-tree.lua"
  --use "kevinhwang91/rnvimr"
  use { 'ms-jpq/chadtree', branch = "chad", run = "python3 -m chadree deps" }

  -- Markdown preview
  use { "iamcco/markdown-preview.nvim", run = "cd app && yarn install" }

  -- Colors and design
  use "kyazdani42/nvim-web-devicons"
  --use { "kaicataldo/material.vim", branch = "main" }
  use "marko-cerovac/material.nvim"
  use {'nxvu699134/vn-night.nvim'}
  --use "rktjmp/lush.nvim"

  use "yamatsum/nvim-cursorline"

  use 'glepnir/dashboard-nvim'

  -- OrgMode
  use {'kristijanhusak/orgmode.nvim', config = function()
        require('orgmode').setup{}
    end
  }

  -- My plugin
  use "~/dev/quick-notes.nvim"

end)
