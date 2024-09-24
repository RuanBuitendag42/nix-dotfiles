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
        action = "<C-w>v";
        key = "<leader>sv";
        mode = "n";
        options.desc = "Split windows vertiacally";
      }
      {
        action = "<C-w>s";
        key = "<leader>sh";
        mode = "n";
        options.desc = "Split windows horizontally";
      }
      {
        action = "<C-w>=";
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
    ];
  };
}
