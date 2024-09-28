{pkgs, ...}: {
  stylix = {
    enable = true;
    image = /home/ruanb/Pictures/Wallpapers/jdm_toyota.jpg;

    targets.neovim.enable = false;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";

    cursor.package = pkgs.bibata-cursors;
    cursor.name = "Bibata-Modern-Ice";

    fonts = {
      monospace = {
        package = pkgs.nerdfonts.override {fonts = ["FiraCode"];};
        name = "FiraCode Nerd Font Mono";
      };
      sansSerif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Sans";
      };
      serif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Serif";
      };

      sizes = {
        applications = 11;
        terminal = 11;
        desktop = 10;
        popups = 10;
      };
    };

    opacity = {
      applications = 0.98;
      terminal = 0.98;
      desktop = 0.98;
      popups = 0.98;
    };

    polarity = "dark"; # "light" or "either"
  };
}
