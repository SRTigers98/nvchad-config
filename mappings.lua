local M = {}

-- Spell Checking
M.spell = {
  n = {
    ["<leader>sd"] = { ":set spell spelllang=de_de<CR>", "German Spell Check" },
    ["<leader>se"] = { ":set spell spelllang=en_us<CR>", "English Spell Check" },
    ["<leader>sx"] = { ":set nospell<CR>", "Disable Spell Check" },
  },
}

-- YAML Companion
M.yaml = {
  n = {
    ["<leader>ys"] = { ":Telescope yaml_schema<CR>", "Select YAML Schema" },
  },
}

-- Git
M.git = {
  n = {
    ["<leader>gr"] = { ":e<CR>:Gitsigns refresh<CR>:GitBlameToggle<CR>:GitBlameToggle<CR>", "Refresh Git" },
  },
}

return M
