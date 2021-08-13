-- Escape
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true })
vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = true })

-- Source current file
vim.api.nvim_set_keymap("n", "<Leader><Enter>", ":source $MYVIMRC<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>c<Enter>", ":source %<CR>", { noremap = true })

-- Clipboard 
vim.api.nvim_set_keymap("v", "<Leader>P", '"_dP', { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>y", '"+y', { noremap = true })
vim.api.nvim_set_keymap("v", "<Leader>y", '"+y', { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>Y", 'gg"+yG', { noremap = true })

-- FuGITive
vim.api.nvim_set_keymap("n", "<Leader>gs", ":Git<CR>", { noremap = true })

