{ pkgs, ... }: {
  programs.nixvim = {
    plugins.lazy.plugins = with pkgs.vimPlugins; [
      {
        name = "nvim-tree";
        pkg = nvim-tree-lua;
        dependencies = [
          nvim-web-devicons
        ];
        config = "${builtins.readFile ./tree-sitter.lua}";
      }
    ];
  };
}
