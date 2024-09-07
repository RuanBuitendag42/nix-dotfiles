{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim

    ./plugins/autopairs.nix
    ./plugins/nvim-tree.nix
    ./plugins/cmp.nix

    ./custom-plugins.nix
    ./nvim.nix
  ];
  home.packages = with pkgs; [
    python3
  ];
}
