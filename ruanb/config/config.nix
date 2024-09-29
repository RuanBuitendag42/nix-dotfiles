{config,...}: {
  imports = [
    ./hypr/hyprland.nix
    ./kitty/kitty.nix
    ./rofi/rofi.nix
    ./waybar/waybar.nix
    ./tmux/tmux.nix
    ./zsh/zsh.nix
    ./nvim/nvim.nix
    ./stylix/stylix.nix
  ];
  home.file = {
    ".config/neofetch/config.conf" = {
      source = ./neofetch/neofetch.conf;
    };
    # ".config/nvim/lua" = {
    #   source = config.lib.file.mkOutOfStoreSymlink "/home/ruanb/Dev/github/ruanb/nix-dotfiles/ruanb/config/nvim/luaConfig";
    # };
  };
}
