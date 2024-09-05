{ pkgs, ... }:
{
  programs.nixvim = {
    plugins.lazy = {
      enable = true;
    };
  };
}
