return {
	"christoomey/vim-tmux-navigator",
	config = function()
		-- Key mappings for navigating between Tmux and Vim panes
		local keymap = vim.api.nvim_set_keymap
		local opts = { noremap = true, silent = true }

		-- Navigate left
		keymap("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts)
		keymap("n", "<C-j>", ":TmuxNavigateDown<CR>", opts)
		keymap("n", "<C-k>", ":TmuxNavigateUp<CR>", opts)
		keymap("n", "<C-l>", ":TmuxNavigateRight<CR>", opts)
	end,
}
