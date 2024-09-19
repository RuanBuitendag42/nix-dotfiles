{
  programs.nixvim = {
    keymaps = [
      {
        key = "<leader>gl";
        mode = ["n"];
        action = "<cmd>LazyGit<CR>";
        options = {
          desc = "Open LazyGit";
        };
      }
    ];
    plugins.lazygit = {
      enable = true;
      settings = {
        floating_window_border_chars = [
          "╭"
          "─"
          "╮"
          "│"
          "╯"
          "─"
          "╰"
          "│"
        ];
        floating_window_scaling_factor = 0.9;
        floating_window_use_plenary = 1;
        floating_window_winblend = 10;
        use_neovim_remote = 1;
      };
    };
  };
}
