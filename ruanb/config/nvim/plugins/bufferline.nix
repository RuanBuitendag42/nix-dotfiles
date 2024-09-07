{
  programs.nixvim = {
    plugins.bufferline = {
      enable = true;
      settings = {
        options.mode = "tabs";
      };
    };
  };
}
