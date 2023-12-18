local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = {
  "biome",
  "lua_ls",
  "gopls",
  "texlab",
  "zls",
  "html",
  "cssls",
  "htmx",
  "autotools_ls",
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
  cmd = { vim.fn.expand "$HOME/.local/share/nvim/mason/packages/elixir-ls/language_server.sh" },
}

-- Helm
lspconfig.helm_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "helm", "helm.yaml" },
}

-- YAML
local yaml_config = require "custom.configs.yaml"
lspconfig.yamlls.setup(yaml_config)

-- JSON
lspconfig.jsonls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    json = {
      schemas = require("schemastore").json.schemas(),
      validate = { enable = true },
    },
  },
}
