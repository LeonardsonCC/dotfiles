local map = vim.keymap.set

-- Escape
map("i", "jk", "<Esc>", { noremap = true, desc = "Escape" })
map("i", "kj", "<Esc>", { noremap = true, desc = "Escape" })

-- Best keymap (indentation)
map("v", "<", "<gv", { noremap = true})
map("v", ">", ">gv", { noremap = true})

-------------------------
-- LSP
-------------------------
map("n", "K", ":lua vim.lsp.buf.hover()<CR>", { noremap = true, desc = "Hover diagnostics" })
map("n", "<Leader>ln", ":lua vim.lsp.diagnostic.goto_next()<CR>", { noremap = true, desc = "Go to next diagnostic" })
map("n", "<Leader>lp", ":lua vim.lsp.diagnostic.goto_prev()<CR>", { noremap = true, desc = "Go to prev diagnostic" })
map("n", "<Leader>la", ":CodeActionMenu<CR>", { noremap = true, desc = "Show code actions" })
map("n", "<Leader>lc", vim.lsp.codelens.run, { noremap = true, desc = "Run code lenses" })
map("n", "<Leader>lf", vim.lsp.buf.formatting, { noremap = true, desc = "Format document" })
map("n", "<leader>ld", vim.diagnostic.open_float, { desc = "Hover diagnostics" })

local telescope_builtin = require("telescope.builtin")
map("n", "<Leader>lD", function()
  telescope_builtin.diagnostics()
end, { desc = "Telescope search diagnostics" })

map("n", "gd", function ()
  telescope_builtin.lsp_definitions()
end, { desc = "Telescope LSP definition" })

map("n", "gr", function ()
  telescope_builtin.lsp_references()
end, { desc = "Telescope LSP references" })

-- Telescope functions
map("n", "<Leader>ff", function ()
  telescope_builtin.find_files()
end, { noremap = true, desc = "Find files" })

map("n", "<Leader>fp", function ()
  telescope_builtin.grep_string()
end, { noremap = true, desc = "Find under cursor text" })

map("n", "<Leader>fg", function()
  telescope_builtin.live_grep()
end, { noremap = true, desc = "Search for text" })

map("n", "<Leader>bb", function ()
  telescope_builtin.buffers()
end, { noremap = true, desc = "List buffers" })

map("n", "<Leader>hf", function ()
  telescope_builtin.help_tags()
end, { noremap = true, desc = "List help menus" })

-- Completion
map("i", "<C-space>", "compe#complete()", { expr=true, noremap = true, silent = true })

-- Navigate buffers
map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { noremap = true, desc = "Next buffer" })
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { noremap = true, desc = "Prev buffer" })
map("n", "<C-l>", "<cmd>BufferLineMoveNext<cr>", { noremap = true, silent = true, desc = "Move buffer to right" })
map("n", "<C-h>", "<cmd>BufferLineMovePrev<cr>", { noremap = true, silent = true, desc = "Move buffer to left" })

-- Buffer delete
map("n", "<leader>c", function ()
  require('bufdelete').bufdelete(0, false)
end, { desc = "Delete buffer" })

-- NvimTree
map("n", "<Leader>e", ":NvimTreeFindFileToggle<CR>", { noremap = true, desc = "Toggle NvimTree" })

-- FuGITive
map("n", "<Leader>gg", ":Git<CR>", { noremap = true, desc = "Open Git" })

-- Clipboard
map("v", "<Leader>P", '"_dP', { noremap = true, desc = "Paste from clipboard" })
map("n", "<Leader>y", '"+y', { noremap = true, desc = "Copy to clipboard" })
map("v", "<Leader>y", '"+y', { noremap = true })
map("n", "<Leader>Y", 'gg"+yG', { noremap = true, desc = "Copy to clipboard" })

-- Source current file
map("n", "<Leader>si", ":source $MYVIMRC<CR>", { noremap = true, desc = "Source init.lua" })
map("n", "<Leader>sc", ":source %<CR>", { noremap = true, desc = "Source current file" })

-- FTerm
map("n", "<Leader>tg", function()
  require("leo.toggleterm").lazygit_toggle()
end, { noremap = true, desc = "Open LazyGit" })

map("n", "<Leader>tt", function()
  require("leo.toggleterm").top_toggle()
end, { noremap = true, desc = "Open Top" })

map("n", "<Leader>t<Leader>", function()
  require("leo.toggleterm").term_toggle()
end, { noremap = true, desc = "Open terminal below" })

-- Exit terminal mode
map("t", "jk", "<C-\\><C-n>", { noremap = true })

-- Harpoon
map("n", "<Leader>ha", ":lua require('harpoon.mark').add_file()<CR>", { desc = "Add mark" })
map("n", "<Leader>hl", ":Telescope harpoon marks<CR>", { desc = "List marks" })
