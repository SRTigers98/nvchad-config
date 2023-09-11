local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",
        -- text
        "markdown"
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mhartington/formatter.nvim",
      config = function ()
        require("custom.configs.formatter")
      end
    },
    config = function ()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end
  },
}

return plugins
