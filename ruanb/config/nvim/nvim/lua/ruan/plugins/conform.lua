return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters = {
				-- Example formatters you can set up
				lua = { "stylua" }, -- Lua formatting with stylua
				javascript = { "prettier" }, -- JavaScript formatting with prettier
				python = { "black" }, -- Python formatting with black
				nix = { "nixpkgs-fmt" }, -- Nix formatting with nixpkgs-fmt
				-- Add more formatters as needed
			},
			format_on_save = {
				enabled = true, -- Enable formatting on save
				timeout = 1000, -- Timeout for formatting
			},
			-- Additional configurations can go here
		})
	end,
}
