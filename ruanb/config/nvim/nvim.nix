{pkgs, ...}: {
  /*
  =====================================================================
  ==================== READ THIS BEFORE CONTINUING ====================
  =====================================================================
  ========                                    .-----.          ========
  ========         .----------------------.   | === |          ========
  ========         |.-""""""""""""""""""-.|   |-----|          ========
  ========         ||                    ||   | === |          ========
  ========         ||  KICKSTART.NIXVIM  ||   |-----|          ========
  ========         ||                    ||   | === |          ========
  ========         ||                    ||   |-----|          ========
  ========         ||:Tutor              ||   |:::::|          ========
  ========         |'-..................-'|   |____o|          ========
  ========         `"")----------------(""`   ___________      ========
  ========        /::::::::::|  |::::::::::\  \ no mouse \     ========
  ========       /:::========|  |==hjkl==:::\  \ required \    ========
  ========      '""""""""""""'  '""""""""""""'  '""""""""""'   ========
  ========                                                     ========
  =====================================================================
  =====================================================================
  */
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    withNodeJs = true;

    # https://nix-community.github.io/nixvim/NeovimOptions/autoGroups/index.html
    autoGroups = {
      kickstart-highlight-yank = {
        clear = true;
      };
    };

    # [[ Basic Autocommands ]]
    #  See `:help lua-guide-autocommands`
    # https://nix-community.github.io/nixvim/NeovimOptions/autoCmd/index.html
    autoCmd = [
      # Highlight when yanking (copying) text
      #  Try it with `yap` in normal mode
      #  See `:help vim.highlight.on_yank()`
      {
        event = ["TextYankPost"];
        desc = "Highlight when yanking (copying) text";
        group = "kickstart-highlight-yank";
        callback.__raw = ''
          function()
            vim.highlight.on_yank()
          end
        '';
      }
    ];

    plugins = {
      # Detect tabstop and shiftwidth automatically
      # https://nix-community.github.io/nixvim/plugins/sleuth/index.html
      sleuth = {
        enable = true;
      };

      # Highlight todo, notes, etc in comments
      # https://nix-community.github.io/nixvim/plugins/todo-comments/index.html
      todo-comments = {
        enable = true;
        settings = {
          signs = true;
        };
      };
    };

    # https://nix-community.github.io/nixvim/NeovimOptions/index.html?highlight=extraplugins#extraplugins
    extraPlugins = with pkgs.vimPlugins; [
      # Useful for getting pretty icons, but requires a Nerd Font.
      nvim-web-devicons # TODO: Figure out how to configure using this with telescope
    ];

    # TODO: Figure out where to move this
    # https://nix-community.github.io/nixvim/NeovimOptions/index.html?highlight=extraplugins#extraconfigluapre
    extraConfigLuaPre = ''
      if vim.g.have_nerd_font then
        require('nvim-web-devicons').setup {}
      end
    '';

    # The line beneath this is called `modeline`. See `:help modeline`
    # https://nix-community.github.io/nixvim/NeovimOptions/index.html?highlight=extraplugins#extraconfigluapost
    extraConfigLuaPost = ''
      -- vim: ts=2 sts=2 sw=2 et
    '';
  };
}
