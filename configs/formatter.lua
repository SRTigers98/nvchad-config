local util = require "formatter.util"

require("formatter").setup {
  logging = true,
  log_level = vim.log.levels.WARN,
  filetype = {
    go = {
      require("formatter.filetypes.go").gofmt,
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
      function()
        local file_path = util.escape_path(util.get_current_buffer_file_path())

        return {
          exe = "podman",
          args = {
            "run",
            "--rm",
            "-v",
            file_path .. ":/tmp.tex",
            "ghcr.io/cmhughes/latexindent.pl",
            "-s",
            "-w",
            "tmp.tex",
          },
          no_append = true,
        }
      end,
    },
    yaml = {
      require("formatter.filetypes.yaml").prettier,
    },
    zig = {
      require("formatter.filetypes.zig").zigfmt,
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace,
    },
  },
}

vim.cmd [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
  autocmd User FormatterPost e
augroup END
]]
