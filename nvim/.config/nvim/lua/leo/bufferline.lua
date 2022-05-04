require("bufferline").setup {
  options = {
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = true,
    offsets = {{filetype = "NvimTree", text = "File Explorer"}},
    separator_style = "slant",

    -- Mouse
    close_command = function (bufnum)
      require('bufdelete').bufdelete(bufnum, true)
    end
  }
}
