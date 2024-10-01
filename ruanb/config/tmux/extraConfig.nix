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

        # resize panes
        bind-key -r H resize-pane -L 5
        bind-key -r J resize-pane -D 5
        bind-key -r K resize-pane -U 5
        bind-key -r L resize-pane -R 4

        # split panes using ctrl c/v
        bind-key -r v split-window -v
        bind-key -r c split-window -h

        # move panes
        bind-key -r 'H' select-pane -L
        bind-key -r 'J' select-pane -D
        bind-key -r 'K' select-pane -U
        bind-key -r 'L' select-pane -R

        # move windows
        bind-key -r 'H' previous-window
        bind-key -r 'L' next-window
      '';
  };
}
