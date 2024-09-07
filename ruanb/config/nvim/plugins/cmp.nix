{pkgs,...}: {
programs.nixvim = {
plugins.cmp = {
enable = true;
  autoEnableSources = true;
  }:
};
}
