local plugins = {
  -- Basic
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require("configs.treesitter").opts,
  },
  {
    "williamboman/mason.nvim",
    opts = require("configs.mason").opts,
  },
  -- Language Support
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    config = function()
      require "configs.formatter"
    end,
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "configs.lint"
    end,
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
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
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
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
    end,
  },
  {
    "b0o/schemastore.nvim",
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end,
  },
  {
    "ellisonleao/glow.nvim",
    config = function()
      require("glow").setup {
        height_ratio = 0.9,
      }
    end,
    cmd = "Glow",
    ft = "markdown",
  },
}

return plugins
