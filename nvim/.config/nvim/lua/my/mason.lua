local Remap = require 'my.keymap'
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

-- LSP setup
local function config(_config)
  return vim.tbl_deep_extend('force', {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    on_attach = function()
      nnoremap('gd', function()
        vim.lsp.buf.definition()
      end)
      nnoremap('K', function()
        vim.lsp.buf.hover()
      end)
      nnoremap('<Leader>lw', function()
        vim.lsp.buf.workspace_symbol()
      end)
      nnoremap('<Leader>ld', function()
        vim.diagnostic.open_float()
      end)
      nnoremap('[d', function()
        vim.diagnostic.goto_next()
      end)
      nnoremap(']d', function()
        vim.diagnostic.goto_prev()
      end)
      nnoremap('<Leader>la', function()
        vim.lsp.buf.code_action()
      end)
      nnoremap('<Leader>lr', function()
        vim.lsp.buf.references()
      end)
      nnoremap('<Leader>lR', function()
        vim.lsp.buf.rename()
      end)
      nnoremap('<Leader>lf', function()
        vim.lsp.buf.format()
      end)
      inoremap('<C-h>', function()
        vim.lsp.buf.signature_help()
      end)
    end,
  }, _config or {})
end

require('mason').setup()
require("mason-lspconfig").setup({
  ensure_installed = {},
  automatic_installation = true,
})
require("mason-lspconfig").setup_handlers({
  function(server_name)
    require("lspconfig")[server_name].setup(config({}))
  end,
  ["sumneko_lua"] = function()
    require('lspconfig').sumneko_lua.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }
          }
        }
      }
    }
  end,
})
