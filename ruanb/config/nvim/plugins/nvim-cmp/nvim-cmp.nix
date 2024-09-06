{ pkgs, ... }:
{
  programs.nixvim = {
    plugins.lazy.plugins = with pkgs.vimPlugins; [
      {
        name = "nvim-cmp";
        pkg = nvim-cmp;
        dependencies = [
          cmp-buffer
          cmp-path
          luasnip
          cmp_luasnip
          friendly-snippets
          lspkind-nvim
        ];
        config = "${builtins.readFile ./nvim-cmp.lua}";
        event = "InsertEnter";
      }
    ];
  };
}
