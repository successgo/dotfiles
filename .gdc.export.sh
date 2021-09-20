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

# Add home bin
if [[ -d $HOME/bin ]]; then
  export PATH=$PATH:$HOME/bin
fi

# Add composer global vendor bin for linux
if [[ -d $HOME/.config/composer/vendor/bin ]]; then
  export PATH=$PATH:$HOME/.config/composer/vendor/bin
fi
# Add composer global vendor bin for macOS
if [[ -d $HOME/.composer/vendor/bin ]]; then
  export PATH=$PATH:$HOME/.composer/vendor/bin
fi

# Add symfony bin
if [[ -d $HOME/.symfony/bin ]]; then
  export PATH=$PATH:$HOME/.symfony/bin
fi

# Add JDK and it's bin for local install
if [[ -d /opt/jdk ]]; then
  export JAVA_HOME=/opt/jdk
  export PATH=$PATH:$JAVA_HOME/bin
fi

# Add dotnet sdk and it's bin for local install
if [[ -d $HOME/dotnet ]]; then
  export DOTNET_ROOT=$HOME/dotnet
  export PATH=$PATH:$HOME/dotnet
fi
# Add dotnet tools
if [[ -d $HOME/.dotnet/tools ]]; then
  export PATH=$PATH:$HOME/.dotnet/tools
fi

# Add go sdk and it's bin for local install
if [[ -d /usr/local/go/bin ]]; then
  export GO_HOME=/usr/local/go
  export PATH=$PATH:$GO_HOME/bin
fi
# Add go sdk and it's bin for local install
if [[ -d /opt/go/bin ]]; then
  export PATH=$PATH:/opt/go/bin
fi
# Set GOPATH
if [[ -d $HOME/go ]]; then
  export GOPATH=$HOME/go
  export PATH=$PATH:$GOPATH/bin
fi

# Add cargo bin
if [[ -d $HOME/.cargo/bin ]]; then
  export PATH=$PATH:$HOME/.cargo/bin
fi

# Add nodejs bin for local install
if [[ -d /opt/node ]]; then
  export PATH=$PATH:/opt/node/bin
fi

# Overwrite default install for macOS
if [[ `uname -s` = 'Darwin' ]]; then
  if [[ -d /usr/local/opt/curl ]]; then
    export PATH=/usr/local/opt/curl/bin:$PATH
  fi
fi

# jetbrains ide
if [[ -d $HOME/.jetbrains/phpstorm ]]; then
  export PHPSTORM_HOME=$HOME/.jetbrains/phpstorm
  export PATH=$PATH:$PHPSTORM_HOME/bin
fi

# Unset http proxy for sure on bootstrap and use them as need
unset {http_proxy,https_proxy,no_proxy}
unset {HTTP_PROXY,HTTPS_PROXY,NO_PROXY}
