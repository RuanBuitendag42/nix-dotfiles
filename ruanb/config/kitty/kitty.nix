{pkgs, ...}: let
  startupSession = pkgs.writeText "startupSession" ''
    launch tmux
  '';
in {
  imports = [
    ./appearance.nix
    ./keybindings.nix
  ];
  programs.kitty = {
    enable = true;
    settings = {
      startup_session = "${startupSession}";
    };
  };
}
