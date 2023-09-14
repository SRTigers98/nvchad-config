local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
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
        -- programming
        -- scripting
        "bash",
        -- vcs
        "gitignore",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "mhartington/formatter.nvim",
        config = function()
          require "custom.configs.formatter"
        end,
      },
      {
        "mfussenegger/nvim-lint",
        config = function()
          require "custom.configs.lint"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
}

return plugins
