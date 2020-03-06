# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="<home>/.oh-my-zsh"

# =============================================================================
#                                   Plugins
# =============================================================================
# Check if zplug is installed
#[ ! -d ~/.zplug ] && git clone https://github.com/zplug/zplug ~/.zplug
#source ~/.zplug/init.zsh

# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
    git clone https://github.com/zplug/zplug ~/.zplug
    source ~/.zplug/init.zsh && zplug update
    zplug "zplug/zplug", hook-build:"zplug --self-manage"
fi
source ~/.zplug/init.zsh

# zplug
#zplug 'zplug/zplug', hook-build:'zplug --self-manage'
#zplug 'themes/sorin', from:oh-my-zsh, as:theme

# oh-my-zsh
zplug "robbyrussell/oh-my-zsh", use:"lib/*.zsh"

# Load theme
zplug "mafredri/zsh-async", from:github, use:async.zsh
zplug "romkatv/powerlevel10k", use:powerlevel10k.zsh-theme, from:github, at:next, as:theme
#zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
#zplug "aaronjamesyoung/aaron-zsh-theme", use:aaron.zsh-theme, from:github, as:theme
#zplug "gporrata/bklyn-zsh"

#zplug "themes/spaceship", from:oh-my-zsh, as:theme
#zplug "dracula/zsh", from:github, as:theme
#zplug "geometry-zsh/geometry", from:github, as:theme
#zplug "mafredri/zsh-async", from:github, use:async.zsh
#zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
#zplug "eendroroy/alien", from:github, as:theme

zplug "chrissicool/zsh-256color"
zplug "mollifier/anyframe"

# Miscellaneous commands
zplug "zdharma/zsh-diff-so-fancy"

#zplug "andrewferrier/fzf-z"
zplug "k4rthik/git-cal", as:command
zplug "peco/peco", as:command, from:gh-r, use:"*${(L)$(uname -s)}*amd64*"
zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf, use:"*${(L)$(uname -s)}*amd64*"
zplug "junegunn/fzf", use:"shell/*.zsh"
#zplug "b4b4r07/easy-oneliner", if:"which fzf", on:"junegunn/fzf-bin"

# Enhanced cd
zplug "b4b4r07/enhancd", use:init.sh

# Bookmarks and jump
zplug "jocelynmallon/zshmarks"

# Enhanced dir list with git features
zplug "supercrabtree/k"

# Jump back to parent directory
zplug "tarrasch/zsh-bd"

# Simple zsh calculator
zplug "arzzen/calc.plugin.zsh"

# Directory colors
zplug "seebi/dircolors-solarized", ignore:"*", as:plugin
zplug "pinelibg/dircolors-solarized-zsh"

# ZSH history database
HISTDB_TABULATE_CMD=(sed -e $'s/\x1f/\t/g')
#zplug "larkery/zsh-histdb", use:sqlite-history.zsh, hook-load:"histdb-update-outcome"
zplug "larkery/zsh-histdb", use:"{sqlite-history,histdb-interactive}.zsh", hook-load:"histdb-update-outcome"

zplug "zdharma/fast-syntax-highlighting"

zplug "plugins/common-aliase",     from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/copydir",           from:oh-my-zsh
zplug "plugins/copyfile",          from:oh-my-zsh
zplug "plugins/cp",                from:oh-my-zsh
zplug "plugins/dircycle",          from:oh-my-zsh
zplug "plugins/encode64",          from:oh-my-zsh
zplug "plugins/extract",           from:oh-my-zsh
zplug "plugins/history",           from:oh-my-zsh
zplug "plugins/tmux",              from:oh-my-zsh
zplug "plugins/tmuxinator",        from:oh-my-zsh
zplug "plugins/urltools",          from:oh-my-zsh
zplug "plugins/web-search",        from:oh-my-zsh
zplug "plugins/z",                 from:oh-my-zsh
zplug "plugins/fancy-ctrl-z",      from:oh-my-zsh

# Supports oh-my-zsh plugins and the like
if [[ $OSTYPE = (linux)* ]]; then
    zplug "plugins/archlinux",     from:oh-my-zsh, if:"(( $+commands[pacman] ))"
    zplug "plugins/dnf",           from:oh-my-zsh, if:"(( $+commands[dnf] ))"
    zplug "plugins/mock",          from:oh-my-zsh, if:"(( $+commands[mock] ))"
fi

if [[ $OSTYPE = (darwin)* ]]; then
    zplug "lib/clipboard",         from:oh-my-zsh
    zplug "plugins/osx",           from:oh-my-zsh
    zplug "plugins/brew",          from:oh-my-zsh, if:"(( $+commands[brew] ))"
    zplug "plugins/macports",      from:oh-my-zsh, if:"(( $+commands[port] ))"
fi

zplug "plugins/git",               from:oh-my-zsh, if:"(( $+commands[git] ))"
zplug "plugins/golang",            from:oh-my-zsh, if:"(( $+commands[go] ))"
zplug "plugins/svn",               from:oh-my-zsh, if:"(( $+commands[svn] ))"
zplug "plugins/node",              from:oh-my-zsh, if:"(( $+commands[node] ))"
zplug "plugins/npm",               from:oh-my-zsh, if:"(( $+commands[npm] ))"
zplug "plugins/bundler",           from:oh-my-zsh, if:"(( $+commands[bundler] ))"
zplug "plugins/gem",               from:oh-my-zsh, if:"(( $+commands[gem] ))"
zplug "plugins/rvm",               from:oh-my-zsh, if:"(( $+commands[rvm] ))"
zplug "plugins/pip",               from:oh-my-zsh, if:"(( $+commands[pip] ))"
zplug "plugins/sudo",              from:oh-my-zsh, if:"(( $+commands[sudo] ))"
zplug "plugins/gpg-agent",         from:oh-my-zsh, if:"(( $+commands[gpg-agent] ))"
zplug "plugins/systemd",           from:oh-my-zsh, if:"(( $+commands[systemctl] ))"
zplug "plugins/docker",            from:oh-my-zsh, if:"(( $+commands[docker] ))"
zplug "plugins/docker-compose",    from:oh-my-zsh, if:"(( $+commands[docker-compose] ))"
zplug "plugins/terraform",         from:oh-my-zsh, if:"(( $+commands[terraform] ))"
zplug "plugins/vagrant",           from:oh-my-zsh, if:"(( $+commands[vagrant] ))"

#zplug "djui/alias-tips"
zplug "hlissner/zsh-autopair", defer:2
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
# zsh-syntax-highlighting must be loaded after executing compinit command
# and sourcing other plugins
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:3

# Install plugins if there are plugins that have not been installed
if ! zplug check; then
    printf "Install plugins? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

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

#ZLE_RPROMPT_INDENT=0

[ -f ~/.bash_aliases ] && source ~/.bash_aliases
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
