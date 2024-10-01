{
  programs.tmux = {
    extraConfig = # sh
      ''
        unbind r
        bind r source-file ~/.config/tmux/tmux.conf

        set -g prefix C-x

        bind-key h select-pane -L
        bind-key j select-pane -D
        bind-key k select-pane -U
        bind-key l select-pane -R

        set-option -g status-position top

        set -g renumber-windows on
      '';
  };
}
