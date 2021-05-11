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
nnoremap <Leader>ut :UndotreeToggle<CR>

" NERDTree
nnoremap <Leader>fm :NERDTreeToggle<CR>
nnoremap <Leader>fc :NERDTreeFind<CR>

" Telescope
nnoremap <Leader>tg :lua require('telescope.builtin').live_grep()<CR>
nnoremap <Leader>tff :lua require('telescope.builtin').find_files()<CR>
nnoremap <Leader>tf :lua require('telescope.builtin').file_browser()<CR>
nnoremap <Leader>tb :lua require('telescope.builtin').buffers()<CR>
nnoremap <Leader>tc :lua require('telescope.builtin').colorscheme()<CR>
nnoremap <Leader>tod :lua require('telescope.builtin').oldfiles()<CR>
nnoremap <Leader>tlr :lua require('telescope.builtin').lsp_references()<CR>
nnoremap <Leader>tld :lua require('telescope.builtin').lsp_definitions()<CR>
nnoremap <Leader>tle :lua require('telescope.builtin').lsp_document_diagnostics()<CR>
nnoremap <Leader>tgb :lua require('telescope.builtin').git_branches()<CR>
nnoremap <Leader>tgc :lua require('telescope.builtin').git_commits()<CR>

" Better Indenting
vnoremap < <gv
vnoremap > >gv

" FuGITive
vnoremap <Leader>gs :Git<CR>
