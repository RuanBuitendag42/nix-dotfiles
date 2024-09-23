{
  programs.nixvim = {
    plugins.lualine = {
      enable = true;
      settings = {
        sections = {
          lualine_x = [
            "encoding"
            "fileformat"
            "filetype"
          ];
        };
      };
    };
  };
}
