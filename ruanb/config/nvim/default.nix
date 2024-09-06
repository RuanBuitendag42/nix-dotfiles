{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./custom-plugins.nix
    ./nvim.nix
  ];
}
