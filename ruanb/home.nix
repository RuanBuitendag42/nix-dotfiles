{pkgs, ...}: {
  imports = [
    ./config/config.nix
    ./config/scripts.nix
  ];

  home.username = "ruanb";
  home.homeDirectory = "/home/ruanb";
  home.stateVersion = "24.05"; # Please read the comment before changing.
  nixpkgs.config = {
    allowUnfree = true;
    allowUnsupportedSystem = true;
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

    ### HYPRLAND ###
    waybar
    dunst
    libnotify
    swww
    rofi-wayland
    wl-clipboard
    wallust

    # Fonts
    (nerdfonts.override {
      fonts = ["Meslo"];
    })
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {};

  home.sessionVariables = {
    EDITOR = "nvim";
    DISPLAY = ":0";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
