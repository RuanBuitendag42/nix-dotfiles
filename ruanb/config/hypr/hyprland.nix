{ config, pkgs, ... }:
{
  imports = [
    ./general/environment.nix
    ./general/input.nix
    ./general/programs.nix
    ./general/appearance.nix
    ./general/startup.nix
    ./general/keybindings.nix
    ./general/workspaces.nix
  ];
  wayland.windowManager.hyprland.enable = true;
}
