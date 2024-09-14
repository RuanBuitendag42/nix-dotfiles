{
  pkgs,
  lib,
  ...
}: let
  inherit (lib) toUpper substring stringLength;
  flavor = "mocha";
  accent = "pink";
  dark_str = "Dark";

  caps = s: "${toUpper (substring 0 1 s)}${substring 1 (stringLength s) s}";
in {
  environment.systemPackages = [
    (pkgs.catppuccin-papirus-folders.override {
      accent = accent;
      flavor = flavor;
    })
    (pkgs.catppuccin-gtk.override {
      accents = [accent];
      variant = flavor;
    })
    pkgs.catppuccin-cursors."${flavor}${dark_str}"
  ];
  programs.regreet = {
    enable = true;
    cageArgs = [
      "-s"
      "-d"
    ];
    settings = {
      background = {
        fit = "Cover";
      };
      GTK = {
        application_prefer_dark_theme = true;
        font_name = "Iosevka Aile 11";
        cursor_theme_name = "Catppuccin-${caps flavor}-${dark_str}-Cursors";
        theme_name = "Catppuccin-${caps flavor}-Standard-${caps accent}-${dark_str}";
        icon_theme_name =
          "Papirus"
          + "-Dark";
      };
    };
  };
}
