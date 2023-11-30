---@class ChadrcConfig
local M = {}

M.ui = {
  theme = "nord",
  statusline = {
    theme = "minimal",
    separator_style = "round",
  },
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

-- Overwrite disabled inbuilt plugins
M.lazy_nvim = {
  performance = {
    rtp = {
      -- Comment plugins that you want to leave enabled:
      disabled_plugins = {
        "2html_plugin",
        "tohtml",
        "getscript",
        "getscriptPlugin",
        "gzip",
        "logipat",
        -- "netrw",
        -- "netrwPlugin",
        -- "netrwSettings",
        -- "netrwFileHandlers",
        "matchit",
        "tar",
        "tarPlugin",
        "rrhelper",
        "spellfile_plugin",
        "vimball",
        "vimballPlugin",
        "zip",
        "zipPlugin",
        "tutor",
        "rplugin",
        "syntax",
        "synmenu",
        "optwin",
        "compiler",
        "bugreport",
        "ftplugin",
        "editorconfig",
      },
    },
  },
}

return M
