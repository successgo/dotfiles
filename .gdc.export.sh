#!/bin/sh

# set locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# vi maybe as alias of vim, nvim (neovim) ...
export EDITOR=vi

if [[ -z $TMUX ]]; then
  export TERM=xterm-256color
else
  export TERM=screen-256color
fi

# zsh delay
export KEYTIMEOUT=1

# make man window not too long and not too short
export MANWIDTH=100

# reset path
export PATH=/bin:/usr/bin:/usr/local/bin:/sbin:/usr/sbin:/usr/local/sbin

# home bin
if [[ -d $HOME/bin ]]; then
  export PATH=$PATH:$HOME/bin
fi

# dotnet tools
if [[ -d $HOME/.dotnet/tools ]]; then
  export PATH=$PATH:$HOME/.dotnet/tools
fi

# composer vendor bin
if [[ -d $HOME/.config/composer/vendor/bin ]]; then
  export PATH=$PATH:$HOME/.config/composer/vendor/bin
fi

# composer vendor bin for macOS
if [[ -d $HOME/.composer/vendor/bin ]]; then
  export PATH=$PATH:$HOME/.composer/vendor/bin
fi

# symfony bin
if [[ -d $HOME/.symfony/bin ]]; then
  export PATH=$PATH:$HOME/.symfony/bin
fi

# cargo bin
if [[ -d $HOME/.cargo/bin ]]; then
  export PATH=$PATH:$HOME/.cargo/bin
fi

# nodejs bin
if [[ -d /opt/node ]]; then
  export PATH=$PATH:/opt/node/bin
fi

# JDK bin
if [[ -d /opt/jdk ]]; then
  export JAVA_HOME=/opt/jdk
  export PATH=$PATH:$JAVA_HOME/bin
fi

# go bin
if [[ -d /opt/go ]]; then
  export PATH=$PATH:/opt/go/bin
fi

# GOPATH
if [[ -d $HOME/go ]]; then
  export GOPATH=~/go
  export PATH=$PATH:$GOPATH/bin
fi

# make special love for macOS
if [[ `uname -s` = 'Darwin' ]]; then
  # system has default curl which cannot be overwritten
  if [[ -d /usr/local/opt/curl ]]; then
    CURL_HOME=/usr/local/opt/curl
    export PATH=$CURL_HOME/bin:$PATH
  fi
  # system has default ruby which cannot be overwritten
  if [[ -d /usr/local/opt/ruby ]]; then
    RUBY_HOME=/usr/local/opt/ruby
    export PATH=$RUBY_HOME/bin:$PATH
  fi
  # system has default php which cannot be overwritten
  if [[ -d /usr/local/opt/php ]]; then
    PHP_HOME=/usr/local/opt/php
    export PATH=$PHP_HOME/bin:$PHP_HOME/sbin:$PATH
  fi
  # golang tools
  if [[ -d /usr/local/go ]]; then
    export GO_HOME=/usr/local/go
    export PATH=$GO_HOME/bin:$PATH
  fi
fi

# jetbrains ide
if [[ -d $HOME/.jetbrains/phpstorm ]]; then
  export PHPSTORM_HOME=$HOME/.jetbrains/phpstorm
  export PATH=$PATH:$PHPSTORM_HOME/bin
fi

# unset http proxy for sure on bootstrap and use them as need
unset {http_proxy,https_proxy,no_proxy}
unset {HTTP_PROXY,HTTPS_PROXY,NO_PROXY}
