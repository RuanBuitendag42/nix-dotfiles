{ pkgs
, config
, ...
}:
{
  programs.neovim = {
    enable = true;
    withNodeJs = true;
    withPython3 = true;

    # These environment variables are needed to build and run binaries
    # with external package managers like mason.nvim.
    #
    # LD_LIBRARY_PATH is also needed to run the non-FHS binaries downloaded by mason.nvim.
    # it will be set by nix-ld, so we do not need to set it here again.
    extraWrapperArgs = with pkgs; [
      # LIBRARY_PATH is used by gcc before compilation to search directories
      # containing static and shared libraries that need to be linked to your program.
      "--suffix"
      "LIBRARY_PATH"
      ":"
      "${lib.makeLibraryPath [stdenv.cc.cc zlib]}"

      # PKG_CONFIG_PATH is used by pkg-config before compilation to search directories
      # containing .pc files that describe the libraries that need to be linked to your program.
      "--suffix"
      "PKG_CONFIG_PATH"
      ":"
      "${lib.makeSearchPathOutput "dev" "lib/pkgconfig" [stdenv.cc.cc zlib]}"
    ];

    plugins = with pkgs.vimPlugins; [
      base16-vim
    ];

    extraPackages = with pkgs; [
      # Runtime dependencies
      ripgrep
      fd
      cargo
      gnumake
      unzip
      python3

      # Nix LSP
      alejandra
    ];

    # extraLuaConfig = # lua
    #   ''
    #     require("ruanb.core.keymaps")
    #     require("ruanb.core.options")
    #     require("ruanb.lazy")
    #   '';
  };

  home.file = {
    ".config/nvim/" = {
      source = config.lib.file.mkOutOfStoreSymlink "/home/ruanb/.config/nix-dotfiles/ruanb/config/nvim/lazyvim";
      recursive = true;
    };
  };
}

