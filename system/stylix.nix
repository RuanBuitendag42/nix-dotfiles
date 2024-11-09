{ pkgs, ... }: {
  stylix = {
    targets = {
      plymouth.enable = false;
    };
  };
}
