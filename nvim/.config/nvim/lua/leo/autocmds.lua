local autocmd = vim.api.nvim_create_autocmd

autocmd({ "BufWritePre" }, {
  pattern = "*",
  command = "%s/\\s\\+$//e",
})

autocmd({ "BufWritePre" }, {
  pattern = { "*.go" },
  callback = function ()
    OrgImports()
  end,
})
