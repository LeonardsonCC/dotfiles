<<<<<<< HEAD
local ok, err = pcall(require, 'cosmic')

if not ok then
  error(string.format('Error loading core...\n\n%s', err))
end
=======
require("leo.sets")
require("leo.plugins")
require("leo.keybindings")
require("leo.lsp")
require("leo.telescopeson")
require("leo.galaxyline")
require("leo.compe")
require("leo.dashboard")
require("leo.nvim-tree")

-- need to improve this
require("leo.projects")

--require('material.functions').change_style("deep ocean")

vim.api.nvim_command("colorscheme tokyonight")
>>>>>>> bb3ffbbf587210c745c30eee392014fa8a9c8fc0
