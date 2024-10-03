{
  programs.zsh = {
    shellAliases = {
      # cmd utils
      "\"..\"" = "cd ..";
      ls = "eza --color";
      l = "eza -l";
      ll = "eza -la";
      c = "clear";
      cat = "bat";
      lg = "lazygit";
      icat = "kitten icat";
      v = "nvim";

      reload = "source ~/.zshrc";

      wallpaper = "~/.config/swww/scripts/changeWallpaper.sh";

      # NIXOS utils
      nhs = "nh os switch";
      nhc = "nh clean all --keep 5";
      nhsboot = "nh os boot";
      hmsw = "nh home switch";
    };
  };
}
