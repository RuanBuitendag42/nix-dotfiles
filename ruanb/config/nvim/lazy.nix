{ pkgs, ... }: {
  imports = [
    ./plugins/nvim-tree.nix
  ];
  programs.nixvim.plugins.lazy.enable = true;
}
