{
  config,
  pkgs,
  ...
}: {
  imports = [
    # ./general/environment.nix
    ./general/input.nix
    ./general/programs.nix
    ./general/appearance.nix
    ./general/startup.nix
    ./general/keybindings.nix
    ./general/workspaces.nix
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    xwayland.enable = true;
    systemd.enable = true;
  };
}
