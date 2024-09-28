return {
	"nvim-tree/nvim-tree.lua",
	requires = {
		"nvim-tree/nvim-web-devicons", -- optional, for file icons
	},
	config = function()
		require("nvim-tree").setup({
			-- Your custom Nvim-tree settings
			update_focused_file = {
				enable = true,
				update_cwd = true,
			},
			filters = {
				dotfiles = false, -- Show or hide dotfiles
			},
			git = {
				enable = true,
			},
			view = {
				width = 30,
				side = "left",
				mappings = {
					list = {
						{ key = "u", action = "dir_up" },
					},
				},
			},
		})

		-- Key mappings for Nvim-tree
		local map = vim.api.nvim_set_keymap

		-- Toggle file explorer
		map(
			"n",
			"<leader>ee",
			"<cmd>NvimTreeToggle<CR>",
			{ noremap = true, silent = true, desc = "Toggle file explorer" }
		)

		-- Reveal file explorer on current file
		map(
			"n",
			"<leader>ef",
			"<cmd>NvimTreeFindFile<CR>",
			{ noremap = true, silent = true, desc = "Reveal file explorer on current file" }
		)
	end,
}

