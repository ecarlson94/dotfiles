# Setup fzf
# ---------
if [[ ! "$PATH" == *<home>/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/walawren/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "<home>/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "<home>/.fzf/shell/key-bindings.bash"
