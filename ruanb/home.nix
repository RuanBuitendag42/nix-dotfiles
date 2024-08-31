{ config, pkgs, inputs, ... }:

{
  imports = [
    ./config/config.nix
    ./config/scripts.nix
  ];

  home.username = "ruanb";
  home.homeDirectory = "/home/ruanb";


  home.stateVersion = "24.05"; # Please read the comment before changing.

  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    # Fonts
    (nerdfonts.override {
      fonts = [ "Meslo" ];
    })
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = { };

  home.sessionVariables = {
    EDITOR = "nvim";
  };


  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
