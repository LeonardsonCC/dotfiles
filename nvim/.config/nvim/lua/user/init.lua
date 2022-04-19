local config = {

  -- Set colorscheme
  colorscheme = "default_theme",

  -- Default theme configuration
  default_theme = {
    diagnostics_style = { italic = true },
  },

  -- Disable default plugins
  enabled = {
    bufferline = true,
    neo_tree = true,
    lualine = true,
    gitsigns = true,
    colorizer = true,
    toggle_term = true,
    comment = true,
    symbols_outline = true,
    indent_blankline = true,
    dashboard = true,
    which_key = true,
    neoscroll = true,
    ts_rainbow = true,
    ts_autotag = true,
  },
  -- Disable AstroNvim ui features
  ui = {
    nui_input = true,
    telescope_select = true,
  },

  plugins = require "user.plugins",
  ["which-key"] = require "user.core.which_key",
  cmp = require "user.core.cmp",
  lsp = require "user.core.lsp",
  diagnostics = require "user.core.diagnostics",
  ["null-ls"] = require "user.core.null_ls",
  polish = require "user.core.polish",
}

return config
