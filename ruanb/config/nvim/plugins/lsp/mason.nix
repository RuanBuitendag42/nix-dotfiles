{pkgs, ...}: {
  imports = [
    ./lspconfig.nix
  ];
  home.packages = with pkgs; [
    typescript
    vscode-langservers-extracted
    tailwindcss
    svelte-language-server
    lua-language-server
    nodePackages.graphql
    emmet-ls
    pyright
  ];
  programs.nixvim = {
    plugins.lazy.plugins = with pkgs.vimPlugins; [
      {
        name = "mason";
        pkg = mason-nvim;
        dependencies = [
          mason-tool-installer
        ];
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

                      mason_lspconfig.setup({
              -- list of servers for mason to install
              ensure_installed = {
                "tsserver",
                "html",
                "cssls",
                "tailwindcss",
                "svelte",
                "lua_ls",
                "graphql",
                "emmet_ls",
                "pyright",
              },
            })

            mason_tool_installer.setup({
              ensure_installed = {
                "prettier", -- prettier formatter
                "stylua", -- lua formatter
                "isort", -- python formatter
                "black", -- python formatter
                "pylint",
                "eslint_d",
              },
            })
            end
          '';
      }
    ];
  };
}
