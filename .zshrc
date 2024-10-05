# see https://github.com/ohmyzsh/ohmyzsh/blob/master/templates/zshrc.zsh-template

export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="dacheng"
DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="false"
DISABLE_UNTRACKED_FILES_DIRTY="false"
plugins=(dotnet)
source $ZSH/oh-my-zsh.sh

# load my own shell script entry
[ -f ~/.gdc.sh ] && source ~/.gdc.sh

# output zsh version
zsh --version

# below are coming from 3rd party:

# load fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
