{pkgs, ...}: {
  programs.nixvim = {
    plugins.lsp = {
      enable = true;
      servers = {
        lua_lsp = {
          enable = true;
        };
        nil-ls = {
          enable = true;
        };
      };
    };
  };
}
