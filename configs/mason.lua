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
    "biome",
    -- Prettier
    "prettier",
  },
}

return M
