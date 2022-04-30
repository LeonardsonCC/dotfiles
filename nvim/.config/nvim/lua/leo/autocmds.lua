local cmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

vim.cmd[[ autocmd BufWritePre * %s/\s\+$//e ]]
