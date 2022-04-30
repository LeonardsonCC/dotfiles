return {
  settings = {
    Lua = {
      diagnostics = {
        globals = {
          "vim",
          "use",
        },
      },
      workspace = {
        library = {
          [vim.fn.expand "$vimruntime/lua"] = true,
          [vim.fn.stdpath "config" .. "/lua"] = true,
        },
      },
    },
  },
}
