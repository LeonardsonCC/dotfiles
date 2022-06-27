require('leo.plugins')
require('leo.sets')
require('leo.autocmds')
require('leo.mappings')
require('leo.statusline')
require('leo.lsp.installer')
require('leo.lsp')
require('leo.telescope')
require('leo.cmp')
require('leo.gitsigns')
require('leo.indent')
require('leo.which-key')

local theme = require('onedark')
theme.setup({
    style = 'dark'
})
theme.load()

require("fidget").setup({})
