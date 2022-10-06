local nnoremap = require('my.keymap').nnoremap
local inoremap = require('my.keymap').inoremap

-- Escape keys
inoremap('jk', '<Esc>')
inoremap('kj', '<Esc>')

-- Nvim Tree
nnoremap('<Leader>pv', '<Cmd>NvimTreeFindFileToggle<CR>')

-- source files
nnoremap('<Leader>sc', '<Cmd>so %<CR>')

-- undotree
nnoremap('<Leader>ut', '<Cmd>UndotreeToggle<CR>')

-- Packer
nnoremap('<Leader>ps', '<Cmd>PackerSync<CR>')

-- Term
nnoremap('<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

-- Git
local gs = require('gitsigns')
nnoremap('<Leader>gs', '<CMD>Gitsigns stage_hunk<CR>')
nnoremap('<Leader>gr', '<CMD>Gitsigns reset_hunk<CR>')
nnoremap('<Leader>gu', gs.undo_stage_hunk)
nnoremap('<Leader>gp', gs.preview_hunk)
nnoremap('<Leader>gl', gs.toggle_current_line_blame)
nnoremap('<Leader>gt', gs.diffthis)

