return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"bash",
				"lua",
				"python",
				"javascript",
				"html",
				"css",
				"json",
				"markdown",
				"typescript", -- Add languages you want
			},
			highlight = {
				enable = true, -- Enable syntax highlighting
				additional_vim_regex_highlighting = false, -- Disable vim regex highlighting to avoid conflicts
			},
			indent = { enable = true }, -- Enable Treesitter-based indentation
			autotag = { enable = true }, -- Enable auto-closing and auto-renaming of HTML tags
		})
	end,
}
