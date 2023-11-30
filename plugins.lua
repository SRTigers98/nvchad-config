local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require("custom.configs.treesitter").opts,
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
  {
    "williamboman/mason.nvim",
    opts = require("custom.configs.mason").opts,
  },
  {
    "ray-x/go.nvim",
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ":lua require('go.install').update_all_sync()",
  },
  {
    "ziglang/zig.vim",
  },
  {
    "lervag/vimtex",
    config = function()
      vim.cmd "syntax enable"
    end,
  },
  -- Tooling
  -- Git
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
  },
  {
    "tpope/vim-fugitive",
    event = "VeryLazy",
  },
  {
    "aaronhallaert/advanced-git-search.nvim",
    config = function()
      require("telescope").load_extension "advanced_git_search"
    end,
    event = "VeryLazy",
  },
  -- Other
  {
    "someone-stole-my-name/yaml-companion.nvim",
    requires = {
      { "neovim/nvim-lspconfig" },
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim" },
    },
    config = function()
      require("telescope").load_extension "yaml_schema"
      local cfg = require "custom.configs.yaml"
      require("lspconfig")["yamlls"].setup(cfg)
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end,
  },
}

return plugins
