-- Keybindings
vim.api.nvim_set_keymap("n", "K", ":lua vim.lsp.buf.hover()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>ff", ":lua vim.lsp.buf.formatting()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>fg", ":lua require(\"go.format\").goimport()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "g]", ":lua vim.lsp.diagnostic.goto_next()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "g[", ":lua vim.lsp.diagnostic.goto_prev()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "gr", ":lua vim.lsp.buf.references()<CR>", { noremap = true })
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
  },
  on_attach = function(client)
    on_attach(client)
    if client.resolved_capabilities.document_formatting then
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
  settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		},
	},
}
lsp.terraformls.setup{
  cmd = { "/home/leonardson/.local/share/nvim/lsp_servers/terraform/terraform-ls/terraform-ls", "serve" },
  on_attach = function(client)
    vim.cmd("autocmd BufWritePre *.tf lua vim.lsp.buf.formatting_sync()")
  end,
}

vim.api.nvim_command("let g:neoformat_enabled_javascript = ['prettier']")
