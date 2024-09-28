return {
	"catppuccin/nvim",
	name = "catppuccin",
	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- Choose the Mocha variant
			background = { dark = "mocha" }, -- Set background to mocha for dark mode
			integrations = {
				treesitter = true, -- Integrate with Treesitter
				lsp_trouble = true, -- Integrate with LSP trouble
				gitsigns = true, -- Git integration
				telescope = true, -- Telescope integration
				neotree = true, -- Neo-tree integration
				cmp = true, -- nvim-cmp integration
			},
		})

		-- Set the colorscheme
		vim.cmd.colorscheme("catppuccin")
	end,
}
