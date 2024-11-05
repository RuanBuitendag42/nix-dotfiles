{ pkgs, ... }: {
  stylix = {
    targets = {
      plymouth.disable = true;
    };
  };
}
