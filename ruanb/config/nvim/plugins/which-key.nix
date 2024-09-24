{
  programs.nixvim = {
    # Useful plugin to show you pending keybinds.
    # https://nix-community.github.io/nixvim/plugins/which-key/index.html
    plugins.which-key = {
      enable = true;

      # Document existing key chains
      settings = {
        spec = [
          {
            __unkeyed-1 = "<leader>e";
            group = "Explore";
          }
          {
            __unkeyed-1 = "g";
            group = "GO";
          }
          {
            __unkeyed-1 = "<leader>s";
            group = "Search with Telescope";
          }
          {
            __unkeyed-1 = "<leader>g";
            group = "Git Actions";
          }
          {
            __unkeyed-1 = "<leader>t";
            group = "Test";
          }
        ];
      };
    };
  };
}
