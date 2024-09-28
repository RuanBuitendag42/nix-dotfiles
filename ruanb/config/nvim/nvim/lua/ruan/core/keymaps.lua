-- Keymap helper function
local function map(mode, key, action, opts)
  local options = { noremap = true, silent = true, desc = opts.desc or "" }
  vim.api.nvim_set_keymap(mode, key, action, options)
end

-- Key mappings

-- Exit insert mode with 'jk'
map("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- Clear search highlighting
map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlighting" })

-- Window navigation
map("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

