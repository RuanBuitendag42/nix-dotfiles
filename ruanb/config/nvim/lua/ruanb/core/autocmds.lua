-- Autocommand to resize the Copilot Chat buffer on VimResized event
-- This should only tager the Copilot Chat buffer and should be relative to it's current size
vim.api.nvim_create_autocmd("VimResized", {
	pattern = "*",
	callback = function()
		if vim.b.copilot_chat then
			vim.cmd("resize " .. vim.b.copilot_chat)
		end
	end,
	group = vim.api.nvim_create_augroup("resize_copilot_chat", { clear = true }),
	nested = true,
})
