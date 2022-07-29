local nnoremap = require('my.keymap').nnoremap

nnoremap('<Leader>dc', require('dap').continue)
nnoremap('<Leader>do', require('dap').step_over)
nnoremap('<Leader>di', require('dap').step_into)
nnoremap('<Leader>dO', require('dap').step_out)
nnoremap('<Leader>db', require('dap').toggle_breakpoint)
nnoremap('<Leader>dB', function()
  require('dap').set_breakpoint(vim.fn.input 'Breakpoint condition: ')
end)
nnoremap('<Leader>dr', require('dap').repl.open)

nnoremap('<Leader>du', require('dapui').toggle)
