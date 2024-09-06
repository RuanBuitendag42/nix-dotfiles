{pkgs, ...}: {
  imports = [
    ./plugins/nvim-tree.nix
    ./plugins/treesitter.nix
    ./plugins/nvim-cmp.nix
    ./plugins/conform.nix
    ./plugins/lsp/mason.nix
  ];
  programs.nixvim.plugins.lazy.enable = true;
}
