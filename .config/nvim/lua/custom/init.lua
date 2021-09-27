local hooks = require "core.hooks"

hooks.add("install_plugins", function(use)
  use {
    "tpope/vim-fugitive"
  }
  use {
    "kabouzeid/nvim-lspinstall",
    config = function()
      require'lspinstall'.setup() -- important

      local servers = require'lspinstall'.installed_servers()
      for _, server in pairs(servers) do
        require'lspconfig'[server].setup{}
      end
    end
  }
end)

hooks.add("setup_mappings", function(map)
  map("n", "<Leader>gs", ":Git<CR>")
end)
