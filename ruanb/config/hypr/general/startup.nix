{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "$browser & $terminal"
      "~/.config/waybar/scripts/launch.sh"
      "wl-paste --type text --watch cliphist store"
      "wl-paste --type image --watch cliphist store"
      "sleep 1; swww-daemon"
      # "gsettings set org.gnome.desktop.interface gtk-theme 'Catppuccin-Mocha'"
      # "gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'"
      # "gsettings set org.gnome.desktop.interface font-name 'FiraCode Nerd Font Mono'"
      # "gsettings set org.gnome.desktop.interface cursor-theme 'Catppuccin-Mocha-Dark-Cursors'"
      # "nm-applet &"
      # "waybar & hyprpaper & firefox"
    ];
  };
}
