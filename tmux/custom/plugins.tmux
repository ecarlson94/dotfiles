# Sensible defaults
set -g @plugin 'tmux-plugins/tmux-sensible'

# Seamless vim/tmux navigation
set -g @plugin 'christoomey/vim-tmux-navigator'

# Session saves through restart
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @resurrect-capture-pane-contents 'on'

set -g @plugin 'tmux-plugins/tmux-continuum'
set -g @continuum-restore 'on'


# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
if "test ! -d ~/.tmux/plugins/tpm" \
   "run 'git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm && ~/.tmux/plugins/tpm/bin/install_plugins'"
run '~/.tmux/plugins/tpm/tpm'
