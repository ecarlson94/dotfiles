# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Terraform
alias tfa="terraform apply"
alias tfaa="terraform apply -auto-approve"
alias tfd="terraform destroy"
alias tfda="terraform destroy -auto-approve"
alias tfi="terraform init"
alias tfp="terraform plan"
alias tfr="terraform refresh"
alias tfs="terraform show"
alias tfsl="terraform state list"
alias tfsr="terraform state remove"
alias tft="terraform taint"
alias tfv="terraform version"

# Terragrunt
alias tga="terragrunt apply"
alias tgaa="terragrunt apply -auto-approve"
alias tgd="terragrunt destroy"
alias tgda="terragrunt destroy -auto-approve"
alias tgi="terragrunt init"
alias tgp="terragrunt plan"
alias tgr="terragrunt refresh"
alias tgs="terragrunt show"
alias tgsl="terragrunt state list"
alias tgsr="terragrunt state remove"
alias tgt="terragrunt taint"
alias tgv="terragrunt version"

# Arduino
alias arduino="arduino-cli"
alias sketch="arduino sketch"
alias sketchn="sketch new"

# NPM
alias nr="npm run"
alias wp="nr webpack"
alias wpw="nr webwatch"

# VIM
alias vimdiff="nvim -d"
alias vi="nvim"
alias vim="nvim"


# code
alias userspace="code ~/.userspace"

# docker
alias docker="sudo $(which docker)"

# dotnet
alias db="dotnet build"
alias dr="db && dotnet run"

# basic
alias grep="grep --color=auto"
alias ls="ls --color=always -GF"
alias gcsmg="gcmsg"
alias loc="scc"
alias rmf="rm -f"
