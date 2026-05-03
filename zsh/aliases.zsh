alias n="nvim" # neovim
alias fz='nohup xdg-open "$(fzf)" > /dev/null' # open fzf result with default app
alias lz="lazygit" # lazygit
alias gs="git-spice"

alias venv="source .venv/bin/activate"

alias saveshot='f() { wl-paste --type image/png > $1.png };f'

alias dupe='nohup wezterm start --cwd $PWD >&/dev/null &'

alias flaunch='QT_QPA_PLATFORM=xcb flutter emulators --launch'
