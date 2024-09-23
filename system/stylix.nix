{pkgs, ...}: let
  stylix = {
    url = "github:danth/stylix";
    flake = false;
  };
in {
  imports = [(import stylix).nixosModules.stylix];
  stylix = {
    enable = true;
    image = /home/ruanb/Pictures/Wallpapers/jdm_toyota.jpg;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
  };
}
