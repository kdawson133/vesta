# If not running interactively, don't do anything!
[[ $- != *i* ]] && return
#
pfetch
# Set Cursor Style
# 0 ==> default
# 1 ==> blinking block (my default)
# 2 ==> steady block
# 3 ==> blinking underdcore
# 4 ==> steady underscore
# 5 ==> blinking bar
# 6 ==> steady bar
echo -ne '\e[1 q'
preexec() {
    echo -ne '\e[1 q'
}

# Update
OS=$(uname)
if [[ $OS == 'Darwin' ]]; then
    alias update="brew update && brew upgrade --greedy"
elif [[ $OS == 'Linux' ]]; then
	DISTRO=$(lsb_release -is)
	if [[ $DISTRO == 'Ubuntu' ]]; then
        alias update="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
    elif [[ $DISTRO == 'Debian' ]]; then
   		alias update="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
    elif [[ $DISTRO == 'Arch' ]]; then
   		alias update="sudo pacman -Syu"
        alias autoremove="sudo pacman -R $(pacman -Qdtq)"
	fi
fi

if [[ -f "/opt/homebrew/bin/brew" ]] then
  # If you're using macOS, you'll want this enabled
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [[ -f "/home/linuxbrew/.linuxbrew/bin/brew" ]] then
  # If you're using Linux you'll want this enabled
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"  
fi

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::aws
zinit snippet OMZP::kubectl
zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found

# Load completions
autoload -Uz compinit && compinit

zinit cdreplay -q

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region
bindkey '^[[3~' delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Aliases

# Listing
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias ld='ls -d */'
alias l.='ls -a --color=auto'

# Safety
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Git
alias gst='git status'
alias ga='git add'
alias gau='git add -u'
alias gaa='git add --all'
alias gcm='git commit -m'
alias gcu='git commit -m "updated"'
alias gca='git commit -m "added"'
alias gcd='git commit -m "deleted"'
alias gl='git pull'
alias gp='git push'
alias gi='git init'
alias gc='git clone'
alias gbr='git branch'
alias gco='git checkout'
alias grr='git remote rm'
alias gra='git remote add'
alias glog='git log'
alias grsu='git remote set-url --add --push'
alias gr='git restore'
alias gd='git diff'
alias lg='lazygit'

# Terminal
alias :c="clear"
alias :q="exit"
alias :="clear && cd $HOME"
alias up='cd ..'
alias upup='cd ../..'
alias upupup='cd ../../..'

# TMUX
alias txa='tmux new -s α-alpha'
alias txb='tmux new -s β-beta'
alias txc='tmux new -s γ-gamma'
alias tka='tmux kill-session -t α-alpha'
alias tkb='tmux kill-session -t β-beta'
alias tkc='tmux kill-session -t γ-gamma'

# Misc 
alias vim='nvim'

# Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"
eval "$(pyenv init -)"
