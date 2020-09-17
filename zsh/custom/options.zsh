# =============================================================================
#                                   Options
# =============================================================================
# required 
autoload -Uz add-zsh-hook

#autoload -U add-zsh-hook
#add-zsh-hook precmd  theme_precmd

#zle -N self-insert url-quote-magic

setopt autocd                   # Allow changing directories without `cd`
setopt append_history           # Dont overwrite history
setopt auto_list
setopt auto_menu
setopt auto_pushd
setopt extended_history         # Also record time and duration of commands.
setopt hist_expire_dups_first   # Clear duplicates when trimming internal hist.
setopt hist_find_no_dups        # Dont display duplicates during searches.
setopt hist_ignore_dups         # Ignore consecutive duplicates.
setopt hist_ignore_all_dups     # Remember only one unique copy of the command.
setopt hist_reduce_blanks       # Remove superfluous blanks.
setopt hist_save_no_dups        # Omit older commands in favor of newer ones.
setopt hist_ignore_space        # Ignore commands that start with space.
setopt inc_append_history
setopt interactive_comments
setopt no_beep
setopt no_hist_beep
setopt no_list_beep
setopt magic_equal_subst
setopt notify
setopt print_eight_bit
setopt print_exit_value
setopt prompt_subst
setopt pushd_ignore_dups
#setopt rm_star_wait
setopt share_history            # Share history between multiple shells
setopt transient_rprompt

## Changing directories
#setopt auto_pushd
#setopt pushd_ignore_dups        # Dont push copies of the same dir on stack.
#setopt pushd_minus              # Reference stack entries with "-".
#
#setopt extended_glob

bindkey -v
bindkey -v '^?' backward-delete-char
bindkey '^[[Z' reverse-menu-complete
#bindkey '^@' anyframe-widget-cd-ghq-repository
#bindkey '^r' anyframe-widget-put-history

function cd() {
   builtin cd $@ && ls;
}

function history() {
  #rg --smart-case --colors 'path:fg:yellow' --vimgrep -o '[^;]*$' ~/.zsh_history
  #rg --smart-case --vimgrep -p -o '[^;]*$' ~/.zsh_history
    rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always" --vimgrep -o '[^;]*$' ~/.zsh_history
}

# Watching other users
#WATCHFMT="%n %a %l from %m at %t."
watch=(notme)         # Report login/logout events for everybody except ourself.
LOGCHECK=60           # Time (seconds) between checks for login/logout activity.
REPORTTIME=5          # Display usage statistics for commands running > 5 sec.

# Key timeout and character sequences
KEYTIMEOUT=1
WORDCHARS='*?_-[]~=./&;!#$%^(){}<>'

# Fuzzy Find
export FZF_DEFAULT_COMMAND='rg --hidden -l ""'

#zshaddhistory() { whence ${${(z)1}[1]} >| /dev/null || return 1 }
