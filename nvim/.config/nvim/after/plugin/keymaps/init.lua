local nnoremap = require('my.keymap').nnoremap
local inoremap = require('my.keymap').inoremap
local wk = require('which-key')

wk.setup()

-- Escape keys
inoremap('jk', '<Esc>')
inoremap('kj', '<Esc>')

-- Normal mode mappings
local opts = {
  mode = "n",
  prefix = "<leader>",
  buffer = nil,
  silent = true,
  noremap = true,
  nowait = false
}
local gs = require('gitsigns')
local lsp_buf = vim.lsp.buf
wk.register({
  -- Git
  g = {
    name = "Git",
    s = { '<CMD>Gitsigns stage_hunk<CR>', 'Stage' },
    r = { '<CMD>Gitsigns reset_hunk<CR>', 'Reset' },
    u = { gs.undo_stage_hunk, 'Undo Stage' },
    p = { gs.preview_hunk, 'Preview' },
    l = { gs.toggle_current_line_blame, 'Line Blame' },
    t = { gs.diffthis, 'Open Diff' },
    a = 'Fetch All',
    g = 'Neogit',
  },
  p = {
    name = "Filetree",
    v = { '<Cmd>NvimTreeFindFileToggle<CR>', 'Open FileTree' },
  },
  s = {
    name = "Source",
    c = { "<Cmd>so %<CR>", "Current file" },
  },
  u = { '<Cmd>UndotreeToggle<CR>', 'UndoTree' },
  l = {
    name = "LSP",
    w = { lsp_buf.workspace_symbol, 'Workspace Symbol' },
    w = { lsp_buf.workspace_symbol, 'Workspace Symbol' },
  }

      -- nnoremap('gd', function()
      --   vim.lsp.buf.definition()
      -- end)
      -- nnoremap('K', function()
      --   vim.lsp.buf.hover()
      -- end)
      -- nnoremap('<Leader>lw', function()
      --   vim.lsp.buf.workspace_symbol()
      -- end)
      -- nnoremap('<Leader>ld', function()
      --   vim.diagnostic.open_float()
      -- end)
      -- nnoremap('[d', function()
      --   vim.diagnostic.goto_next()
      -- end)
      -- nnoremap(']d', function()
      --   vim.diagnostic.goto_prev()
      -- end)
      -- nnoremap('<Leader>la', function()
      --   vim.lsp.buf.code_action()
      -- end)
      -- nnoremap('<Leader>lr', function()
      --   vim.lsp.buf.references()
      -- end)
      -- nnoremap('<Leader>lR', function()
      --   vim.lsp.buf.rename()
      -- end)
      -- nnoremap('<Leader>lf', function()
      --   vim.lsp.buf.format()
      -- end)
      -- inoremap('<C-h>', function()
      --   vim.lsp.buf.signature_help()
      -- end)

}, opts)

-- Term
nnoremap('<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

-- Git

