#!/bin/sh
#
# Disclaim: This is my own (gdc) shell scripts entry, please use this at your own risk!
#

# Reset system PATH and and more, plus other env settings
if [[ -f ~/.gdc.env.sh ]]; then
  source ~/.gdc.env.sh
fi

# Useful aliases
if [[ -f ~/.gdc.alias.sh ]]; then
  source ~/.gdc.alias.sh
fi

# Useful color settings, especially for man, ls ...
if [[ -f ~/.gdc.color.sh ]]; then
  source ~/.gdc.color.sh
fi
