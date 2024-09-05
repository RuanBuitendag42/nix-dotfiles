{ pkgs, ... }: {
  imports = [
    ./plugins/kickstart/plugins/neo-tree.nix
  ];
  nixvim.plugins.lazy.enable = true;
}
