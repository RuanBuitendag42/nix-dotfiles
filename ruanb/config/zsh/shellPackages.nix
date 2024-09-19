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
    zoxide
    eza
    fd
    direnv
    nix-direnv
    stow
  ];
}
