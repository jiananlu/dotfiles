# root of oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

# more zsh themes on: https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="jaco"

# use the custom folder under version controlled dotfiles
ZSH_CUSTOM=${HOME}/dotfiles/zsh/custom

plugins=(git git-extras brew osx encode64 mvn screen textmate urltools vagrant web-search wd personal-alias zsh-syntax-highlighting)

# A fish-like highlighter: github.com/zsh-users/zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)

source $ZSH/oh-my-zsh.sh

# tweak the PATH
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=~/bin:/Users/jianan.lu/code/topcoder-archive-parser:$PATH
export PATH=/Users/jianan.lu/redis/redis-2.8.19/src:$PATH

# other environment variables
export P4PORT=ssl:p4proxy.soma.salesforce.com:1999
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
