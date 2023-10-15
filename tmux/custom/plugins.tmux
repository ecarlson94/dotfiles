# TMUX plugin manager
set -g @plugin 'tmux-plugins/tpm'

# Sensible defaults
set -g @plugin 'tmux-plugins/tmux-sensible'

# Colorscheme
set -g @plugin "catppuccin/tmux"
set -g @catppuccin-flavor "mocha"

# Session saves through restart
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @resurrect-capture-pane-contents 'on'
set -g @resurrect-strategy-nvim 'session'

set -g @plugin 'tmux-plugins/tmux-continuum'
set -g @continuum-restore 'on'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
# `Prefix + I` to load plugins
if "test ! -d ~/.tmux/plugins/tpm" \
   "run 'git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm && ~/.tmux/plugins/tpm/bin/install_plugins'"
run '~/.tmux/plugins/tpm/tpm'

