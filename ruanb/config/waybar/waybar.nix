{ config, pkgs, ... }:
{
  imports = [
    ./settings.nix
    ./colors.nix
  ];
  programs.waybar = {
    enable = true;
  };
}
