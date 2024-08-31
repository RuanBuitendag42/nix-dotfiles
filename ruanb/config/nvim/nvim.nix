{ pkgs, ... }: let
  # Utility functions for building Vim/Neovim plugins
  vimUtils = pkgs.vimUtils;
  buildVimPlugin = vimUtils.buildVimPlugin;

  # Define another Vim plugin (e.g., TheAltF4Stream)
  ruanbVimPlugin = buildVimPlugin {
    name = "ruanb";
    postInstall = ''
      rm -rf $out/nvim.nix
    '';
    src = ../nvim; # Adjust the path to the correct location
  };

  # Define the Neovim plugins list
  mkNeovimPlugins = with pkgs; [
    # Languages
    vimPlugins.nvim-lspconfig
    vimPlugins.nvim-treesitter.withAllGrammars

    # Configuration
    ruanbVimPlugin
  ];

  # Define additional packages needed for LSPs, formatters, etc.
  mkExtraPackages = [
    # Language servers
    pkgs.jsonnet-language-server
    pkgs.lua-language-server
    pkgs.nil
    pkgs.nls
    pkgs.terraform-ls

    # Formatters
    pkgs.stylua
  ];

  # Additional Neovim configuration
  mkExtraConfig = ''
    lua << EOF
      require 'ruanb'.init()
    EOF
  '';
in {
  # Home Manager configuration
  home.packages = mkExtraPackages;

  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    extraConfig = mkExtraConfig;
    plugins = mkNeovimPlugins;
  };
}

