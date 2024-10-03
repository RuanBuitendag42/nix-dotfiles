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

map("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
map("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
map("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
map("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
map("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- adjust pane size vertically and horizontally
map("n", "<C-Up>", ":resize -2<CR>", { desc = "Resize pane smaller" })
map("n", "<C-Down>", ":resize +2<CR>", { desc = "Resize pane larger" })
map("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Resize pane smaller vertically" })
map("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Resize pane larger vertically" })
