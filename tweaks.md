# Tricks

Some tricks to make things work

## Wayland native apps

`--enable-features=UseOzonePlatform --ozone-platform=wayland`

## Obsidian fix

Change electron to electron20 in /usr/bin/obsidian

## Fix: Windows partition read only after using windows
sudo rm -rf \$Recycle.Bin
sudo ntfsfix /dev/nvme0n1p3

