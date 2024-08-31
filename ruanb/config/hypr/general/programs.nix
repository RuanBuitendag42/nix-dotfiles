{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland.settings = {
    "$terminal" = "kitty";
    "$fileManager" = "dolphin";
    "$menu" = "rofi -show drun";
    "$browser" = "firefox";
  };
}
