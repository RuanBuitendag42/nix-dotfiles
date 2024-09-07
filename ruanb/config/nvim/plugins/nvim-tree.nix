{
  programs.nixvim = {
    globals = {
      loaded_netrw = 1;
      loaded_netrwPlugin = 1;
    };
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
    plugins.nvim-tree = {
      enable = true;
      openOnSetup = true;
      openOnSetupFile = true;
      preferStartupRoot = true;
      hijackCursor = true;
      view = {
        width = 35;
        relativenumber = true;
      };
      # change folder arrow icons
      renderer = {
        indentMarkers.enable = true;
        icons.glyphs.folder = {
          arrowClosed = ""; # arrow when folder is closed
          arrowOpen = ""; # arrow when folder is open
        };
      };
      # disable window_picker for
      # explorer to work well with
      # window splits
      actions.windowPicker.enable = false;
      filters.custom = [".DS_Store"];
      git.ignore = false;
    };
  };
}
