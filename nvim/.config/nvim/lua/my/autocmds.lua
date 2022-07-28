local augroup = vim.api.nvim_create_augroup
OnSave = augroup('OnSave', {})

local autocmd = vim.api.nvim_create_autocmd

local yankGrp = augroup('YankHighlight', { clear = true })
autocmd('TextYankPost', {
  command = 'silent! lua vim.highlight.on_yank()',
  group = yankGrp,
})

autocmd({ 'BufWritePre' }, {
  group = OnSave,
  pattern = '*',
  command = '%s/\\s\\+$//e',
})

autocmd({ 'BufWritePre' }, {
  group = OnSave,
  pattern = { '*.lua', '*.go', '*.ts', '*.tsx', '*.js', '*.jsx' },
  callback = function()
    vim.lsp.buf.format()
  end,
})
