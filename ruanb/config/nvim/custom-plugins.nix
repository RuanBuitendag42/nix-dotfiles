{...}: {
  nixpkgs = {
    overlays = [
      (final: prev: {
        vimPlugins =
          prev.vimPlugins
          // {
            nvim-lsp-file-operations = prev.vimUtils.buildVimPlugin {
              name = "nvim-lsp-file-operations";
              src = inputs.nvim-lsp-file-operations;
            };
          };
      })
    ];
  };
}
