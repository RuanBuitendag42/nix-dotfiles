{ config, pkgs, lib, ... }:
{
  home.packages = with pkgs; [
    zsh-powerlevel10k
    gh
    git
    lazygit
    neofetch
    wget
    ripgrep
    imagemagick
    tree
    bat
    fzf
    zoxide
    eza
    fd
    direnv
    nix-direnv
  ];
}
