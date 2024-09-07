{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim

    ./plugins/lsp/lsp.nix
    ./plugins/auto-sessions.nix
    ./plugins/autopairs.nix
    ./plugins/bufferline.nix
    ./plugins/conform.nix
    ./plugins/dressing.nix
    ./plugins/lazygit.nix
    ./plugins/lualine.nix
    ./plugins/nvim-cmp.nix
    ./plugins/nvim-tree.nix
    ./plugins/telescope.nix
    ./plugins/treesitter.nix
    ./plugins/which-key.nix

    ./custom-plugins.nix
    ./nvim.nix
  ];
  home.packages = with pkgs; [
    python3
  ];
}
