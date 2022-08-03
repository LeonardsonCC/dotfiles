local nnoremap = require('my.keymap').nnoremap
local inoremap = require('my.keymap').inoremap

-- Escape keys
inoremap('jk', '<Esc>')
inoremap('kj', '<Esc>')

-- Nvim Tree
nnoremap('<Leader>pv', '<Cmd>NvimTreeToggle<CR>')
nnoremap('<Leader>pc', '<Cmd>NvimTreeFocus<CR>')

-- source files
nnoremap('<Leader>sc', '<Cmd>so %<CR>')

-- undotree
nnoremap('<Leader>ut', '<Cmd>UndotreeToggle<CR>')
