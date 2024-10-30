{ pkgs
, inputs
, ...
}: {
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
    vesktop
    nautilus
    pavucontrol
    thunderbird
    libreoffice
    obsidian
    okular
    inputs.zen-browser.packages."${system}".default

    # image viewer
    qimgv

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
  home.file = { };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
