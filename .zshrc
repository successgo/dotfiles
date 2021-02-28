# Simplify according to my own need and
# please see https://github.com/ohmyzsh/ohmyzsh/blob/master/templates/zshrc.zsh-template
export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="false"
DISABLE_UNTRACKED_FILES_DIRTY="false"
plugins=(kubectl minikube)
source $ZSH/oh-my-zsh.sh

# Have a nice day!
# Enjoy zsh!
# Add your own other settings below!

# load my own (gdc's) shell script entry
[ -f ~/.gdc.sh ] && source ~/.gdc.sh

# load fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
