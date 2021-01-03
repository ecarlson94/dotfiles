# =============================================================================
#                                   Functions
# =============================================================================
# override change directory
function cd() {
  builtin cd $@ && ls;
}

function history() {
  #rg --smart-case --colors 'path:fg:yellow' --vimgrep -o '[^;]*$' ~/.zsh_history
  #rg --smart-case --vimgrep -p -o '[^;]*$' ~/.zsh_history
    rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always" --vimgrep -o '[^;]*$' ~/.zsh_history
}
