{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "swww init"
      "$browser & $terminal"
      "~/.config/waybar/scripts/launch.sh"
      "wl-paste --type text --watch cliphist store # Stores only text data"
      "wl-paste --type image --watch cliphist store # Stores only image data"
      # "nm-applet &"
      # "waybar & hyprpaper & firefox"
    ];
  };
}
