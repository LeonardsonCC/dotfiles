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
Plug 'glepnir/dashboard-nvim'

" Colorschemes
Plug 'chriskempson/base16-vim'

call plug#end()

" LUA REQUIRE
lua require("lsp")
lua require("telescope_config")
