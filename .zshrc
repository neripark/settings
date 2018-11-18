# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bullet-train"

#bullet-train's setting.
#https://github.com/caiogondim/bullet-train.zsh
BULLETTRAIN_PROMPT_ORDER=(
  time
  dir
  nvm
  git
)
BULLETTRAIN_DIR_EXTENDED=2
BULLETTRAIN_DIR_CONTEXT_SHOW=false
BULLETTRAIN_TIME_BG=#333333
BULLETTRAIN_TIME_FG=white
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source ~/.zshrc_local
source $ZSH/oh-my-zsh.sh
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="$HOME/Library/Python/2.7/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
eval "$(rbenv init -)"

# aliases
alias -g ghqcd='cd `ghq list -p | peco`'
alias -g st='/Applications/SourceTree.app/Contents/Resources/stree'
alias -g ghqcp='ghq list -p | peco | pbcopy'
alias -g em='/Applications/Emacs.app/Contents/MacOS/Emacs'
alias -g e='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'
alias -g ifcon='ifconfig | grep 192'
