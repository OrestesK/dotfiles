export HISTFILE=$HOME/.config/zsh/zsh_history
zshaddhistory() { whence ${${(z)1}[1]} >| /dev/null || return 1 }
export HISTSIZE=10000000
export SAVEHIST=10000000

unsetopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
