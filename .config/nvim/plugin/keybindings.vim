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
nnoremap <Leader>lh :lua vim.lsp.buf.hover()<CR>
nnoremap <Leader>lf :lua vim.lsp.buf.formatting()<CR>
vnoremap <Leader>lf :lua vim.lsp.buf.range_formatting()<CR>
nnoremap <Leader>l] :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <Leader>l[ :lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <Leader>lgd :lua vim.lsp.buf.definition()<CR>
nnoremap <Leader>lgD :lua vim.lsp.buf.declaration()<CR>
nnoremap <Leader>lgr :lua vim.lsp.buf.references()<CR>
nnoremap <Leader>ff :lua vim.lsp.buf.formatting()<CR>

" Undotree
nnoremap <Leader>ut :UndotreeToggle<CR>

" NvimTree
nnoremap <Leader>fm :NvimTreeToggle<CR>
nnoremap <Leader>fc :NvimTreeFindFile<CR>
nnoremap <Leader>fr: NvimTreeRefresh<CR>

" To-do Comments
nnoremap <Leader>Tt :TodoTrouble<CR>

" Telescope - TODO Add Telescope remaps to what they are related
nnoremap <Leader>ts :lua require('telescope.builtin').live_grep()<CR>
nnoremap <Leader>tf :lua require('telescope.builtin').find_files()<CR>
nnoremap <Leader>tb :lua require('telescope.builtin').buffers()<CR>
nnoremap <Leader>tc :lua require('telescope.builtin').colorscheme()<CR>
nnoremap <Leader>to :lua require('telescope.builtin').oldfiles()<CR>
nnoremap <Leader>tlr :lua require('telescope.builtin').lsp_references()<CR>
nnoremap <Leader>tld :lua require('telescope.builtin').lsp_definitions()<CR>
nnoremap <Leader>tle :lua require('telescope.builtin').lsp_document_diagnostics()<CR>
nnoremap <Leader>tlc :lua require('telescope.builtin').lsp_code_actions()<CR>
nnoremap <Leader>tgb :lua require('telescope.builtin').git_branches()<CR>
nnoremap <Leader>tgc :lua require('telescope.builtin').git_commits()<CR>
nnoremap <Leader>tt :TodoTelescope<CR>

nnoremap <Leader><Leader> :lua require('telescope.builtin').find_files()<CR>
nnoremap <Leader>f<Leader> :lua require('telescope.builtin').live_grep()<CR>


" Better Indenting
vnoremap < <gv
vnoremap > >gv

" FuGITive
nnoremap <Leader>gs :Git<CR>

" Projects - Magento
nnoremap <Leader>pmc :!bin/magento setup:upgrade && bin/magento cache:clean<CR>
nnoremap <Leader>pmu :!bin/magento setup:upgrade<CR>
nnoremap <Leader>pms :!bin/magento setup:static-content:deploy en_US pt_BR -f<CR>
nnoremap <Leader>pmd :!bin/magento setup:di:compile<CR>
nnoremap <Leader>pmc :!bin/magento cache:clean<CR>
nnoremap <Leader>pmr :!bin/magento indexer:reindex<CR>
nnoremap <Leader>pmg :!bin/magento setup:upgrade && bin/magento setup:di:compile<CR>
