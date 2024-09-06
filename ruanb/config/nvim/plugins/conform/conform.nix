{ pkgs, ...}: {
  programs.nixvim = {
    plugins.lazy.plugins = with pkgs.vimPlugins; [
      {
        name = "conform";
        pkg = conform-nvim;
        event = [ "BufReadPre", "BufNewFile" ];
        config = "${builtins.readFile ./conform.lua}";
      }
    ];
  };
}
