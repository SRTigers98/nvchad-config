local conform = require "conform"

local function biome_or_prettier()
  local f = io.open(".prettierrc", "r")
  local is_prettier = f ~= nil and io.close(f)

  if is_prettier then
    return { "prettier" }
  else
    return { "biome" }
  end
end

local formatters_by_ft = {
  -- programming languages
  go = { "gofmt", "goimports" },
  lua = { "stylua" },
  sh = { "shfmt" },
  tex = { "latexindent" },
  zig = { "zigfmt" },
  elixir = { "mix" },
  rust = { "rustfmt" },
  -- web
  html = { "prettier" },
  css = biome_or_prettier,
  javascript = biome_or_prettier,
  javascriptreact = biome_or_prettier,
  typescript = biome_or_prettier,
  typescriptreact = biome_or_prettier,
  svelte = { "prettier" },
  vue = { "prettier" },
  -- text and config
  markdown = { "prettier" },
  json = biome_or_prettier,
  jsonc = biome_or_prettier,
  toml = { "taplo" },
  yaml = { "prettier" },
  -- other
  ["*"] = { "trim_whitespace" },
}

local format_on_save = {
  timeout_ms = 500,
  lsp_format = "fallback",
}

conform.setup {
  formatters_by_ft = formatters_by_ft,
  format_on_save = format_on_save,
}
