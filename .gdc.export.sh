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

# we need reset PATH and init
unset PATH
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin

# some useful binary tools and shell scripts at $HOME/.bin
if [[ -d $HOME/.bin ]]; then
  export PATH=$HOME/.bin:$PATH
fi

# composer vendor bin
if [[ -d $HOME/.config/composer/vendor/bin ]]; then
  export PATH=$HOME/.config/composer/vendor/bin:$PATH
fi

# composer macOS
if [[ -d $HOME/.composer/vendor/bin ]]; then
  export PATH=$HOME/.composer/vendor/bin:$PATH
fi

# symfony bin
if [[ -d $HOME/.symfony/bin ]]; then
  export PATH=$HOME/.symfony/bin:$PATH
fi

# cargo bin
if [[ -d $HOME/.cargo/bin ]]; then
  export PATH=$HOME/.cargo/bin:$PATH
fi

# nodejs bin
if [[ -d /opt/node ]]; then
  export PATH=/opt/node/bin:$PATH
fi

# JDK bin
if [[ -d /opt/jdk ]]; then
  export JAVA_HOME=/opt/jdk
  export PATH=$JAVA_HOME/bin:$PATH
fi

# go bin
if [[ -d /opt/go ]]; then
  export PATH=/opt/go/bin:$PATH
fi

# GOPATH
if [[ -d ~/go ]]; then
  export GOPATH=~/go
  export PATH=$GOPATH/bin:$PATH
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

# unset http proxy for sure on bootstrap and use them as need
unset {http_proxy,https_proxy,no_proxy}
unset {HTTP_PROXY,HTTPS_PROXY,NO_PROXY}
