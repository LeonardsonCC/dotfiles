require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    },
  },
  sections = {
    lualine_a = { {
      'mode',
      fmt = function(str)
        return str:sub(1, 1)
      end,
    } },
    lualine_b = { 'filename' },
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {},
}
