local M = {}

-- Spell Checking
M.spell = {
  n = {
    ["<leader>sd"] = { "<cmd>set spell spelllang=de_de<CR>", "German Spell Check" },
    ["<leader>se"] = { "<cmd>set spell spelllang=en_us<CR>", "English Spell Check" },
    ["<leader>sx"] = { "<cmd>set nospell<CR>", "Disable Spell Check" },
  },
}

-- YAML Companion
M.yaml = {
  n = {
    ["<leader>ys"] = { "<cmd>Telescope yaml_schema<CR>", "Select YAML Schema" },
  },
}

-- Git
M.git = {
  n = {
    ["<leader>gs"] = { "<cmd>AdvancedGitSearch<CR>", "Git Advanced Search" },
  },
}

-- Gopher
M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags",
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags",
    },
  },
}

-- Glow
M.glow = {
  plugin = true,
  n = {
    ["<leader>gl"] = { "<cmd>Glow<CR>", "Markdown Preview" },
  },
}

return M
