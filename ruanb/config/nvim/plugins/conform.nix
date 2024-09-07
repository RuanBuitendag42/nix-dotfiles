{pkgs, ...}: {
  home.packages = with pkgs; [
    alejandra
    nodePackages.prettier
    stylua
    isort
    black
  ];
  programs.nixvim = {
  enable = true;
    keymaps = [
      {
        mode = ["n" "v"];
        key = "<leadler>mp";
        options.desc = "Format file or range (in visual mode)";
        action =
          /*
          lua
          */
          ''
            function()
              require("conform").format({
                  lsp_fallback = true,
                  async = false,
                  timeout_ms = 1000,
                })
            end
          '';
      }
    ];
    plugins.conform-nvim = {
      enable = true;
      settings = {
        formatters_by_ft = {
          javascript = ["prettier"];
          typescript = ["prettier"];
          javascriptreact = ["prettier"];
          typescriptreact = ["prettier"];
          svelte = ["prettier"];
          css = ["prettier"];
          html = ["prettier"];
          json = ["prettier"];
          yaml = ["prettier"];
          markdown = ["prettier"];
          graphql = ["prettier"];
          liquid = ["prettier"];
          lua = ["stylua"];
          python = ["isort" "black"];
          nix = ["alejandra"];
        };
        format_on_save = {
          lsp_fallback = true;
          async = false;
          timeout_ms = 1000;
        };
      };
    };
  };
}
