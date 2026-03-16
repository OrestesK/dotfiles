# Scripts

System scripts for ThinkPad X1 Carbon Gen 13 running Arch/Sway.

## Setup

Symlink everything to system locations:

```bash
# thinkpad-power (root-owned targets)
sudo ln -sf ~/.config/scripts/thinkpad-power/thinkpad-profile-hold /usr/local/bin/thinkpad-profile-hold
sudo ln -sf ~/.config/scripts/thinkpad-power/thinkpad-profile-watch /usr/local/bin/thinkpad-profile-watch
sudo ln -sf ~/.config/scripts/thinkpad-power/99-thinkpad-profile.rules /etc/udev/rules.d/99-thinkpad-profile.rules
sudo ln -sf ~/.config/scripts/thinkpad-power/99-thinkpad-mute-led.rules /etc/udev/rules.d/99-thinkpad-mute-led.rules
sudo udevadm control --reload-rules

# user scripts (~/.local/bin)
ln -sf ~/.config/scripts/mute-led-sync ~/.local/bin/mute-led-sync
ln -sf ~/.config/scripts/screen-record ~/.local/bin/screen-record
ln -sf ~/.config/scripts/waybar-battery-profile ~/.local/bin/waybar-battery-profile

# lock (root-owned target)
sudo ln -sf ~/.config/scripts/lock.sh /usr/local/bin/lock.sh

# makepkg config
ln -sf ~/.config/scripts/makepkg.conf ~/.makepkg.conf
```

Enable systemd user services:

```bash
systemctl --user enable --now mute-led-sync.service
systemctl --user enable --now thinkpad-profile-watch.service
```

### Dependencies

- `inotify-tools` — used by `thinkpad-profile-watch` to monitor sysfs
- `tlp` — power management (configured in `/etc/tlp.conf`)
- `wf-recorder`, `slurp`, `ffmpeg` — used by `screen-record`
- `swaylock-effects` — used by `lock.sh`

## thinkpad-power/

Scripts and udev rules for ThinkPad power profile management. Prevents firmware from resetting the platform profile on AC plug/unplug and syncs Fn+L/M/H profile changes with TLP.

- **thinkpad-profile-hold** — re-applies saved profile on AC events (triggered by udev)
- **thinkpad-profile-watch** — watches for Fn key profile changes, syncs TLP and waybar (systemd user service)
- **99-thinkpad-profile.rules** — udev rule firing `thinkpad-profile-hold` on power supply events
- **99-thinkpad-mute-led.rules** — udev rule exposing mute LED to userspace control

## Top-level

- **lock.sh** — swaylock with blur and gruvbox colors
- **mute-led-sync** — syncs ThinkPad mute LED with PipeWire mute state (systemd user service)
- **screen-record** — toggle screen recording with wf-recorder, saves to `~/Recordings` and copies to clipboard
- **waybar-battery-profile** — waybar custom module showing battery %, charge time, and current power profile [L/M/H]
- **makepkg.conf** — Arch package build config (parallel compilation, tmpfs build dir, zstd multithreading)
