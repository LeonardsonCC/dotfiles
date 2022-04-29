-- Keybindings
vim.api.nvim_set_keymap("n", "K", ":lua vim.lsp.buf.hover()<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<Leader>ff", ":lua vim.lsp.buf.formatting()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>fg", ":lua require(\"go.format\").goimport()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "g]", ":lua vim.lsp.diagnostic.goto_next()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "g[", ":lua vim.lsp.diagnostic.goto_prev()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "gr", ":lua vim.lsp.buf.references()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "ga", ":lua vim.lsp.buf.code_action()<CR>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-space>", "compe#complete()", { expr=true, noremap = true, silent = true })

-- Code Bindings
vim.api.nvim_set_keymap("n", "<Leader>ct", ":TroubleToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>cf", ":lua vim.lsp.buf.formatting()<CR>", { noremap = true })

local on_attach = function (client)
  client.resolved_capabilities.document_formatting = false
  client.resolved_capabilities.document_range_formatting = false
end

local null_ls = require('null-ls')
null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.code_actions.eslint,
    null_ls.builtins.formatting.prettier,

    -- Go
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.goimports,
    null_ls.builtins.formatting.golines,
  },
  on_attach = function(client)
    on_attach(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd("autocmd! * <buffer>")
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    end
  end,
})

local lsp = require('lspconfig')
lsp.tsserver.setup{
  on_attach = on_attach
}
lsp.gopls.setup{
  cmd = { "/home/leonardson/go/bin/gopls" },
}
lsp.terraformls.setup{
  cmd = { "/home/leonardson/.local/share/nvim/lsp_servers/terraform/terraform-ls/terraform-ls", "serve" },
  on_attach = function(client)
    vim.cmd("autocmd BufWritePre *.tf lua vim.lsp.buf.formatting_sync()")
  end,
}

-- UTILS
local bufnr = vim.api.nvim_buf_get_number(0)

vim.lsp.handlers['textDocument/codeAction'] = function(_, _, actions)
    require('lsputil.codeAction').code_action_handler(nil, actions, nil, nil, nil)
end

vim.lsp.handlers['textDocument/references'] = function(_, _, result)
    require('lsputil.locations').references_handler(nil, result, { bufnr = bufnr }, nil)
end
