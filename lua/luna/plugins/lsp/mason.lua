local lsp_servers = {
  -- defaults
  "lua_ls",
  -- text
  "yamlls",
  "jsonls",
  "taplo",
  -- typesetting
  "texlab",
  "typst_lsp",
  -- programming
  "gopls",
  "zls",
  "ts_ls",
  "elixirls",
  "rust_analyzer",
  -- web
  "html",
  "htmx",
  "cssls",
  "svelte",
  -- tools
  "autotools_ls",
  "dockerls",
  "docker_compose_language_service",
  "biome",
  -- scripting
  "bashls",
}

return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- import mason
    local mason = require "mason"
    -- import mason-lspconfig
    local mason_lspconfig = require "mason-lspconfig"

    -- enable mason and configure icons
    mason.setup {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    }

    mason_lspconfig.setup {
      -- list of servers for mason to install
      ensure_installed = lsp_servers,
    }
  end,
}
