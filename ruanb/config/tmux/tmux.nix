{ pkgs, ... }: {
  imports = [
    ./plugins.nix
    ./extraConfig.nix
  ];
  programs.tmux = {
    enable = true;
    shell = "${pkgs.zsh}/bin/zsh";
    newSession = false;
    keyMode = "vi";
    mouse = true;
    baseIndex = 1;
    escapeTime = 0;
    historyLimit = 1000000;
  };
}
