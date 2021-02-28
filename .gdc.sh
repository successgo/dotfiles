#!/bin/sh
#
# Disclaim: This is my own (I am gdc) shell scripts entry, so please use at own risk!
#

# we need PATH works great and make other env var settings
if [[ -f ~/.gdc.export.sh ]]; then
  source ~/.gdc.export.sh
fi

# some useful aliases
if [[ -f ~/.gdc.alias.sh ]]; then
  source ~/.gdc.alias.sh
fi

# some useful color settings, especially for man, ls ...
if [[ -f ~/.gdc.color.sh ]]; then
  source ~/.gdc.color.sh
fi
