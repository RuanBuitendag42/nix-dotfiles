return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        -- NOTE: If you are having trouble with this installation,
        --       refer to the README for telescope-fzf-native for more instructions.
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
		{ "nvim-telescope/telescope-ui-select.nvim" },
	},
	config = function()
		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						["<C-k>"] = require("telescope.actions").move_selection_previous,
						["<C-j>"] = require("telescope.actions").move_selection_next,
					},
				},
			},
			extensions = {
				fzf = {
					fuzzy = true,
					override_generic_sorter = false,
					override_file_sorter = true,
				},
				ui_select = {
					require("telescope.themes").get_dropdown(),
				},
			},
		})

		-- Load the extensions
		require("telescope").load_extension("fzf")
		require("telescope").load_extension("ui-select")

		-- Key mappings for Telescope
		local keymap = vim.api.nvim_set_keymap
		local opts = { noremap = true, silent = true }

		keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts) -- Search Help
		keymap("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", opts) -- Search Keymaps
		keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts) -- Search Files
		keymap("n", "<leader>fs", "<cmd>Telescope builtin<CR>", opts) -- Select Telescope
		keymap("n", "<leader>fw", "<cmd>Telescope grep_string<CR>", opts) -- Search Current Word
		keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts) -- Search by Grep
		keymap("n", "<leader>fd", "<cmd>Telescope diagnostics<CR>", opts) -- Search Diagnostics
		keymap("n", "<leader>fr", "<cmd>Telescope resume<CR>", opts) -- Resume Last Search
		keymap("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", opts) -- Search Recent Files
		keymap("n", "<leader><leader>", "<cmd>Telescope buffers<CR>", opts) -- Find Existing Buffers
	end,
}
