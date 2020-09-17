# =============================================================================
#                                 Completions
# =============================================================================
#zstyle ':completion:' completer _complete _match _approximate
#zstyle ':completion:' group-name ''
## Color completion for some items.
##zstyle ':completion:' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:' matcher-list 'm:{a-z}={A-Z}'
#zstyle ':completion:' use-cache true
#zstyle ':completion:' verbose yes
#zstyle ':completion:*:default' menu select=2
#zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'
#zstyle ':completion:*:options' description 'yes'

zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion

# case-insensitive (uppercase from lowercase) completion
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# process completion
#zstyle ':completion:*:processes' command 'ps -au$USER'
#zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=36=31"

# zstyle
zstyle ':completion:*' completer _expand _complete _ignored _approximate
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*:descriptions' format '%U%F{yellow}%d%f%u'
#zstyle ':completion:*:*:git:*' script ~/.git-completion.sh

zstyle ':completion:*' rehash true
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''

# case-insensitive (all), partial-word and then substring completion
zstyle ":completion:*" matcher-list \
    "m:{a-zA-Z}={A-Za-z}" \
    "r:|[._-]=* r:|=*" \
    "l:|=* r:|=*"

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:default' list-colors "${(s.:.)LS_COLORS}"

