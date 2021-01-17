set exrc " Wont open project .nvimrc without this here

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug '9mm/vim-closer'

Plug 'gruvbox-community/gruvbox'

call plug#end()

let loaded_matchparen = 1
let mapleader = " "

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :Sex!<CR>
nnoremap <Leader><CR> :so $MYVIMRC<CR>
nnoremap <Leader>e<CR> :e $MYVIMRC<CR>
nnoremap <Leader>rp :resize 100<CR>

" next greatest remap ever : asbjornHaland
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

inoremap jk <esc>
inoremap <C-c> <esc>

fun! EmptyRegisters()
    let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
    for r in regs
        call setreg(r, [])
    endfor
endfun

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup MY_VIM
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
