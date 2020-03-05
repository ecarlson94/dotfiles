# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/miccar/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/miccar/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/miccar/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/miccar/.fzf/shell/key-bindings.zsh"
