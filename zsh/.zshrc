# root of oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

# more zsh themes on: https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="jaco"

# use the custom folder under version controlled dotfiles
ZSH_CUSTOM=${HOME}/dotfiles/zsh/custom

plugins=(git git-extras brew osx encode64 mvn screen textmate urltools tmux web-search wd zsh-syntax-highlighting)

# A fish-like highlighter: github.com/zsh-users/zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)

source $ZSH/oh-my-zsh.sh

# ad-hoc PATH and environment variables settings per machine
if [ -e ${HOME}/.my-env-vars ]; then
    source ${HOME}/.my-env-vars
fi
