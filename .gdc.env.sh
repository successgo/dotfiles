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

# Reset PATH
# for macOS: /usr/local/bin would better be in front of /bin
export PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/sbin:/usr/sbin

# Add user global bin
if [[ -d $HOME/bin ]]; then
  export PATH=$HOME/bin:$PATH
fi

# Add composer global vendor bin for linux
if [[ -d $HOME/.config/composer/vendor/bin ]]; then
  export PATH=$HOME/.config/composer/vendor/bin:$PATH
fi
# Add composer global vendor bin for macOS
if [[ -d $HOME/.composer/vendor/bin ]]; then
  export PATH=$HOME/.composer/vendor/bin:$PATH
fi

# Add symfony bin
if [[ -d $HOME/.symfony/bin ]]; then
  export PATH=$HOME/.symfony/bin:$PATH
fi

# Add dotnet for home
if [[ -d $HOME/dotnet ]]; then
  export DOTNET_ROOT=$HOME/dotnet
  export PATH=$HOME/dotnet:$PATH
fi
# Add dotnet tools
if [[ -d $HOME/.dotnet/tools ]]; then
  export PATH=$HOME/.dotnet/tools:$PATH
fi

# Add go for /usr/local
if [[ -d /usr/local/go/bin ]]; then
  export GO_HOME=/usr/local/go
  export PATH=$GO_HOME/bin:$PATH
fi
# Add go for /opt
if [[ -d /opt/go/bin ]]; then
  export GO_HOME=/opt/go
  export PATH=$GO_HOME/bin:$PATH
fi
# Set GOPATH
if [[ -d $HOME/go ]]; then
  export GOPATH=$HOME/go
  export PATH=$GOPATH/bin:$PATH
fi

# Add cargo
if [[ -d $HOME/.cargo/bin ]]; then
  export PATH=$HOME/.cargo/bin:$PATH
fi

# Add JDK for /opt
if [[ -d /opt/jdk ]]; then
  export JAVA_HOME=/opt/jdk
  export PATH=$JAVA_HOME/bin:$PATH
fi

# Add nodejs for /opt
if [[ -d /opt/node ]]; then
  export PATH=/opt/node/bin:$PATH
fi

# Add jaeger tracing
if [[ -d /usr/loca/jaeger ]]; then
  export PATH=/usr/loca/jaeger:$PATH
fi

# Overwrite default install for macOS
if [[ `uname -s` = 'Darwin' ]]; then
  if [[ -d /usr/local/opt/curl ]]; then
    export PATH=/usr/local/opt/curl/bin:$PATH
  fi
  if [[ -d /usr/local/opt/openjdk ]]; then
    export JAVA_HOME=/usr/local/opt/openjdk
    export PATH=$JAVA_HOME/bin:$PATH
  fi
fi

# Unset http proxy for sure on bootstrap and use them as need
unset {http_proxy,https_proxy,no_proxy}
unset {HTTP_PROXY,HTTPS_PROXY,NO_PROXY}
