{ pkgs, ... }: {
  programs.nixvim = {
    plugins.lazy.plugins = with pkgs.vimPlugins; [
      {
        name = "nvim-treesitter";
        pkg = nvim-treesitter;
        event = [
          "BufReadPre"
          "BufNewFile"
        ];
        dependencies = [
          nvim-ts-autotag
          nvim-treesitter-parsers.json
          nvim-treesitter-parsers.javascript
          nvim-treesitter-parsers.typescript
          nvim-treesitter-parsers.tsx
          nvim-treesitter-parsers.yaml
          nvim-treesitter-parsers.html
          nvim-treesitter-parsers.css
          nvim-treesitter-parsers.prisma
          nvim-treesitter-parsers.markdown
          nvim-treesitter-parsers.markdown_inline
          nvim-treesitter-parsers.svelte
          nvim-treesitter-parsers.graphql
          nvim-treesitter-parsers.bash
          nvim-treesitter-parsers.lua
          nvim-treesitter-parsers.vim
          nvim-treesitter-parsers.dockerfile
          nvim-treesitter-parsers.gitignore
          nvim-treesitter-parsers.query
          nvim-treesitter-parsers.vimdoc
          nvim-treesitter-parsers.c
          nvim-treesitter-parsers.nix
        ];
        config = ''
          function()
            -- import nvim-treesitter plugin
            local treesitter = require("nvim-treesitter.configs")

            -- configure treesitter
            treesitter.setup({ -- enable syntax highlighting
              highlight = {
                enable = true,
              },
              -- enable indentation
              indent = { enable = true },
              -- enable autotagging (w/ nvim-ts-autotag plugin)
              autotag = {
                enable = true,
              },
              incremental_selection = {
                enable = true,
                keymaps = {
                  init_selection = "<C-space>",
                  node_incremental = "<C-space>",
                  scope_incremental = false,
                  node_decremental = "<bs>",
                },
              },
            })
          end
        '';
      }
    ];
  };
}
