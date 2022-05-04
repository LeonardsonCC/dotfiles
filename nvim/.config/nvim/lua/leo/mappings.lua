local map = vim.keymap.set

-- Escape
map("i", "jk", "<Esc>", { noremap = true })
map("i", "kj", "<Esc>", { noremap = true })

-- Fix Copilot
vim.cmd('imap <silent><script><expr> <C-j> copilot#Accept("")')
vim.cmd("let g:copilot_no_tab_map = v:true")

-- Best keymap (indentation)
map("v", "<", "<gv", { noremap = true})
map("v", ">", ">gv", { noremap = true})

-------------------------
-- LSP
-------------------------
map("n", "K", ":lua vim.lsp.buf.hover()<CR>", { noremap = true })
map("n", "<Leader>ln", ":lua vim.lsp.diagnostic.goto_next()<CR>", { desc = "TESTING", noremap = true })
map("n", "<Leader>lp", ":lua vim.lsp.diagnostic.goto_prev()<CR>", { noremap = true })
map("n", "<Leader>la", ":CodeActionMenu<CR>", { noremap = true })
map("n", "<Leader>lf", ":lua vim.lsp.buf.formatting()<CR>", { noremap = true })
map("n", "<Leader>lt", ":TroubleToggle<CR>", { noremap = true, silent = true })
map("n", "<leader>ld", vim.diagnostic.open_float, { desc = "Hover diagnostics" })

local telescope_builtin = require("telescope.builtin")
map("n", "<Leader>lD", function()
  telescope_builtin.diagnostics()
end, { desc = "Telescope search diagnostics" })

map("n", "gr", function ()
  telescope_builtin.lsp_definitions()
end, { desc = "Telescope LSP definition" })

map("n", "gr", function ()
  telescope_builtin.lsp_references()
end, { desc = "Telescope LSP references" })

-- Telescope functions
vim.api.nvim_set_keymap("n", "<Leader>ff", ":lua require(\"telescope.builtin\").find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>sp", ":lua require(\"telescope.builtin\").grep_string()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>sf", ":lua require(\"telescope.builtin\").live_grep()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>bb", ":lua require(\"telescope.builtin\").buffers()<CR>", { noremap = true })

-- Completion
map("i", "<C-space>", "compe#complete()", { expr=true, noremap = true, silent = true })

-- Navigate buffers
map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { noremap = true })
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { noremap = true })
map("n", "<C-l>", "<cmd>BufferLineMoveNext<cr>", { noremap = true, silent = true })
map("n", "<C-h>", "<cmd>BufferLineMovePrev<cr>", { noremap = true, silent = true })

-- Buffer delete
map("n", "<leader>c", "<cmd>Bdelete!<CR>", { desc = "Delete buffer" })

-- Comment


-- NvimTree
map("n", "<Leader>e", ":NvimTreeFindFileToggle<CR>", { noremap = true })

-- FuGITive
map("n", "<Leader>gg", ":Git<CR>", { noremap = true })

-- Clipboard
map("v", "<Leader>P", '"_dP', { noremap = true })
map("n", "<Leader>y", '"+y', { noremap = true })
map("v", "<Leader>y", '"+y', { noremap = true })
map("n", "<Leader>Y", 'gg"+yG', { noremap = true })

-- Source current file
map("n", "<Leader><Enter>", ":source $MYVIMRC<CR>", { noremap = true })
map("n", "<Leader>c<Enter>", ":source %<CR>", { noremap = true })

-- FTerm
map("n", "<Leader>tg", function()
  require("leo.toggleterm").lazygit_toggle()
end, { noremap = true })

map("n", "<Leader>tt", function()
  require("leo.toggleterm").top_toggle()
end, { noremap = true })

map("n", "<Leader>t<Leader>", function()
  require("leo.toggleterm").term_toggle()
end, { noremap = true })

-- Exit terminal mode
map("t", "jk", "<C-\\><C-n>", { noremap = true })

-- Harpoon
map("n", "<Leader>ha", ":lua require('harpoon.mark').add_file()<CR>", { desc = "Add mark" })
map("n", "<Leader>hl", ":Telescope harpoon marks<CR>", { desc = "List marks" })
