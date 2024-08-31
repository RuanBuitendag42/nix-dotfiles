{ config, pkgs, ... }:
{
  imports = [
    ./appearance.nix
  ];
  programs.kitty = {
    enable = true;
  };
}
