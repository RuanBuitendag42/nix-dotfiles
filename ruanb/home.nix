{pkgs, ...}: {
  imports = [
    ./config/config.nix
    ./config/scripts.nix
    ../stylix.nix
  ];

  home.username = "ruanb";
  home.homeDirectory = "/home/ruanb";
  home.stateVersion = "24.05"; # Please read the comment before changing.
  nixpkgs.config = {
    allowUnfree = true;
    allowUnsupportedSystem = true;
  };
  home.sessionVariables = {
    FLAKE = "/home/ruanb/.config/nix-dotfiles";
  };

  services.cliphist.enable = true;
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    ### PROGRAMS ###
    spotify
    spotify-tray
    firefox
    vesktop
    nautilus
    pavucontrol
    thunderbird
    libreoffice
    obsidian
    whatsapp-for-linux

    ### HYPRLAND ###
    waybar
    dunst
    libnotify
    swww
    wl-clipboard
    wallust
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {};

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
