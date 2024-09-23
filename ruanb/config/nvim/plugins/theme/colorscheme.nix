{
  programs.nixvim = {
    colorschemes = {
      # https://nix-community.github.io/nixvim/colorschemes/catppuccin/index.html
      catppuccin = {
        enable = false;
        settings = {
          flavour = "mocha";
          default_integrations = true;
          integrations = {
          };
          term_colors = true;
        };
      };

      # https://nix-community.github.io/nixvim/colorschemes/tokyonight/index.html
      tokyonight = {
        enable = false;
        settings = {
          style = "night";
          on_colors =
            /*
            lua
            */
            ''
              function(colors)
                local transparent = false -- set to true if you would like to enable transparency
                local bg = "#011628"
                local bg_dark = "#011423"
                local bg_highlight = "#143652"
                local bg_search = "#0A64AC"
                local bg_visual = "#275378"
                local fg = "#CBE0F0"
                local fg_dark = "#B4D0E9"
                local fg_gutter = "#627E97"
                local border = "#547998"

                colors.bg = bg
                colors.bg_dark = transparent and colors.none or bg_dark
                colors.bg_float = transparent and colors.none or bg_dark
                colors.bg_highlight = bg_highlight
                colors.bg_popup = bg_dark
                colors.bg_search = bg_search
                colors.bg_sidebar = transparent and colors.none or bg_dark
                colors.bg_statusline = transparent and colors.none or bg_dark
                colors.bg_visual = bg_visual
                colors.border = border
                colors.fg = fg
                colors.fg_dark = fg_dark
                colors.fg_float = fg
                colors.fg_gutter = fg_gutter
                colors.fg_sidebar = fg_dark
              end
            '';
        };
      };
    };
  };
}
