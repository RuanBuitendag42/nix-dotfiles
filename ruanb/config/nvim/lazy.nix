{ pkgs, ... }: {
  imports = [
    ./plugins/nvim-tree.nix
    ./plugins/treesitter.nix
  ];
  programs.nixvim.plugins.lazy.enable = true;
}
