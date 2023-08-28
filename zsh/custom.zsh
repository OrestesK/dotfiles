if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --hidden'
  #export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

LFCD="/home/orestesk/.config/lf/lfcd.sh"
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi
