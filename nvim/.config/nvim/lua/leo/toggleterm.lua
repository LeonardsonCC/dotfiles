local M = {}

require('toggleterm').setup()

local Terminal  = require('toggleterm.terminal').Terminal

local function _setupTerm(cmd)
  local config = {
    cmd = cmd,
    hidden = true,
    direction = "float",
    float_opts = {
      border = "rounded",
    },
  }

  return Terminal:new(config)
end

-- LazyGit
local lazygit = _setupTerm("lazygit")
M.lazygit_toggle = function ()
  lazygit:toggle()
end

-- Top
local top = _setupTerm("htop")
M.top_toggle = function ()
  top:toggle()
end

-- Terminal
local term = Terminal:new({ hidden = true })
M.term_toggle = function ()
  term:toggle()
end

return M
