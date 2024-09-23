{pkgs, ...}: {
  imports = [
    ./aliases.nix
    ./shellPackages.nix
    ./omz.nix
  ];
  programs.zsh = {
    enable = true;

    # Helpers
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    enableCompletion = true;
    autocd = true;

    # Init and Aliases
    initExtraFirst = ''
      neofetch
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
    '';
    initExtra = "${builtins.readFile ./zshrc}";
  };
}
