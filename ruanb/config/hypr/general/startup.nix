{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "swww init"
      "$browser & $terminal"
      "~/.config/waybar/scripts/launch.sh"
      "wl-paste --type text --watch cliphist store"
      "wl-paste --type image --watch cliphist store"
      # "nm-applet &"
      # "waybar & hyprpaper & firefox"
    ];
  };
}
