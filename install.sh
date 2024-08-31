#/bin/sh

nixos-rebuild switch --flake .
home-manager switch --flake .
./ruanb/scripts/nvim/stow.sh
