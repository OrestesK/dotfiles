export ZP=$HOME/.config/zsh

source '/usr/share/zsh-antidote/antidote.zsh'
antidote load $ZP/zsh_plugins

source $ZP/p10k.zsh
source $ZP/history_config.zsh
source $ZP/binds.zsh
source $ZP/aliases.zsh
source $ZP/exports.zsh
source $ZP/custom.zsh

# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' matcher-list '' '' '' 'l:|=* r:|=*'
setopt auto_menu
setopt auto_cd


eval "$(zoxide init zsh)"

if [ "$(tty)" = "/dev/tty1" ] ; then
    export QT_QPA_PLATFORM=wayland
    export MOZ_ENABLE_WAYLAND=1
    export MOZ_WEBRENDER=1
    export XDG_SESSION_TYPE=wayland
    export XDG_CURRENT_DESKTOP=sway
    exec sway
fi
