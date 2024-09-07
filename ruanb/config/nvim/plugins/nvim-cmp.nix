{pkgs, ...}: {
  programs.nixvim = {
    plugins.lspkind = {
      enable = true;
      cmp = {
        enable = true;
        ellipsisChar = "...";
        maxWidth = 50;
      };
    };
    plugins.cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        sources = [
          {name = "nvim_lsp";}
          {name = "cmp-ai";}
          {name = "path";}
          {name = "buffer";}
        ];

        completion = {
          completeopt = "menu,menuone,preview,noselect";
        };
        snippet.expand =
          /*
          lua
          */
          ''
            function(args)
              luasnip.lsp_expand(args.body)
            end
          '';
        mapping = {
          "<C-k>" = "cmp.mapping.select_prev_item()"; # previous suggestion
          "<C-j>" = "cmp.mapping.select_next_item()"; # next suggestion
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()"; # show completion suggestions
          "<C-e>" = "cmp.mapping.abort()"; # close completion window
          "<CR>" = "cmp.mapping.confirm({ select = false })";
        };
      };
    };
  };
}
