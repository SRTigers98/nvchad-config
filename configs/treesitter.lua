local M = {}

M.opts = {
  ensure_installed = {
    -- defaults
    "vim",
    "lua",
    -- text
    "markdown",
    "json",
    "json5",
    "xml",
    "yaml",
    "toml",
    -- tex
    "bibtex",
    "latex",
    -- programming
    "go",
    "zig",
    -- tools
    "gomod",
    "gosum",
    -- scripting
    "bash",
    -- vcs
    "gitignore",
  },
}

return M
