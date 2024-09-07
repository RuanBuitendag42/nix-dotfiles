let
  transparent = false; # set to true if you would like to enable transparency

  colors = {
    bg = "#011628";
    bg_dark = "#011423";
    bg_highlight = "#143652";
    bg_search = "#0A64AC";
    bg_visual = "#275378";
    fg = "#CBE0F0";
    fg_dark = "#B4D0E9";
    fg_gutter = "#627E97";
    border = "#547998";
  };
in {
  programs.nixvim = {
    colorschemes = {
      # https://nix-community.github.io/nixvim/colorschemes/tokyonight/index.html
      tokyonight = {
        enable = true;
        settings = {
          style = "night";
          on_colors =
            /*
            lua
            */
            ''
              function(colors)
                colors.bg = ${colors.bg}
                colors.bg_dark = ${transparent} and colors.none or ${colors.bg_dark}
                colors.bg_float = ${transparent} and colors.none or ${colors.bg_dark}
                colors.bg_highlight = ${colors.bg_highlight}
                colors.bg_popup = ${colors.bg_dark}
                colors.bg_search = ${colors.bg_search}
                colors.bg_sidebar = ${transparent} and colors.none or ${colors.bg_dark}
                colors.bg_statusline = ${transparent} and colors.none or ${colors.bg_dark}
                colors.bg_visual = ${colors.bg_visual}
                colors.border = ${colors.border}
                colors.fg = ${colors.fg}
                colors.fg_dark = ${colors.fg_dark}
                colors.fg_float = ${colors.fg}
                colors.fg_gutter = ${colors.fg_gutter}
                colors.fg_sidebar = ${colors.fg_dark}
              end
            '';
        };
      };
    };
  };
}
