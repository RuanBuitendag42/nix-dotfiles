{ config, pkgs, ... }:
{
  programs.waybar.settings = {
    mainBar = {
      layer = "top";
      position = "top";
      font = "MesloLGS Nerd Font";
      reload_style_on_change = true;
      spacing = 7; # Gaps between modules (4px)
      modules-left = [ "group/quicklinks-left" "wlr/taskbar" "hyprland/window" ];
      modules-center = [ "hyprland/workspaces" ];
      modules-right = [
        "mpd"
        "network"
        "pulseaudio"
        "group/hardware"
        "clock"
        "group/quicklinks-right"
      ];

      # Taskbar
      "wlr/taskbar" = {
        format = "{icon}";
        icon-size = "20";
        on-click = "activate";
        on-click-right = "close";
        tooltip-format = "Go to {title}";
        ignore-list = [ "kitty" "kitty-scratchpad" ];
      };

      # Hyprland
      "hyprland/workspaces" = {
        disable-scroll = true;
        sort-by = "number";
        all-outputs = true;
        warp-on-scroll = false;
        format = "{icon}";
        format-icons = {
          "1" = " ";
          "2" = " ";
          "3" = " ";
        };
      };

      "hyprland/window" = {
        format = "{title}";
        icon = true;
        icon-size = 20;
        max-length = 30;
        separate-outputs = true;
        rewrite = {
          "(.*) - Brave" = "$1";
        };
      };

      # Quicklinks
      "group/quicklinks-left" = {
        orientation = "horizontal";
        modules = [
          "image"
          "custom/chatgpt"
          "custom/terminal"
          "custom/browser"
          "custom/explorer"
        ];
      };

      image = {
        path = "/home/ruanb/Pictures/Icons/nix.svg";
        on-click = "~/.config/rofi/menus/drun.sh";
        size = 18;
      };

      "custom/chatgpt" = {
        format = " ";
        tooltip = true;
        tooltip-format = "Open ChatGPT!";
        on-click = "brave --new-tab https://chatgpt.com";
      };

      "custom/terminal" = {
        format = " ";
        tooltip = true;
        tooltip-format = " Open Kitty!";
        on-click = "kitty";
      };

      "custom/browser" = {
        format = " ";
        tooltip = true;
        tooltip-format = " Open FireFox!";
        on-click = "firefox";
      };

      "custom/explorer" = {
        format = " ";
        tooltip = true;
        tooltip-format = " Open Dolphin!";
        on-click = "nautilus";
      };

      "group/quicklinks-right" = {
        orientation = "horizontal";
        modules = [
          "idle_inhibitor"
          "custom/wallpaper"
          "custom/power-menu"
        ];
      };

      idle_inhibitor = {
        format = "{icon}";
        format-icons = {
          activated = " ";
          deactivated = " ";
        };
      };

      "custom/power-menu" = {
        format = " ";
        tooltip = true;
        tooltip-format = " Open Wlogout!";
        on-click = "~/.config/hypr/scripts/power-menu.sh";
      };

      "custom/wallpaper" = {
        format = " ";
        tooltip = true;
        tooltip-format = " Change Wallpaper!";
        on-click = "~/.config/rofi/menus/swww.sh";
      };

      # Settings
      "group/settings" = {
        orientation = "horizontal";
        modules = [ ];
      };

      # Temperature
      temperature = {
        critical-threshold = 80;
        format = "{temperatureC}°C {icon}";
        format-icons = [ "" "" "" ];
      };

      # Audio setup
      pulseaudio = {
        format = "{volume}% {icon}";
        format-bluetooth = "{volume}% {icon} {format_source}";
        format-bluetooth-muted = " {icon} {format_source}";
        format-muted = " 󰝟  {format_source}";
        format-source = "{volume}% ";
        format-source-muted = "";
        format-icons = {
          default = [ "" " " " " ];
        };
        max-volume = 150;
        on-click = "pavucontrol";
      };

      # Network setup
      network = {
        format = "{ifname}";
        format-wifi = "{essid} ({signalStrength}%)  ";
        format-ethernet = "{bandwidthDownBytes}  ";
        format-disconnected = ""; # An empty format will hide the module.
        tooltip-format = "{ifname} via {gwaddr} 󰊗";
        tooltip-format-wifi = "{essid} ({signalStrength}%) ";
        tooltip-format-ethernet = "{ifname}  ";
        tooltip-format-disconnected = "Disconnected";
        max-length = 50;
        interval = 2;
      };

      # Hardware info
      "group/hardware" = {
        orientation = "horizontal";
        modules = [ "disk" "cpu" "memory" ];
      };

      disk = {
        format = "{percentage_used}%  ";
        path = "/home";
      };

      cpu = {
        format = " {usage}%  ";
        tooltip = false;
      };

      memory = {
        format = " {}%  ";
      };

      # Clock
      clock = {
        format = "󰨳 {:%d %b %Y %R %a}"; # 19:28 Mon
      };

    };
  };
}
