local nnoremap = require('my.keymap').nnoremap

local builtin = require 'telescope.builtin'
local my_telescope = require 'my.telescope'

nnoremap('<Leader>ff', builtin.find_files)
nnoremap('<Leader>fg', builtin.live_grep)
nnoremap('<Leader>fb', builtin.buffers)
nnoremap('<Leader>fh', builtin.help_tags)

nnoremap('<Leader>fdf', my_telescope.search_dotfiles)
