local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = {
  "biome",
  "lua_ls",
  "gopls",
  "texlab",
  "yamlls",
  "zls",
  "jsonls",
  "html",
  "cssls",
  "htmx",
}

-- Generic
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- TypeScript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true,
    },
  },
}

-- Elixir
lspconfig.elixirls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "/home/beeder/.local/share/nvim/mason/packages/elixir-ls/language_server.sh" },
}
