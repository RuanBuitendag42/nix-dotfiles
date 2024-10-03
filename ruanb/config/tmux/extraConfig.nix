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

        # resize panes with ctrl-shift + hjkl
        bind-key -r H resize-pane -L 5
        bind-key -r J resize-pane -D 5
        bind-key -r K resize-pane -U 5
        bind-key -r L resize-pane -R 4
      '';
  };
}
