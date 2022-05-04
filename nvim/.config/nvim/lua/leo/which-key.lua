local wk = require("which-key")

local mappings = {
  ["n"] = {
    ["<leader>"] = {
      ["b"] = {
        name = "Buffer",
      },
      ["l"] = {
        name = "LSP",
      },
      ["f"] = {
        name = "Find",
      },
      ["g"] = {
        name = "Git",
      },
      ["h"] = {
        name = "Harpoon",
      },
      ["t"] = {
        name = "Terminal",
      },
    },
  },
}

local function register (mode, prefix, maps)
  local opts = {
    mode = mode,
    prefix = prefix,
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = false,
  }

  wk.register(maps, opts)
end


for mode, value in pairs(mappings) do
  for prefix, maps in pairs(value) do
    register(mode, prefix, maps)
  end
end

