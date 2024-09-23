{inputs, ...}: {
  imports = [inputs.catppuccin.homeManagerModules.catppuccin];

  catppuccin = {
    enable = true;
    flavor = "mocha";
    accent = "teal";
  };

  gtk = {
    enable = true;
    catppuccin = {
      enable = true;
      flavor = "mocha";
      accent = "teal";
      size = "standard";
      tweaks = ["normal"];
    };
  };

  # wayland.windowManager.hyprland.catppuccin.enable = true;

  programs = {
    bat.catppuccin.enable = true;
    fzf.catppuccin.enable = true;
    k9s.catppuccin.enable = true;
    kitty.catppuccin.enable = true;
    lazygit.catppuccin.enable = true;
    neovim.catppuccin.enable = true;
    rofi.catppuccin.enable = true;
    tmux.catppuccin.enable = true;
    waybar.catppuccin.enable = true;
    zsh.syntaxHighlighting.catppuccin.enable = true;
  };
}
