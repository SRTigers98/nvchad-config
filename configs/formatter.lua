require("formatter").setup {
  logging = true,
  log_level = vim.log.levels.WARN,
  lua = {
    require("formatter.filetypes.lua").stylua
  },
  filetype = {
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}
