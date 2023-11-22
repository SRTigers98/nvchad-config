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
    "csv",
    -- tex
    "bibtex",
    "latex",
    -- programming
    "go",
    "zig",
    "javascript",
    "typescript",
    -- web
    "html",
    "css",
    -- tools
    "gomod",
    "gosum",
    "make",
    "dockerfile",
    -- scripting
    "bash",
    -- vcs
    "gitignore",
  },
}

return M
