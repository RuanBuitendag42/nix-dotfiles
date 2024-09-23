{pkgs, ...}: {
  home.packages = with pkgs; [
    ### ZSH
    zsh-powerlevel10k

    ### GIT
    git
    lazygit

    ### RICE
    neofetch
    swww

    ### Util
    imagemagick
    wget
    ripgrep
    tree
    bat
    fzf
    zsh-fzf-tab
    zoxide
    eza
    fd
    direnv
    nix-direnv
    stow
    htop
    tldr
    thefuck

    ### Work
    awscli2
    kubectl
    kubectx
    k9s
  ];
}
