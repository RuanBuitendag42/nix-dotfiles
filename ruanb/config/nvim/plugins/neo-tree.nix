{
  programs.nixvim = {
    keymaps = [
      {
        mode = "n";
        key = "<leader>ee";
        action = "<cmd>Neotree toggle<CR>"; # toggle file explorer
        options.desc = "Toggle file explorer";
      }
      {
        mode = "n";
        key = "<leader>ef";
        action = "<cmd>Neotree reveal<CR>"; # toggle file explorer on current file
        options.desc = "Toggle file explorer on current file";
      }
    ];
    plugins.neo-tree = {
      enable = true;
    };
  };
}
