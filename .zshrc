if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
ZSH_THEME="powerlevel10k/powerlevel10k"

export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"

zshaddhistory() { whence ${${(z)1}[1]} >| /dev/null || return 1 }

setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt histignorealldups

bindkey '       ' autosuggest-accept # auto-complete
bindkey -s '^f' 'lfcd\n'  # lf 

alias n="nvim" # neovim
alias update="sudo pacman -Syu" # udate packages
alias fz='xdg-open "$(fzf)"' # open fzf result with default app

export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
export SUDO_EDITOR=nvim

# ENV
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway

# android
export PATH="$PATH:`pwd`/flutter/bin"
export ANDROID_SDK_ROOT='/opt/android-sdk'
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin/
export PATH=$PATH:$ANDROID_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# zstyle ':omz:update' mode disabled  # disable automatic updates

# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(
    git
    zsh-autosuggestions #zsh suggestions
    sudo # Esc 2x to prepend sudo
    copyfile
    vi-mode # vim keybinds in terminal
    history
)

source $ZSH/oh-my-zsh.sh

eval "$(zoxide init zsh)"

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  #export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

LFCD="/home/orestesk/.config/lf/lfcd.sh"
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export MANPATH="/usr/local/man:$MANPATH"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
