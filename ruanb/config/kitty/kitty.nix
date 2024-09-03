{ config, pkgs, ... }:
{
  imports = [
    ./appearance.nix
    ./keybindings.nix
  ];
  programs.kitty = {
    enable = true;
  };
}
