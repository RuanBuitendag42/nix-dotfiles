-- Autocommand to resize the Copilot Chat window on VimResized event
vim.api.nvim_create_autocmd("VimResized", {
	callback = function()
		-- Get the window ID of the Copilot Chat window
		local win_id = vim.fn.win_getid()
		-- Check if the window ID is valid
		if vim.api.nvim_win_is_valid(win_id) then
			-- Set the width of the Copilot Chat window to 30% of the total window width
			vim.api.nvim_win_set_width(win_id, math.floor(vim.o.columns * 0.7))
		end
	end,
})
