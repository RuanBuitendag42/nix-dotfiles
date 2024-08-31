{ config, pkgs, lib, ... }:
{
  programs.zsh = {
    enable = true;

    # Helpers
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    enableCompletion = true;

    # Init and Aliases
    initExtraFirst = ''
      neofetch
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
    '';
    initExtra = "${builtins.readFile ./zshrc}";
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

      # ZSH
      vzsh = "nvim ~/.zshrc";
      reload = "source ~/.zshrc";

      # NIXOS utils
      nixsw = "sudo nixos-rebuild switch --flake ~/Dev/github/ruanb/nix-dotfiles";
      hmsw = "home-manager switch --flake ~/Dev/github/ruanb/nix-dotfiles";
    };

  };

  home.packages = with pkgs; [
    bat
    fzf
    zoxide
    eza
    fd
    direnv
    nix-direnv
  ];
}
