# =============================================================================
#                                   Startup
# =============================================================================

[ -d "$HOME/bin" ] && export PATH="$HOME/bin:$PATH"
DIRCOLORS_SOLARIZED_ZSH_THEME="256dark"

# Install plugins if there are plugins that have not been installed
if ! zplug check; then
    printf "Install plugins? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

if zplug check "junegunn/fzf-bin"; then
    export FZF_DEFAULT_OPTS="--height 40% --reverse --border --inline-info --color=dark,bg+:235,hl+:10,pointer:5"
fi

if zplug check "mollifier/anyframe"; then
    # expressly specify to use fzf
    zstyle ":anyframe:selector:" use fzf

    # specify path and options for fzf
    #zstyle ":anyframe:selector:fzf:" command 'fzf --extended'
    #zstyle ":anyframe:selector:fzf:" command 'fzf'

    # expressly specify to use fzf-tmux
    #zstyle ":anyframe:selector:" use fzf-tmux

    # specify path and options for peco, percol, or fzf-tmux
    #zstyle ":anyframe:selector:fzf-tmux:" command 'fzf-tmux --extended'

    #bindkey '^@' anyframe-widget-cd-ghq-repository
    #bindkey '^r' anyframe-widget-put-history
fi

if zplug check "zsh-users/zsh-history-substring-search"; then
    zmodload zsh/terminfo
    bindkey "$terminfo[kcuu1]" history-substring-search-up
    bindkey "$terminfo[kcud1]" history-substring-search-down
    bindkey "^[[1;5A" history-substring-search-up
    bindkey "^[[1;5B" history-substring-search-down
fi

if zplug check "zsh-users/zsh-syntax-highlighting"; then
    typeset -gA ZSH_HIGHLIGHT_STYLES ZSH_HIGHLIGHT_PATTERNS

    ZSH_HIGHLIGHT_STYLES[cursor]=fg=yellow,bold
    ZSH_HIGHLIGHT_STYLES[default]=none
    ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=green,bold
    ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=green,bold
    ZSH_HIGHLIGHT_STYLES[alias]=fg=cyan,bold
    ZSH_HIGHLIGHT_STYLES[builtin]=fg=cyan,bold
    ZSH_HIGHLIGHT_STYLES[function]=fg=cyan,bold
    ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold
    ZSH_HIGHLIGHT_STYLES[precommand]=fg=white,underline
    ZSH_HIGHLIGHT_STYLES[commandseparator]=none
    ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=green,bold
    ZSH_HIGHLIGHT_STYLES[path]=fg=214,underline
    ZSH_HIGHLIGHT_STYLES[globbing]=fg=063
    ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white,underline
    ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=070
    ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=070
    ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
    ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=063
    ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=063
    ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=009
    ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=009
    ZSH_HIGHLIGHT_STYLES[assign]=none

    ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

    ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor line)
fi

if zplug check "zsh-users/zsh-autosuggestions"; then
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=075'
fi

if zplug check "b4b4r07/enhancd"; then
    ENHANCD_FILTER="fzf:peco:percol"
    ENHANCD_COMPLETION_BEHAVIOR="list"
    ENHANCD_HOOK_AFTER_CD="ls -CF"
fi

if zplug check "djui/alias-tips"; then
    ZSH_PLUGINS_ALIAS_TIPS_EXCLUDES="(_ ll vi)"
    ZSH_PLUGINS_ALIAS_TIPS_FORCE="1"
    #
    # ZSH_PLUGINS_ALIAS_TIPS_REVEAL=1
    ZSH_PLUGINS_ALIAS_TIPS_REVEAL_EXCLUDES="(_ ll vi)"
fi

# Install plugins if there are plugins that have not been installed
if ! zplug check; then
    printf "Install plugins? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load
