{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./core/keymaps.nix
    ./core/options.nix

    ./plugins/lsp/lsp.nix
    ./plugins/auto-sessions.nix
    ./plugins/autopairs.nix
    ./plugins/bufferline.nix
    ./plugins/colorscheme.nix
    ./plugins/conform.nix
    ./plugins/dashboard.nix
    ./plugins/dressing.nix
    ./plugins/floatterm.nix
    ./plugins/lazygit.nix
    ./plugins/lualine.nix
    ./plugins/mini.nix
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
