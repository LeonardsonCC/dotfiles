return {
    -- Add plugins, the packer syntax without the "use"
    init = {
        { "github/copilot.vim" },
      -- { "andweeb/presence.nvim" },
      -- {
      --   "ray-x/lsp_signature.nvim",
      --   event = "BufRead",
      --   config = function()
      --     require("lsp_signature").setup()
      --   end,
      -- },
    },
    -- All other entries override the setup() call for default plugins
    treesitter = {
      ensure_installed = { "lua" },
    },
    packer = {
      compile_path = vim.fn.stdpath "config" .. "/lua/packer_compiled.lua",
    },
    telescope = require "user.core.telescope",
    ["neo-tree"] = require "user.core.neo_tree",
}
