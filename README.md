# Dotfiles

## Environment

*   **OS:** Arch Linux
*   **Window Manager:** Sway (Wayland)
*   **Terminal:** wezterm
*   **Shell:** zsh
*   **Bar:** waybar

---

## Sway - Tiling Window Manager

<!-- Placeholder for a screenshot of the desktop -->
<!-- ![Sway Desktop](./screenshots/sway.png) -->
### Features:

*   **Modular Configuration:** Main `config` sources separate files for `appbinds`, `rules`, `startup`, `swaybinds`, and `visuals`.
*   **Keyboard-driven UI:**
    *   **Vim-style navigation:** Using `h`, `j`, `k`, `l` for focusing windows.
    *   **Media & Hardware Controls:** Keybindings for volume, screen brightness, and media playback.
    *   **Custom App Launcher:** A simple application launcher is bound to `$mod+d`.
*   **Utility Bindings:**
    *   **Screenshotting:** Full and selective screenshots using `grim`, `slurp`, and `swappy` for annotations.
    *   **Screen Recording:** Simple screen recording initiated with `$mod+Shift+r` using `wf-recorder`.
    *   **Clipboard History:** `clipman` and `fzf`.
    *   **Color Picker:** `$mod+Shift+p`.
*   **Aesthetics:**
    *   No decoration or borders
    *   No desktop
    *   A custom wallpaper is set via the `visual` config.
    *   Windows can be made transparent with `$mod+a`.

---

## Waybar - Status Bar

A sleek and informative status bar that provides at-a-glance information about the system.

<!-- Placeholder for a screenshot of the waybar -->
<!-- ![Waybar](./screenshots/waybar.png) -->

### Features:

*   **Modular Design:** The bar is split into left, center, and right sections.
*   **Custom Styling:** Uses custom CSS for a clean, dark theme with powerline-style arrows.
*   **Informative Modules:**
    *   **Sway Workspaces:** Shows active workspaces.
    *   **Clock:** Displays the day, time, and date in separate modules.
    *   **System Tray:** For applications like `kdeconnect`.
    *   **Hardware Info:** Monitors for pulseaudio, network, battery, memory, CPU, disk usage, and screen backlight.

---

## Zsh - The Z Shell

My shell is configured to be powerful, fast, and user-friendly, utilizing `antidote` for plugin management.

### Features:

*   **Plugin Management:** Uses `antidote` to load plugins efficiently.
*   **Prompt:** `powerlevel10k` provides a fast and highly customizable prompt.
*   **Enhanced Functionality:**
    *   `fast-syntax-highlighting`: Provides instant syntax highlighting.
    *   `zsh-autosuggestions`: Fish-like autosuggestions as you type.
    *   `zsh-history-substring-search`: Allows searching through history with partial matches.
*   **Custom Aliases & Functions:**
    *   Includes aliases for `nvim`, `lazygit`, and more.
    *   `lfcd` function allows `lf` to change the shell's directory on exit.

---

## Wezterm - Terminal Emulator

A modern, GPU-accelerated terminal emulator configured in Lua.

### Features:

*   **Theme:** Uses the "Gruvbox Material" color scheme.
*   **Font:** "Iosevka Term Medium" for clear, readable text.
*   **Minimal UI:** The tab bar is hidden when only one tab is open.
*   **Custom Keybindings:**
    *   `CTRL+;` and `CTRL+'` to switch between tabs.
    *   `CTRL+]` to spawn a new tab.
    *   `CTRL+[` to close the current tab without confirmation.

---

## lf - Terminal File Manager

A fast, terminal-based file manager with custom scripts and keybindings.

### Features:

*   **Vim-like Keybindings:** Intuitive keyboard navigation.
*   **File Previews:** A powerful `previewer` script that can display:
    *   Images in the terminal using `chafa`.
    *   Syntax-highlighted code using `bat`.
    *   PDFs, videos, and archives as thumbnails.
*   **Custom Mappings:**
    *   `<enter>` to execute shell commands.
    *   `o` to open files with `mimeopen`.
    *   `<delete>` to remove files.

---

## wlogout - Wayland Logout Menu

A simple, icon-based logout menu with custom styling.

<!-- Placeholder for a screenshot of the wlogout menu -->
<!-- ![wlogout](./screenshots/wlogout.png) -->

### Features:

*   **Graphical Menu:** Provides buttons for lock, hibernate, logout, shutdown, suspend, and reboot.
*   **Custom Theme:** Styled with CSS for a dark, clean look that matches the rest of the desktop environment.
*   **Keybindings:** Each option is mapped to a key for quick access.

---

## Other Configurations

*   **[easyeffects](./easyeffects):** Audio presets for PipeWire, including a "Music" preset with a convolver for balanced audio.
*   **[mako](./mako):** A lightweight notification daemon with a simple default timeout configuration.
*   **[mpv](./mpv):** Custom keybindings for volume control (`j`/`k`) and seeking (`h`/`l`).
