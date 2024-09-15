{
  imports = [
    ./hypr/hyprland.nix
    ./kitty/kitty.nix
    # ./rofi/rofi.nix
    ./waybar/waybar.nix
    ./zsh/zsh.nix
  ];
  home.file = {
    ".config/neofetch/config.conf" = {
      source = ./neofetch/neofetch.conf;
    };
    ".config/nvim/" = {
      source = ./nvim;
    };
  };
}
