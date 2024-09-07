{
  programs.nixvim = {
    plugins.lsp = {
      enable = true;
      servers = {
        lua-ls = {
          enable = true;
        };
        nil-ls = {
          enable = true;
        };
      };
      keymaps = {
        silent = true;
        diagnostic = {
          "]d" = "goto_next";
          "[d" = "goto_prev";
          "<leader>d" = "open_float";
        };
        lspBuf = {
          "gD" = "declaration";
          "<leader>ca" = "code_action";
          "<leader>rn" = "rename";
          "K" = "hover";
        };
        extra = [
          {
            action = "<cmd>Telescope lsp_references<CR>";
            key = "gR";
            options.desc = "Show LSP references";
          }
          {
            action = "<cmd>Telescope lsp_definitions<CR>";
            key = "gd";
            options.desc = "Show LSP definitions";
          }
          {
            action = "<cmd>Telescope lsp_implementations<CR>";
            key = "gi";
            options.desc = "Show LSP implementations";
          }
          {
            action = "<cmd>Telescope lsp_type_definitions<CR>";
            key = "gt";
            options.desc = "Show LSP type definitions";
          }
          {
            action = "<cmd>Telescope diagnostics bufnr=0<CR>";
            key = "<leader>D";
            options.desc = "Show buffer diagnostics";
          }
          {
            action = ":LspRestart<CR>";
            key = "<leader>rs";
            options.desc = "Restart LSP";
          }
        ];
      };
    };
  };
}
