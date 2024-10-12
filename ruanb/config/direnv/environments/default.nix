{
  home.file = {
    ".config/direnv/default-env/flake.nix" = {
      source = ./default/flake.nix;
    };
    ".config/direnv/default-env/.envrc" = {
      source = ./default/.envrc;
    };
  };
}
