local util = require "formatter.util"

require("formatter").setup {
  logging = true,
  log_level = vim.log.levels.WARN,
  filetype = {
    go = {
      require("formatter.filetypes.go").gofmt,
      require("formatter.filetypes.go").goimports,
    },
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    markdown = {
      require("formatter.filetypes.markdown").prettier,
    },
    sh = {
      require("formatter.filetypes.sh").shfmt,
    },
    tex = {
      require("formatter.filetypes.latex").latexindent,
    },
    yaml = {
      require("formatter.filetypes.yaml").prettier,
    },
    zig = {
      require("formatter.filetypes.zig").zigfmt,
    },
    javascript = {
      require("formatter.filetypes.javascript").biome,
    },
    typescript = {
      require("formatter.filetypes.typescript").biome,
    },
    json = {
      require("formatter.filetypes.json").biome,
    },
    elixir = {
      require("formatter.filetypes.elixir").mixformat,
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace,
    },
  },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWriteLock",
})
