{pkgs, ...}: {
  imports = [
    ./aliases.nix
    ./shellPackages.nix
  ];
  programs.zsh = {
    enable = true;

    # Helpers
    autocd = true;

    # Init and Aliases
    initExtraFirst =
      /*
      sh
      */
      ''
        neofetch
        source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
        # Set the directory we want to store zinit and plugins
        ZINIT_HOME="''${XDG_DATA_HOME:-''${HOME}/.local/share}/zinit/zinit.git"

        # Download zinit if it's not already there
        if [ ! -d $ZINIT_HOME ]; then
          mkdir -p "$(dirname $ZINIT_HOME)"
          git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
        fi

        # Source/Load zinit
        source "''${ZINIT_HOME}/zinit.zsh"

        # Install P10K
        zinit ice dept=1; zinit light romkatv/powerlevel10k

        # Add in zsh plugins
        zinit light zsh-users/zsh-syntax-highlighting
        zinit light zsh-users/zsh-completions
        zinit light zsh-users/zsh-autosuggestions
        zinit light Aloxaf/fzf-tab
        zinit light softmoth/zsh-vim-mode

        # Add in snippets
        zinit snippet OMZP::git
        zinit snippet OMZP::sudo
        zinit snippet OMZP::aws
        zinit snippet OMZP::fzf
        zinit snippet OMZP::kubectl
        zinit snippet OMZP::kubectx
        zinit snippet OMZP::command-not-found

        zinit cdreplay -q

        [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

        # Completion styling
        zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
        zstyle ':completion:*' list-colors "''${(s.:.)LS_COLORS}"
        zstyle ':completion:*' menu no
        zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
        zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'
        zstyle ':complete:*:*:aws' fzf-search-display
      '';
    initExtra = "${builtins.readFile ./zshrc}";
  };
}
