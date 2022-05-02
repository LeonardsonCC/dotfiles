-- Keybindings
vim.api.nvim_set_keymap("n", "<Leader>ff", ":lua require(\"telescope.builtin\").find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>sf", ":lua require(\"telescope.builtin\").grep_string()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>sp", ":lua require(\"telescope.builtin\").live_grep()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>bb", ":lua require(\"telescope.builtin\").buffers()<CR>", { noremap = true })

local telescope = require("telescope")
local actions = require("telescope.actions")

-- Config
telescope.setup{
  pickers = {
    find_files = {
      hidden = true,
      file_ignore_patterns = {
        ".git",
      }
    }
  },
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      }
    },
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {
      "node_modules/*",
      "plugged/*",
      "undodir/*"
    },
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}
