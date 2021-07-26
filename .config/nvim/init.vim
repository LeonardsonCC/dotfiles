" PLUGINS
call plug#begin('~/.config/nvim/plugged')

" Autocomplete - https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'ncm2/float-preview.nvim'
Plug 'simrat39/symbols-outline.nvim'

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

" Explorer
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kevinhwang91/rnvimr'

" Colorschemes
Plug 'chriskempson/base16-vim'
Plug 'shaunsingh/moonlight.nvim'
Plug 'joshdick/onedark.vim'

call plug#end()

" LUA REQUIRE
lua require("lsp")
lua require("telescope_config")
lua require("galaxyline_config")
lua require("todo_comments_config")
