{ pkgs, ... }: {
  imports = [
    ./plugins/nvim-tree/nvim-tree.nix
    ./plugins/treesitter/treesitter.nix
    ./plugins/nvim-cmp/nvim-cmp.nix
  ];
  programs.nixvim.plugins.lazy.enable = true;
}
