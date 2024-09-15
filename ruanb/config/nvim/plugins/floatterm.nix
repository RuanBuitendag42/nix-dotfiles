{
  programs.nixvim = {
    plugins.floaterm = {
      enable = false;
      height = 0.95;
      width = 0.95;
      keymaps = {
        toggle = "<leader>tt";
        new = "<leader>tn";
        next = "<leader>t]";
        prev = "<leader>t[";
      };
    };
  };
}
