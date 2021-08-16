require("leo.sets")
require("leo.plugins")
require("leo.keybindings")
require("leo.lsp")
require("leo.telescopeson")
require("leo.galaxyline")
require("leo.compe")

-- need to improve this
require("leo.projects")

vim.api.nvim_command("set termguicolors")
vim.api.nvim_command("let g:material_terminal_italics = 1")
vim.api.nvim_command("let g:material_theme_style = 'darker'")
vim.api.nvim_command("colorscheme material")
