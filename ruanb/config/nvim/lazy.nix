{ pkgs, ... }: {
  imports = [
    ./plugins/nvim-tree/nvim-tree.nix
    ./plugins/treesitter/treesitter.nix
    ./plugins/nvim-cmp/nvim-cmp.nix
    ./plugins/conform/conform.nix
  ];
  programs.nixvim.plugins.lazy.enable = true;
}
