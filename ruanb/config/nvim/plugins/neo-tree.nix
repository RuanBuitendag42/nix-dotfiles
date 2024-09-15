{
  programs.nixvim = {
    keymaps = [
      {
        mode = "n";
        key = "<leader>ee";
        action = "<cmd>NvimTreeToggle<CR>"; # toggle file explorer
        options.desc = "Toggle file explorer";
      }
      {
        mode = "n";
        key = "<leader>ef";
        action = "<cmd>NvimTreeFindFileToggle<CR>"; # toggle file explorer on current file
        options.desc = "Toggle file explorer on current file";
      }
      {
        mode = "n";
        key = "<leader>ec";
        action = "<cmd>NvimTreeCollapse<CR>"; # collapse file explorer
        options.desc = "Collapse file explorer";
      }
      {
        mode = "n";
        key = "<leader>er";
        action = "<cmd>NvimTreeRefresh<CR>"; # refresh file explorer
        options.desc = "Refresh file explorer";
      }
    ];
    plugins.neo-tree = {
      enable = true;
    };
  };
}
