lua << EOF
local wk = require("which-key")
wk.setup {
  {
    plugins = {
      marks = true, -- shows a list of your marks on ' and `
      registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
      presets = {
        operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
        motions = true, -- adds help for motions
        text_objects = true, -- help for text objects triggered after entering an operator
        windows = true, -- default bindings on <c-w>
        nav = true, -- misc bindings to work with windows
        z = true, -- bindings for folds, spelling and others prefixed with z
        g = true, -- bindings for prefixed with g
      },
    },
    operators = { gc = "Comments" },
    icons = {
      breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
      separator = "➜", -- symbol used between a key and it's label
      group = "+", -- symbol prepended to a group
    },
    window = {
      border = "single", -- none, single, double, shadow
      position = "bottom", -- bottom, top
      margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
      padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    },
    layout = {
      height = { min = 4, max = 25 }, -- min and max height of the columns
      width = { min = 20, max = 50 }, -- min and max width of the columns
      spacing = 3, -- spacing between columns
    },
    ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
    hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
    show_help = true, -- show help message on the command line when the popup is visible
    triggers = "auto", -- automatically setup triggers
  }
}

local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<Leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false -- use `nowait` when creating keymaps
}

local mappings = {
  ["<CR>"] = "Source .vimrc file",
  ["t"] = "Telescope",
  ["u"] = "UndoTree",
  ["c"] = "Comments",
  ["f"] = {
      name = "File Manager",
      m = "Open",
      c = "Focus current file",
    },
  ["l"] = {
      name = "LSP",
      ["["] = "Previous diagnostics",
      ["]"] = "Next diagnostics",
      ["f"] = "Format file",
      ["g"] = {
          name = "Go to...",
          ["d"] = "definition",
          ["D"] = "declaration",
          ["r"] = "references",
        }
    },
  ["y"] = "Yank to Clipboard",
  ["Y"] = "Another yank to Clipboard",
}

wk.register(mappings, opts)
EOF
