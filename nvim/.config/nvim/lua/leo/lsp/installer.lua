require("nvim-lsp-installer").setup({
    ensure_installed = { "gopls", "sumneko_lua", "tsserver", "eslint" },
    automatic_installation = true,
})
