return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- optional, for file icons
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			-- Custom Neo-tree settings
			filesystem = {
				follow_current_file = true, -- Automatically focus the current file
				hijack_netrw_behavior = "open_default", -- Same behavior as Nvim-tree's `netrw hijack`
				use_libuv_file_watcher = true, -- Auto refresh when files change
				filtered_items = {
					visible = true, -- Show dotfiles (change to false to hide)
					hide_dotfiles = false,
				},
			},
			window = {
				width = 30,
				position = "left",
				mappings = {
					["u"] = "navigate_up", -- Similar to Nvim-tree's "dir_up"
				},
			},
			git_status = {
				window = {
					position = "float",
				},
			},
		})

		-- Key mappings for Neo-tree
		local map = vim.api.nvim_set_keymap

		-- Toggle file explorer
		map(
			"n",
			"<leader>ee",
			"<cmd>Neotree toggle<CR>",
			{ noremap = true, silent = true, desc = "Toggle file explorer" }
		)

		-- Reveal file explorer on current file
		map(
			"n",
			"<leader>ef",
			"<cmd>Neotree focus reveal<CR>",
			{ noremap = true, silent = true, desc = "Reveal file explorer on current file" }
		)
	end,
}

