return {
  "christoomey/vim-tmux-navigator",

  -- use lazyvim syntax to set keymaps
  keys = {
    { "<C-h>", "<cmd>TmuxNavigateLeft<CR>", desc = "Navigate left" },
    { "<C-j>", "<cmd>TmuxNavigateDown<CR>", desc = "Navigate down" },
    { "<C-k>", "<cmd>TmuxNavigateUp<CR>", desc = "Navigate up" },
    { "<C-l>", "<cmd>TmuxNavigateRight<CR>", desc = "Navigate right" },
  },
}
