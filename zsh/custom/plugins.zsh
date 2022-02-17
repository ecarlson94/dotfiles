# =============================================================================
#                                   Plugins
# =============================================================================
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.sheldon/repos/github.com/ohmyzsh/ohmyzsh"

# Check if sheldon is installed
if [[ ! -f $HOME/.local/bin/sheldon ]]; then
    curl --proto '=https' -fLsS https://rossmacarthur.github.io/install/crate.sh \
        | bash -s -- --repo rossmacarthur/sheldon --to $HOME/.local/bin
fi

# "zsh-users/zsh-history-substring-search"
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey "^[[1;5A" history-substring-search-up
bindkey "^[[1;5B" history-substring-search-down

# "zsh-users/zsh-syntax-highlighting"
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

# "zsh-users/zsh-autosuggestions"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=075'

# "djui/alias-tips"
ZSH_PLUGINS_ALIAS_TIPS_EXCLUDES="(_ ll vi)"
ZSH_PLUGINS_ALIAS_TIPS_FORCE=1

# ZSH_PLUGINS_ALIAS_TIPS_REVEAL=1
ZSH_PLUGINS_ALIAS_TIPS_REVEAL_EXCLUDES="(_ ll vi)"

# "b4b4r07/enhancd"
ENHANCD_COMPLETION_BEHAVIOR="list"
ENHANCD_HOOK_AFTER_CD="ls -CF"

# "b4b4r07/zsh-history-ltsv"
ZSH_HISTORY_KEYBIND_GET_BY_DIR="^r"
# ZSH_HISTORY_KEYBIND_GET_ALL="^r^a"

# aperezdc/zsh-notes
# Ctrl-N: Open the notes selector.
bindkey '^N' notes-edit-widget
# If unset, ~/Notes is used as default.
zstyle :notes home  ''
# When set, exits the notes widget after one use.
zstyle :notes:widget once no
# Choose the picker used by the widget. Supported values: fzf, skim, fzy.
zstyle :notes:widget picker fzf
# Enable preview panel. Disabled by default.
zstyle :notes:widget:preview enabled yes

eval "$($HOME/.local/bin/sheldon --home $HOME --config-dir $HOME/.sheldon --data-dir $HOME/.sheldon source)"
