# =============================================================================
#                                Key Bindings
# =============================================================================

# Common CTRL bindings.
bindkey "^a" beginning-of-line
bindkey "^e" end-of-line
bindkey "^f" forward-word
bindkey "^b" backward-word
bindkey "^k" kill-line
bindkey "^d" delete-char
bindkey "^y" accept-and-hold
bindkey "^w" backward-kill-word
bindkey "^u" backward-kill-line
bindkey "^R" history-incremental-pattern-search-backward
bindkey "^F" history-incremental-pattern-search-forward

# Do not require a space when attempting to tab-complete.
bindkey "^i" expand-or-complete-prefix

# Fixes for alt-backspace and arrows keys
bindkey '^[^?' backward-kill-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

## Emulate tcsh's backward-delete-word
#tcsh-backward-kill-word () {
#    local WORDCHARS="${WORDCHARS:s#/#}"
#    zle backward-kill-word
#}
#zle -N tcsh-backward-kill-word

# https://github.com/sickill/dotfiles/blob/master/.zsh.d/key-bindings.zsh
tcsh-backward-word () {
    local WORDCHARS="${WORDCHARS:s#./#}"
    zle emacs-backward-word
}
zle -N tcsh-backward-word
bindkey '\e[1;3D' tcsh-backward-word
bindkey '\e^[[D' tcsh-backward-word # tmux

tcsh-forward-word () {
    local WORDCHARS="${WORDCHARS:s#./#}"
    zle emacs-forward-word
}
zle -N tcsh-forward-word
bindkey '\e[1;3C' tcsh-forward-word
bindkey '\e^[[C' tcsh-backward-word # tmux

tcsh-backward-delete-word () {
    local WORDCHARS="${WORDCHARS:s#./#}"
    zle backward-delete-word
}
zle -N tcsh-backward-delete-word
bindkey "^[^?" tcsh-backward-delete-word # urxvt
