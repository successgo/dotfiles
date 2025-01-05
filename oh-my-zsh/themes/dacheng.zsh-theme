# forked from: robbyrussell
# NEWLINE=$'\n'
# PROMPT="%{$fg[green]%}%n@%m %{$fg[cyan]%}%~ ${NEWLINE}%(?:%{$fg_bold[white]%}%1{$%}:%{$fg_bold[red]%}%1{$%})%{$reset_color%} "

# just $ prompt for simplification
PROMPT="%c %(?:%{$fg_bold[green]%}%1{$%}:%{$fg_bold[red]%}%1{$%})%{$reset_color%} "

# Tips of the placeholders:
# %c just current directory
# %~ full path but replace $HOME to '~' for short
# %d full path
# %n username
# %m hostname
