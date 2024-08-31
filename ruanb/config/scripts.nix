{ config, pkgs, ... }:
{
  home.file = {
    ".config/waybar/scripts/launch.sh" = {
      source = ./waybar/scripts/launch.sh;
      executable = true;
    };
  };
}
