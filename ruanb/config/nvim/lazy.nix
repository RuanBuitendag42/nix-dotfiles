{ pkgs, ... }: {
  imports = [
    ./plugins/neo-tree.nix
  ];
  programs.nixvim.plugins.lazy.enable = true;
}
