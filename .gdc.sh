#!/bin/sh

# Reset system PATH and and other env
if [[ -f ~/.gdc.env.sh ]]; then
  source ~/.gdc.env.sh
fi

# Some handy aliases
if [[ -f ~/.gdc.alias.sh ]]; then
  source ~/.gdc.alias.sh
fi

# Make the world colorful
if [[ -f ~/.gdc.color.sh ]]; then
  source ~/.gdc.color.sh
fi
