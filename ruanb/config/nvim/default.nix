{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./adapter.nix
    ./custom-plugins.nix
    ./nvim.nix
    ./lazy.nix
  ];
}
