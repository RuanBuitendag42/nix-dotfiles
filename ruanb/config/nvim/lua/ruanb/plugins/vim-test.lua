return {
	"vim-test/vim-test",
	dependencies = {
		"preservim/vimux",
	},
	vim.keymap.set("n", "<leader>tt", ":TestNearest<CR>", { desc = "Test nearist" }),
	vim.keymap.set("n", "<leader>tT", ":TestFile<CR>", { desc = "Test entire file" }),
	vim.keymap.set("n", "<leader>ta", ":TestSuite<CR>", { desc = "TestSuite ?" }),
	vim.keymap.set("n", "<leader>tl", ":TestLast<CR>", { desc = "Test last ran" }),
	vim.keymap.set("n", "<leader>tg", ":TestVisit<CR>", { desc = "TestVisit?" }),
	vim.cmd("let test#strategy = 'vimux'"),
}
