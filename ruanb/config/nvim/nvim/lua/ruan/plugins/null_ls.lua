return {
	"jose-elias-alvarez/null-ls.nvim",
	requires = { "nvim-lua/plenary.nvim" }, -- Required dependency
	config = function()
		local null_ls = require("null-ls")
		local conform = require("conform")

		-- Define available sources
		null_ls.setup({
			sources = {
				-- Use conform.nvim for formatting
				null_ls.builtins.formatting.conform,
				-- Example: Use eslint for JavaScript/TypeScript
				null_ls.builtins.diagnostics.eslint,
				-- Example: Use flake8 for Python linting
				null_ls.builtins.diagnostics.flake8,
				-- Example: Use luacheck for Lua linting
				null_ls.builtins.diagnostics.luacheck,
				-- Add Nix formatting
				null_ls.builtins.formatting.nixpkgs_fmt, -- Add Nix formatting
				-- Add more sources as needed
			},
			on_attach = function(client, bufnr)
				-- Optional: Setup key mappings for formatting and diagnostics
				if client.resolved_capabilities.document_formatting then
					vim.cmd("autocmd BufWritePre <buffer> lua require('conform').format()")
				end
			end,
		})
	end,
}
