{pkgs, ...}: {
  home.packages = [
    emmet-ls
    tsserver
    html
    cssls
    tailwindcss
    svelte
    lua_ls
    graphql
    emmet_ls
    prismals
    pyright
  ];
  programs.nixvim = {
    plugins.lazy.plugins = with pkgs.vimPlugins; [
      {
        name = "mason";
        pkg = mason-nvim;
        config =
          /*
          lua
          */
          ''
            function()
              -- import mason
              local mason = require("mason")

              -- import mason-lspconfig
              local mason_lspconfig = require("mason-lspconfig")

              local mason_tool_installer = require("mason-tool-installer")

              -- enable mason and configure icons
              mason.setup({
                ui = {
                  icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                  },
                },
              })
            end
          '';
      }
    ];
  };
}
