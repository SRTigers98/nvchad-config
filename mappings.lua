local M = {}

-- Spell Checking
M.spell = {
  n = {
    ["<leader>sd"] = { ":setlocal spell spelllang=de_de<CR>", "German Spell Check" },
    ["<leader>se"] = { ":setlocal spell spelllang=en_us<CR>", "English Spell Check" },
  },
}

return M
