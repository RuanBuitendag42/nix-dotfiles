{pkgs,config,...}:
let
  treesitterWithGrammars = (pkgs.vimPlugins.nvim-treesitter.withPlugins (p: [
    p.bash
    p.comment
    p.css
    p.dockerfile
    p.gitattributes
    p.gitignore
    p.hcl
    p.javascript
    p.json5
    p.json
    p.lua
    p.make
    p.markdown
    p.nix
    p.python
    p.toml
    p.typescript
    p.yaml
  ]));

  treesitter-parsers = pkgs.symlinkJoin {
    name = "treesitter-parsers";
    paths = treesitterWithGrammars.dependencies;
  };
in
{
  home.packages = with pkgs; [
    ripgrep
    fd
    lua-language-server
    black
  ];
  programs.neovim = {
    enable = true;
    withNodeJs = true;
    withPython3 = true;
    plugins = [
      treesitterWithGrammars
    ];
    extraLuaConfig = # lua
    ''
      require("ruanb.core.keymaps")
      require("ruanb.core.options")
      require("ruanb.lazy")
      vim.opt.runtimepath:append("${treesitter-parsers}")
    '';
  };

  home.file = {
    ".config/nvim/lua/" = {
      source = config.lib.file.mkOutOfStoreSymlink "/home/ruanb/Dev/github/ruanb/nix-dotfiles/ruanb/config/nvim/lua";
      recursive = true;
    };

    # Treesitter is configured as a locally developed module in lazy.nvim
    # we hardcode a symlink here so that we can refer to it in our lazy config
    ".local/share/nvim/nix/nvim-treesitter/" = {
      recursive = true;
      source = treesitterWithGrammars;
    };
  };
}

