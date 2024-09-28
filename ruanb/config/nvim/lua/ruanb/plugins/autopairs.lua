return {
	"windwp/nvim-autopairs",
	config = function()
		require("nvim-autopairs").setup({
			-- Additional configuration options can go here
			enable_check_bracket_line = true, -- Check bracket in the same line
			ignored_next_char = "[%w%.]", -- Ignore alphanumeric and "." character
			enable_afterquote = true, -- Enable after quote
		})
	end,
}
