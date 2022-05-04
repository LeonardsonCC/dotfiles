local wk = require("which-key")

wk.setup({
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 5, max = 50 }, -- min and max width of the columns
    spacing = 10, -- spacing between columns
    align = "left", -- align columns left, center or right
  },
})

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

