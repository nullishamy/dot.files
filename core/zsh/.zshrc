# We have to use $HOME because ~ doesnt expand with omz parsing
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="philips"
HIST_STAMPS="mm/dd/yyyy"


plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  archlinux
)

source $ZSH/oh-my-zsh.sh

export NVM_PATH="~/.nvm"
export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8

function vpn() {
    doas protonvpn connect --cc UK -p udp
}

export GOPATH=~/go
export GOBIN=~/go/bin

path+=("~/.local/bin")
path+=($GOBIN)

export PATH
export GPG_TTY=$(tty)

alias py=python
alias nv=neovide

source /usr/share/nvm/init-nvm.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

owofetch
