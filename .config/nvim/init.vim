" PLUGINS
call plug#begin('~/.config/nvim/plugged')

" Autocomplete - https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md
Plug 'neovim/nvim-lspconfig'

" Neovim Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Utils
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'townk/vim-autoclose'
Plug 'scrooloose/nerdcommenter'
Plug 'mbbill/undotree'
Plug 'folke/which-key.nvim'

" Colorschemes
Plug 'gruvbox-community/gruvbox'

call plug#end()

" LUA REQUIRE
lua require("lsp")
lua require("telescope_config")

" SETS
set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set signcolumn=yes
set cursorline
set cmdheight=2
set updatetime=50
set shortmess+=c 
set colorcolumn=80
set termguicolors
set t_Co=256
colorscheme gruvbox
