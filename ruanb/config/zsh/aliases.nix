{
  programs.zsh = {
    shellAliases = {
      # cmd utils
      ".." = "cd ..";
      ls = "eza --color";
      l = "eza -l";
      ll = "eza -la";
      c = "clear";
      cat = "bat";
      lg = "lazygit";
      icat = "kitten icat";
      v = "nvim";

      reload = "source ~/.zshrc";

      stowNvim = "cp ~/.config/nvim/init.lua ~/Dev/github/ruanb/nix-nvim/";

      # NIXOS utils
      nixsw = "sudo nixos-rebuild switch --flake ~/Dev/github/ruanb/nix-dotfiles";
      hmsw = "home-manager switch --flake ~/Dev/github/ruanb/nix-dotfiles";
    };
  };
}
