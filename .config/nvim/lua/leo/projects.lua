-- Magento
vim.api.nvim_set_keymap("n", "<Leader>pmb", ':VimuxRunCommand("bin/magento setup:upgrade && bin/magento cache:clean")<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>pmu", ':VimuxRunCommand("bin/magento setup:upgrade")<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>pms", ':VimuxRunCommand("bin/magento setup:static-content:deploy en_US pt_BR -f")<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>pmd", ':VimuxRunCommand("bin/magento setup:di:compile")<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>pmc", ':VimuxRunCommand("bin/magento cache:clean")<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>pmr", ':VimuxRunCommand("bin/magento indexer:reindex")<CR>', { noremap = true })
