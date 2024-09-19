{
  programs.waybar.settings = {
    mainBar = {
      layer = "top"; # Waybar at top layer
      position = "top"; # top|left|bottom|right
      modules-left = ["hyprland/window"];
      modules-center = ["hyprland/workspaces"];
      modules-right = ["pulseaudio" "network" "cpu" "memory" "temperature" "keyboard-state" "clock"];

      # Modules configuration
      "hyprland/workspaces" = {
        "all-outputs" = true;
        "disable-scroll" = true;
        "format" = "{icon}";
        "format-icons" = {
          "1" = "";
          "2" = "";
          "3" = "";
          "4" = "";
          "5" = "";
          "6" = "";
          "7" = "";
          "8" = "";
          "9" = "";
          "10" = "";
          "urgent" = "";
          "focused" = "";
          "default" = "";
        };

        "persistent_workspaces" = {
          "1" = [];
          "2" = [];
          "3" = [];
          "4" = [];
          "5" = [];
          "6" = [];
          "7" = [];
          "8" = [];
          "9" = [];
          "10" = [];
        };
      };

      "keyboard-state" = {
        numlock = true;
        capslock = true;
        format = "{icon} {name}";
        "format-icons" = {
          locked = "";
          unlocked = "";
        };
      };

      "hyprland/window" = {
        format = "➡ {}";
        separate-outputs = true;
      };

      mpd = {
        format = "{stateIcon} {consumeIcon}{randomIcon}{repeatIcon}{singleIcon}{artist} - {album} - {title} ({elapsedTime:%M:%S}/{totalTime:%M:%S}) ⸨{songPosition}|{queueLength}⸩ {volume}% ";
        "format-disconnected" = "Disconnected ";
        "format-stopped" = "{consumeIcon}{randomIcon}{repeatIcon}{singleIcon}Stopped ";
        "unknown-tag" = "N/A";
        interval = 2;
        "consume-icons" = {
          on = " ";
        };
        "random-icons" = {
          off = "<span color=\"#f53c3c\"></span> ";
          on = " ";
        };
        "repeat-icons" = {
          on = " ";
        };
        "single-icons" = {
          on = "1 ";
        };
        "state-icons" = {
          paused = "";
          playing = "";
        };
        "tooltip-format" = "MPD (connected)";
        "tooltip-format-disconnected" = "MPD (disconnected)";
      };

      idle_inhibitor = {
        format = "{icon}";
        "format-icons" = {
          activated = "";
          deactivated = "";
        };
      };

      tray = {
        # "icon-size" = 21;
        spacing = 10;
      };

      clock = {
        # timezone = "America/New_York";
        "tooltip-format" = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        "format-alt" = "{:%Y-%m-%d}";
      };

      cpu = {
        format = " {usage}%";
        tooltip = false;
      };

      memory = {
        format = "{}% ";
      };

      temperature = {
        # thermal-zone = 2;
        # hwmon-path = "/sys/class/hwmon/hwmon2/temp1_input";
        "critical-threshold" = 80;
        # "format-critical" = "{temperatureC}°C {icon}";
        format = "{icon} {temperatureC}°C";
        "format-icons" = ["" "" ""];
      };

      backlight = {
        # device = "acpi_video1";
        format = "{percent}% {icon}";
        "format-icons" = ["" "" "" "" "" "" "" "" ""];
      };

      network = {
        # interface = "wlp2*"; # (Optional) To force the use of this interface
        "format-wifi" = " {essid} ({signalStrength}%)";
        "format-ethernet" = " {ipaddr}/{cidr}";
        "tooltip-format" = " {ifname} via {gwaddr}";
        "format-linked" = " {ifname} (No IP)";
        "format-disconnected" = "⚠ Disconnected";
        "format-alt" = "{ifname}: {ipaddr}/{cidr}";
      };

      pulseaudio = {
        # scroll-step = 1; # %, can be a float
        format = "{icon}  {volume}%   {format_source}";
        "format-bluetooth" = "{volume}% {icon} {format_source}";
        "format-bluetooth-muted" = " {icon} {format_source}";
        "format-muted" = " {format_source}";
        "format-source" = " {volume}%";
        "format-source-muted" = "";
        "format-icons" = {
          headphone = "";
          headset = "";
          phone = "";
          portable = "";
          car = "";
          default = ["" "" ""];
        };
        "on-click" = "pavucontrol";
      };

      "custom/media" = {
        format = "{icon} {}";
        "return-type" = "json";
        "max-length" = 40;
        "format-icons" = {
          spotify = "";
          default = "";
        };
        escape = true;
        exec = "$HOME/.config/waybar/mediaplayer.py 2> /dev/null"; # Script in resources folder
      };
    };
  };
}
