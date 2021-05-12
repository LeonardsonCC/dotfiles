--
--  LSP - Autocomplete
--

-- PHP
require'lspconfig'.intelephense.setup{on_attach=require'completion'.on_attach}

-- JS/TS
require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}

-- VueJS
require'lspconfig'.vuels.setup{on_attach=require'completion'.on_attach}

-- VIM
require'lspconfig'.vimls.setup{on_attach=require'completion'.on_attach}
