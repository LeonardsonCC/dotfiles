-- Keybindings
vim.api.nvim_set_keymap("n", "<Leader>fm", ":NvimTreeToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>fc", ":NvimTreeFindFile<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>fr", ":NvimTreeRefresh<CR>", { noremap = true })

vim.api.nvim_command("let g:nvim_tree_side = 'right'")
