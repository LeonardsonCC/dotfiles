-- Navigate buffers
vim.api.nvim_set_keymap("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "}", "<cmd>BufferLineMoveNext<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "{", "<cmd>BufferLineMovePrev<cr>", { noremap = true })

require("bufferline").setup {
  options = {
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = true,
    offsets = {{filetype = "NvimTree", text = "File Explorer"}},
  }
}
