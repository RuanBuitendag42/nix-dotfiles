{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim

    ./plugins/autopairs.nix
    ./plugins/conform.nix
    ./plugins/nvim-tree.nix
    ./plugins/treesitter.nix
    ./plugins/nvim-cmp.nix
    ./plugins/cmp.nix
    ./plugins/which-key.nix
    ./plugins/lazygit.nix
    ./plugins/lsp/lsp.nix

    ./custom-plugins.nix
    ./nvim.nix
  ];
  home.packages = with pkgs; [
    python3
  ];
}
