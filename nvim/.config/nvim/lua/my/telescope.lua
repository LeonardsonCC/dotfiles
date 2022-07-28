local telescope = require 'telescope'
local previewers = require 'telescope.previewers'

telescope.setup {
  defaults = {
    prompt_prefix = ' >',
    color_devicons = true,

    file_ignore_patterns = { 'node_modules', '.git' },

    file_previewer = previewers.vim_buffer_cat.new,
    grep_previewer = previewers.vim_buffer_vimgrep.new,
    qflist_previewer = previewers.vim_buffer_qflist.new,

    mappings = {},
  },
  pickers = {
    find_files = {
      hidden = true,
    },
  },
  extensions = {},
}

local M = {}

M.search_dotfiles = function()
  require('telescope.builtin').find_files {
    prompt_title = '< VimRC >',
    cwd = vim.env.HOME .. '/dotfiles/',
    hidden = true,
  }
end

return M
