export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"

export COLORTERM=truecolor
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
export SUDO_EDITOR=nvim

# ENV
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway

export POETRY_VIRTUALENVS_IN_PROJECT=true

# android
export PATH="$PATH:`pwd`/flutter/bin"
export ANDROID_SDK_ROOT='/opt/android-sdk'
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin/
export PATH=$PATH:$ANDROID_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/

export PATH=/home/orestesk/Sources/mxe/usr/bin:$PATH
