# forked from: robbyrussell

PROMPT="%{$fg[green]%}sh %c %(?:%1{$%}:%{$fg[red]%}%1{$%})%{$reset_color%} "

# Placeholders:
# %c just current directory
# %~ full path but replace $HOME to '~' for short
# %d full path
# %n username
# %m hostname
