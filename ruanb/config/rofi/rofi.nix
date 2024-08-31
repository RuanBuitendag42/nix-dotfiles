{ config, pkgs, ... }:
{
  programs.rofi = {
    enable = true;
    theme =
      let
        inherit (config.lib.formats.rasi) mkLiteral;
      in
      {
        "*" = {
          background = mkLiteral "rgba(1,2,4, 0.8)";
          background-alt = mkLitera lgba (11, 19,25, 0.15);
          foreground = mkLitera rgba (202, 230,230, 1);
          selected = mkLitera rgba (20, 39,46, 0.7);
          active = mkLitera rgba (64, 149,150, 1);
          urgent = mkLitera rgba (20, 39,46, 1);
        };
      };
  };
}
