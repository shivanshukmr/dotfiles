# bind prefix key to Ctrl-Space
unbind C-b
set -g prefix C-a

# Vi mode
set-window-option -g mode-keys vi

# Vi key bindings
unbind h
bind h select-pane -L
unbind j
bind j select-pane -D
unbind k
bind k select-pane -U
unbind l
bind l select-pane -R

# Window splitting
unbind %
unbind v
bind v split-window -h -c "#{pane_current_path}"
unbind \"
unbind s
bind s split-window -v -c "#{pane_current_path}"

# Fast toggle
unbind space
bind space last-window

# i to reload configuration file
unbind i
bind i source-file ~/.config/tmux/tmux.conf \; display "Reloaded!"

# Move current pane
bind K swap-pane -D
bind J swap-pane -U

# Vi like copying and selection 
bind-key -Tcopy-mode-vi 'v' send -X begin-selection
bind-key -Tcopy-mode-vi 'y' send-keys -X copy-pipe-and-cancel "xclip -i -sel clip > /dev/null"
