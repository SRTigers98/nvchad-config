local M = {}

M.opts = {
  ensure_installed = {
    -- Lua
    "lua-language-server",
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
    -- JSON
    "json-lsp",
    -- Go
    "gopls",
    -- Zig
    "zls",
    -- JavaScript & TypeScript
    "typescript-language-server",
    "biome",
    -- Web
    "html-lsp",
    "css-lsp",
    "htmx-lsp",
    -- Formatter
    "prettier",
    -- Elixir
    "elixir-ls",
    -- Make
    "autotools-language-server",
    -- Kubernetes
    "helm-ls",
  },
}

return M
