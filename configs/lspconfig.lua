local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "lua_ls", "gopls", "texlab", "yamlls" }

local yaml_settings = {
  yaml = {
    schemas = {
      --kubernetes = "*.yaml",
      ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
      ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
      ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
      ["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
      ["http://json.schemastore.org/kustomization"] = "kustomization.{yml,yaml}",
      ["http://json.schemastore.org/ansible-playbook"] = "*play*.{yml,yaml}",
      ["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
      ["https://json.schemastore.org/dependabot-v2"] = ".github/dependabot.{yml,yaml}",
      ["https://json.schemastore.org/gitlab-ci"] = "*gitlab-ci*.{yml,yaml}",
    },
  },
}

for _, lsp in ipairs(servers) do
  local settings = {}

  if lsp == "yamlls" then
    settings = yaml_settings
  end

  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = settings,
  }
end
