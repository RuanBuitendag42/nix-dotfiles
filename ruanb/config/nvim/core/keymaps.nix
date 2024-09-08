{
  programs.nixvim = {
    keymaps = [
      {
        action = "<ESC>";
        key = "jk";
        mode = "i";
        options.desc = "Exit insert mode";
      }
      {
        mode = "n";
        key = "<Esc>";
        action = "<cmd>nohlsearch<CR>";
      }

      ## Window Management ##
      {
        actions = "<C-w>v";
        key = "<leader>sv";
        mode = "n";
        options.desc = "Split windows vertiacally";
      }
      {
        actions = "<C-w>s";
        key = "<leader>sh";
        mode = "n";
        options.desc = "Split windows horizontally";
      }
      {
        actions = "<C-w>=";
        key = "<leader>se";
        mode = "n";
        options.desc = "Make splits equal size";
      }
      {
        mode = "n";
        key = "<C-h>";
        action = "<C-w><C-h>";
        options = {
          desc = "Move focus to the left window";
        };
      }
      {
        mode = "n";
        key = "<C-l>";
        action = "<C-w><C-l>";
        options = {
          desc = "Move focus to the right window";
        };
      }
      {
        mode = "n";
        key = "<C-j>";
        action = "<C-w><C-j>";
        options = {
          desc = "Move focus to the lower window";
        };
      }
      {
        mode = "n";
        key = "<C-k>";
        action = "<C-w><C-k>";
        options = {
          desc = "Move focus to the upper window";
        };
      }

      ### TABS ###
      {
        actions = "<cmd>close<CR>";
        key = "<leader>sx";
        mode = "n";
        options.desc = "Close current split";
      }
      {
        actions = "<cmd>tabnew<CR>";
        key = "<leader>to";
        mode = "n";
        options.desc = "Open new tab";
      }
      {
        actions = "<cmd>tabclose<CR>";
        key = "<leader>tx";
        mode = "n";
        options.desc = "Close current tab";
      }
      {
        actions = "<cmd>tabn<CR>";
        key = "<leader>tn";
        mode = "n";
        options.desc = "Go to next tab";
      }
      {
        actions = "<cmd>tab[]<CR>";
        key = "<leader>tp";
        mode = "n";
        options.desc = "Go to previous tab";
      }
      {
        actions = "<cmd>tabnew %<CR>";
        key = "<leader>tf";
        mode = "n";
        options.desc = "Open current buffer in new tab";
      }
    ];
  };
}
