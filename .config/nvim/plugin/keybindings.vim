" KEYMAPS

let mapleader=" "

" Load
nnoremap <Leader><Enter> :so $MYVIMRC<CR>
nnoremap <Leader>c<Enter> :so %<CR>

" Exit Keys
inoremap jk <Esc>
inoremap kj <Esc>

" Clipboard
vnoremap <Leader>p "_dP
nnoremap <Leader>y "+y
vnoremap <Leader>y "+y
nnoremap <Leader>Y gg"+yG

" LSP
nnoremap K :lua vim.lsp.buf.hover()<CR>
nnoremap <Leader>lf :lua vim.lsp.buf.formatting()<CR>
vnoremap <Leader>lf :lua vim.lsp.buf.range_formatting()<CR>
nnoremap <Leader>l] :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <Leader>l[ :lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <Leader>lgd :lua vim.lsp.buf.definition()<CR>
nnoremap <Leader>lgD :lua vim.lsp.buf.declaration()<CR>
nnoremap <Leader>lgr :lua vim.lsp.buf.references()<CR>

" Undotree
nnoremap <Leader>u :UndotreeToggle<CR>

" NERDTree
nnoremap <Leader>fm :NERDTreeToggle<CR>
nnoremap <Leader>fc :NERDTreeFind<CR>

" Telescope
nnoremap <Leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <Leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>

" Better Indenting
vnoremap < <gv
vnoremap > >gv
