# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions)

source "$ZSH/oh-my-zsh.sh"


# History
HISTFILE="$HOME/.histfile"
HISTSIZE=10000
SAVEHIST=10000

bindkey -v


# Completion
autoload -Uz compinit
compinit


# Environment
export EDITOR="nvim"
export MANPAGER="less -R"
export MANROFFOPT="-c"

export GOPATH="$HOME/go"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$HOME/.local/bin"


# Aliases
alias kctl="kubectl"
alias cat="bat"
alias vim="nvim"
alias help="run-help"


# Less colors
export LESS_TERMCAP_mb=$'\e[1;31m'
export LESS_TERMCAP_md=$'\e[1;34m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[1;44;37m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;32m'


# Zsh plugins installed separately
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
# source "$HOME/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh"

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20


# History substring search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down'


# fzf
source /usr/share/fzf/shell/key-bindings.zsh


# Kubernetes completion
source <(kubectl completion zsh)


# Terraform completion
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

let'
# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

