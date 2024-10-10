# forked from: robbyrussell
NEWLINE=$'\n'
PROMPT="%{$fg[cyan]%}%~${NEWLINE}%(?:%{$fg_bold[green]%}%1{$%}:%{$fg_bold[red]%}%1{$%})%{$reset_color%} "
#PROMPT="%{$fg[cyan]%}%c %(?:%{$fg_bold[green]%}%1{$%}:%{$fg_bold[red]%}%1{$%})%{$reset_color%} "
# Tips of the placeholders:
# %c just current directory
# %~ full path but replace $HOME to '~' for short
# %d full path
# %n username
# %m hostname
