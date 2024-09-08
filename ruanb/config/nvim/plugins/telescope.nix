{
  programs.nixvim = {
    # https://nix-community.github.io/nixvim/plugins/telescope/index.html
    plugins.telescope = {
      enable = true;
      extensions = {
        fzf-native.enable = true;
        ui-select.enable = true;
      };

      settings = {
        defaults = {
          mappings = {
            i = {
              "C-k" = {__raw = "require('telescope.actions').move_selection_previous";};
              "C-j" = {__raw = "require('telescope.actions').move_selection_next";};
            };
          };
        };
      };

      keymaps = {
        "<leader>fh" = {
          mode = "n";
          action = "help_tags";
          options = {
            desc = "[S]earch [H]elp";
          };
        };
        "<leader>fk" = {
          mode = "n";
          action = "keymaps";
          options = {
            desc = "[S]earch [K]eymaps";
          };
        };
        "<leader>ff" = {
          mode = "n";
          action = "find_files";
          options = {
            desc = "[S]earch [F]iles";
          };
        };
        "<leader>fs" = {
          mode = "n";
          action = "builtin";
          options = {
            desc = "[S]earch [S]elect Telescope";
          };
        };
        "<leader>fw" = {
          mode = "n";
          action = "grep_string";
          options = {
            desc = "[S]earch current [W]ord";
          };
        };
        "<leader>fg" = {
          mode = "n";
          action = "live_grep";
          options = {
            desc = "[S]earch by [G]rep";
          };
        };
        "<leader>fd" = {
          mode = "n";
          action = "diagnostics";
          options = {
            desc = "[S]earch [D]iagnostics";
          };
        };
        "<leader>fr" = {
          mode = "n";
          action = "resume";
          options = {
            desc = "[S]earch [R]esume";
          };
        };
        "<leader>fo" = {
          mode = "n";
          action = "oldfiles";
          options = {
            desc = "[S]earch Recent Files ('.' for repeat)";
          };
        };
        "<leader><leader>" = {
          mode = "n";
          action = "buffers";
          options = {
            desc = "[ ] Find existing buffers";
          };
        };
      };
      settings = {
        extensions.__raw = "{ ['ui-select'] = { require('telescope.themes').get_dropdown() } }";
      };
    };
  };
}
