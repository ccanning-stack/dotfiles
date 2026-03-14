export PATH="/opt/homebrew/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

PROMPT="%B%F{110}%~%f%b %F{223}$%f "

plugins=(git)

source $ZSH/oh-my-zsh.sh

export TERM="xterm-256color"
export COLORTERM="truecolor"

alias n='/opt/homebrew/bin/nvim'
alias st='git status'
alias cp='cp -vi'
alias rm='rm -i'
alias mv='mv -i' 

export MANPAGER='nvim +Man!'

export CC=/opt/homebrew/bin/gcc-15
export CXX=/opt/homebrew/bin/g++-15
