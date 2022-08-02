require 'my.dap.ui'
require 'my.dap.go'

-- virtual text
require('nvim-dap-virtual-text').setup()

-- auto open dap ui
local dap, dapui = require 'dap', require 'dapui'

dap.listeners.after.event_initialized['dapui_config'] = function()
  dapui.open()
end
dap.listeners.before.event_terminated['dapui_config'] = function()
  dapui.close()
end
dap.listeners.before.event_exited['dapui_config'] = function()
  dapui.close()
end
