" PLUGINS
call plug#begin('~/.config/nvim/plugged')

" Autocomplete - https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'ncm2/float-preview.nvim'
Plug 'simrat39/symbols-outline.nvim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'master'
  \ }

" Neovim Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Utils
Plug 'tpope/vim-fugitive'
Plug 'townk/vim-autoclose'
Plug 'scrooloose/nerdcommenter'
Plug 'mbbill/undotree'
Plug 'folke/which-key.nvim'
Plug 'glepnir/dashboard-nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/todo-comments.nvim'
Plug 'sunjon/shade.nvim'
Plug 'preservim/vimux'
Plug 'lewis6991/gitsigns.nvim'
Plug 'folke/trouble.nvim'

" Explorer
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kevinhwang91/rnvimr'

" Colorschemes
Plug 'gruvbox-community/gruvbox'
Plug 'nxvu699134/vn-night.nvim'

call plug#end()

" LUA REQUIRE
lua require("lsp")
lua require("treesitter_config")
lua require("telescope_config")
lua require("galaxyline_config")
lua require("todo_comments_config")
lua require("shade_config")
lua require("gitsigns_config")
lua require("trouble_config")

autocmd BufWritePre *.tsx,*.ts Prettier
