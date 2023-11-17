local M = {}

M.opts = {
  ensure_installed = {
    -- Lua
    "stylua",
    "luacheck",
    -- Shell
    "shfmt",
    "shellcheck",
    -- TeX
    "texlab",
    "latexindent",
    -- YAML
    "yaml-language-server",
    "yamllint",
    -- Go
    "gopls",
    -- Zig
    "zls",
    -- JavaScript & TypeScript
    "typescript-language-server",
    "eslint-lsp",
    -- Prettier
    "prettier",
  },
}

return M
