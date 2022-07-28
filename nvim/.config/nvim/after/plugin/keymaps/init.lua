local nnoremap = require('my.keymap').nnoremap
local inoremap = require('my.keymap').inoremap

-- Escape keys
inoremap('jk', '<Esc>')
inoremap('kj', '<Esc>')

-- Netrw
nnoremap('<Leader>pv', '<Cmd>Ex<CR>')

-- source files
nnoremap('<Leader>sc', '<Cmd>so %<CR>')
