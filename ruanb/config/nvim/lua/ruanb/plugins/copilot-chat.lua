return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		opts = {
			debug = false, -- Enable debugging
			context = "buffers",
			window = {
				layout = "vertical", -- 'vertical', 'horizontal', 'float', 'replace'
				width = 0.3, -- fractional width of parent, or absolute width in columns when > 1
			},
			mappings = {
				complete = {
					detail = "Use @<Tab> or /<Tab> for options.",
					insert = "<Tab>",
				},
				close = {
					normal = "q",
					insert = "<C-c>",
				},
				reset = {
					normal = "<leader>gr",
					insert = "<C-0>",
				},
				submit_prompt = {
					normal = "<CR>",
					insert = "<C-s>",
				},
				accept_diff = {
					normal = "<C-y>",
					insert = "<C-y>",
				},
				yank_diff = {
					normal = "gy",
					register = '"',
				},
				show_diff = {
					normal = "gd",
				},
				show_system_prompt = {
					normal = "gp",
				},
				show_user_selection = {
					normal = "gs",
				},
			},
		},
		-- See Commands section for default commands if you want to lazy load on them
	},
	{
		-- new spec to define copilot key
	},
}
