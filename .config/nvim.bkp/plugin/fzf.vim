let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

nmap <C-p> :GFiles<CR>
nmap <Leader>ps :Rg<CR>
nmap <Leader>gfd :GFiles?<CR>
nmap <Leader>b :Buffers<CR>

