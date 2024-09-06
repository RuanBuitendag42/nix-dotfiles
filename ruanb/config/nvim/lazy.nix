{pkgs, ...}: {
  imports = [
    ./plugins/nvim-tree.nix
    ./plugins/treesitter.nix
    ./plugins/nvim-cmp.nix
    ./plugins/conform.nix
  ];
  programs.nixvim.plugins.lazy.enable = true;
}
