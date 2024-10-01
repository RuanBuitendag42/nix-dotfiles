return {
	"windwp/nvim-autopairs",
	event = { "InsertEnter" },
	dependencies = {
		"hrsh7th/nvim-cmp",
	},
	config = function()
		require("nvim-autopairs").setup({
			-- Additional configuration options can go here
			enable_check_bracket_line = true, -- Check bracket in the same line
			ignored_next_char = "[%w%.]", -- Ignore alphanumeric and "." character
			enable_afterquote = true, -- Enable after quote
		})

		-- import nvim-autopairs completion functionality
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")

		-- import nvim-cmp plugin (completions plugin)
		local cmp = require("cmp")

		-- make autopairs and completion work together
		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
	end,
}
