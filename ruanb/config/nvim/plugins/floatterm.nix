{
  programs.nixvim = {
    plugins.floaterm = {
      enable = true;
      keymaps = {
        toggle = "<leader>tt";
        new = "<leader>tn";
        next = "<leader>t]";
        prev = "<leader>t[";
      };
    };
  };
}
