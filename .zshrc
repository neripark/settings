# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# ローカルマシンの設定
source ~/.zshrc_local


# macのデフォルトがLibreSSLなので上書き
export PATH="/usr/local/opt/openssl/bin:$PATH"

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
  ruby
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

# `no matches found` 対策
setopt nonomatch

# pyenvさんに~/.pyenvではなく、/usr/local/var/pyenvを使うようにお願いする
export PYENV_ROOT=/usr/local/var/pyenv

# pyenvさんに自動補完機能を提供してもらう
# if command -v pyenv 1>/dev/null 2>&1; then
  # eval "$(pyenv init -)"
# fi

# M1 Mac 構築時に追加
# export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# export PYENV_ROOT="$HOME/.pyenv/shims"
export PATH="$PYENV_ROOT:$PATH"
export PIPENV_PYTHON="$PYENV_ROOT/python"

# export LDFLAGS="-L/opt/homebrew/opt/zlib/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/zlib/lib/pkgconfig"

export LDFLAGS="-L/opt/homebrew/lib"
export CPPFLAGS="-I/opt/homebrew/include"




source $ZSH/oh-my-zsh.sh
# export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="$HOME/Library/Python/2.7/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
eval "$(rbenv init -)"
eval "$(nodenv init -)"

# aliases
alias -g g='cd `ghq list -p | peco`'
alias -g gcode='code `ghq list -p | peco`'
alias -g st='/Applications/SourceTree.app/Contents/Resources/stree'
alias -g gyank='ghq list -p | peco | pbcopy'
alias -g em='/Applications/Emacs.app/Contents/MacOS/Emacs'
alias -g e='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'
alias -g ifcon='ifconfig | grep 192'
alias -g ctags="`brew --prefix`/bin/ctags"
alias -g rbserve="ruby -run -e httpd . -port 2222"
alias -g phpserve="php -S localhost:1111"
alias -g gti="git"


# あとで消す
# mysql
export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"


