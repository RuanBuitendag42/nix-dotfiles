{ config, ... }: {
  # imports = [
  # ./settings.nix
  # ./colors.nix
  # ];
  programs.waybar = {
    enable = true;
  };
  home.file = {
    ".config/waybar/" = {
      source = config.lib.file.mkOutOfStoreSymlink "/home/ruanb/.config/nix-dotfiles/ruanb/config/waybar";
      recursive = true;
    };
  };
}
