{
  programs.nixvim = {
    keymaps = [
      {
        action = "<cmd>SessionRestore<CR>";
        key = "<leader>wr";
        options.desc = "Restore session for cwd";
      }
      {
        action = "<cmd>SessionSave<CR>";
        key = "<leader>ws";
        options.desc = "Save session for auto session root dir";
      }
    ];
    plugins.auto-session = {
      enable = true;
    };
  };
}
