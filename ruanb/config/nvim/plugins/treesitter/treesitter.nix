{ pkgs, ... }: {
  programs.nixvim = {
    plugins.lazy.plugins = with pkgs.vimPlugins; [
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
      {
        name = "nvim-treesitter";
        pkg = nvim-treesitter;
        event = [
          "BufReadPre"
          "BufNewFile"
        ];
        dependencies = [
          nvim-ts-autotag
                  ];
        config = "${builtins.readFile ./treesitter.lua}";
      }
    ];
  };
}
