local map = vim.keymap.set

-- Fix Copilot
vim.cmd('imap <silent><script><expr> <C-j> copilot#Accept("")')
vim.cmd("let g:copilot_no_tab_map = v:true")

-- Best keymap
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
map("n", "<leader>lD", function()
  require("telescope.builtin").diagnostics()
end, { desc = "Telescope search diagnostics" })
map("n", "<leader>ld", vim.diagnostic.open_float, { desc = "Hover diagnostics" })
map("n", "gd", ":lua vim.lsp.buf.definition()<CR>", { noremap = true })
map("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", { noremap = true })
map("n", "gr", ":lua vim.lsp.buf.references()<CR>", { noremap = true })

-- Completion
map("i", "<C-space>", "compe#complete()", { expr=true, noremap = true, silent = true })

-- Navigate buffers
map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { noremap = true })
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { noremap = true })
map("n", "<C-l>", "<cmd>BufferLineMoveNext<cr>", { noremap = true, silent = true })
map("n", "<C-h>", "<cmd>BufferLineMovePrev<cr>", { noremap = true, silent = true })

-- Buffer delete
map("n", "<leader>c", "<cmd>Bdelete!<CR>", { desc = "Delete buffer" })












-- Escape
map("i", "jk", "<Esc>", { noremap = true })
map("i", "kj", "<Esc>", { noremap = true })

-- Ctrl Backspace to delete word
map("i", "<C-BS>", "<C-\\><C-o>db", { noremap = true })

-- Source current file
map("n", "<Leader><Enter>", ":source $MYVIMRC<CR>", { noremap = true })
map("n", "<Leader>c<Enter>", ":source %<CR>", { noremap = true })

-- Clipboard 
map("v", "<Leader>P", '"_dP', { noremap = true })
map("n", "<Leader>y", '"+y', { noremap = true })
map("v", "<Leader>y", '"+y', { noremap = true })
map("n", "<Leader>Y", 'gg"+yG', { noremap = true })

-- FuGITive
map("n", "<Leader>gg", ":Git<CR>", { noremap = true })

-- Terminal
map("n", "<Leader>t", ":Ttoggle<CR>", { noremap = true })
map("t", "jk", "<C-\\><C-n>", { noremap = true })
map("t", "kj", "<C-\\><C-n>", { noremap = true })
map("t", "<Esc>", "<C-\\><C-n>", { noremap = true })

-- Buffer
map("n", "<Leader>bd", ":bd<CR>", { noremap = true })

-- NvimTree
map("n", "<Leader>e", ":NvimTreeFindFileToggle<CR>", { noremap = true })

-- Symbols Outline
map("n", "<leader>st", ":SymbolsOutline<CR>", {})

-- Telekasten
map("n", "<leader>n", ":Telekasten<CR>", {})

