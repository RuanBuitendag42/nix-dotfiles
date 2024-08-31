{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "swww init"
      "$browser & $terminal"
      "~/.config/waybar/scripts/launch.sh"
      # "nm-applet &"
      # "waybar & hyprpaper & firefox"
    ];
  };
}
