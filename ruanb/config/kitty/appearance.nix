{ config, pkgs, ... }:
{
  programs.kitty = {
    theme = "Tokyo Night";
    font = {
      name = "MesloLGS Nerd Font";
    };
    settings = {
      background_opacity = "0.95";
    };
  };
}
