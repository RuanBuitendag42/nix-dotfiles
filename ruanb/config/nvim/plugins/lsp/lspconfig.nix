{pkgs, ...}: {
  programs.nixvim = {
    plugins.lazy.plugins = with pkgs.vimPlugins; [
      {
        name = "nvim-lspconfig";
        pkg = nvim-lspconfig;
        dependencies = [
          cmp-nvim-lsp
          }
        ];
      }
    ]
  };
}
