{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./kitty/kitty.nix
    ./nvim/default.nix
    ./hypr/hyprland.nix
    ./waybar/waybar.nix
    ./zsh/zsh.nix
    ./lazygit/lazygit.nix
    # ./rofi/rofi.nix
  ];
  home.file = {
    ".config/neofetch/config.conf" = {
      source = ./neofetch/neofetch.conf;
    };
  };
}
