# Tricks

Some tricks to make things work

## Wayland native apps
`--enable-features=UseOzonePlatform --ozone-platform=wayland`

## Obsidian fix
Change electron to electron20 in /usr/bin/obsidian

## Fix: Windows partition read only after using windows
```
sudo rm -rf \$Recycle.Bin
sudo ntfsfix /dev/nvme0n1p3
```

# Commands

## List package installed from AUR
```pacman -Qm```

## List packages with bin versions
```
for pkg in $(pacman -Qmq); do
    base=${pkg%-git}
    if yay -Si "${base}-bin" &>/dev/null; then
        echo "${base}-bin"
    fi
done
```

## List packages nothing depends on
```for pkg in $(pacman -Qq); do [ "$(pactree -r "$pkg" | wc -l)" -eq 1 ] && echo "$pkg"; done```

## List package installed as dependency but not needed anymore
```pacman -Qdtq```
