# bind prefix key to Ctrl-Space
unbind C-b
set -g prefix `

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
bind v split-window -h -c "#{pane_current_path}"
bind s split-window -v -c "#{pane_current_path}"

# Fast toggle
unbind space
bind space last-window
