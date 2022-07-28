local Remap = require 'my.keymap'
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local cmp = require 'cmp'
local source_mapping = {
  buffer = '[Buffer]',
  nvim_lsp = '[LSP]',
  nvim_lua = '[Lua]',
  path = '[Path]',
  nvim_lsp_signature_help = '[LSP_S]',
  luasnip = '[Snippet]',
  cmdline = '[CMD]',
}

local lspkind = require 'lspkind'

cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-Space'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-e'] = cmp.mapping {
      i = cmp.mapping.abort(),
    },
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
    },
    ['<C-n>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item { behavior = cmp.SelectBehavior.Select }
      else
        fallback()
      end
    end,
    ['<C-p>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item { behavior = cmp.SelectBehavior.Select }
      else
        fallback()
      end
    end,
  },
  window = {
    completion = {
      winhighlight = 'Normal:Pmenu,FloatBorder:Pmenu,Search:None',
      col_offset = 0,
      side_padding = 0,
    },
  },
  formatting = {
    fields = { 'kind', 'abbr', 'menu' },
    format = function(entry, vim_item)
      local kind = lspkind.cmp_format { mode = 'symbol_text', maxwidth = 50 }(entry, vim_item)
      local strings = vim.split(kind.kind, '%s', { trimempty = true })
      kind.kind = ' ' .. strings[1] .. ' '
      kind.menu = '    ' .. source_mapping[entry.source.name] .. ''

      return kind
    end,
  },
  sources = {
    { name = 'nvim_lsp_signature_help' },
    { name = 'nvim_lua' },
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'path' },
    { name = 'buffer', keyword_length = 5 },
  },
  experimental = {
    ghost_text = true,
  },
}

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'cmdline' },
  },
})

cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'nvim_lsp_document_symbol' },
  }, {
    { name = 'buffer' },
  }),
})

-- LSP saga
local saga = require 'lspsaga'
saga.init_lsp_saga()

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

local lsp = require 'lspconfig'

-- typescript/javascript
lsp.tsserver.setup(config())

-- go
lsp.gopls.setup(config {
  cmd = { 'gopls', 'serve' },
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
})

-- lua
lsp.sumneko_lua.setup(config {
  -- cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand '$VIMRUNTIME/lua'] = true,
          [vim.fn.expand '$VIMRUNTIME/lua/vim/lsp'] = true,
        },
      },
    },
  },
})
