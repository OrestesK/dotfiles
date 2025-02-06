-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Gruvbox Material (Gogh)"

config.enable_tab_bar = false

config.font = wezterm.font("Iosevka Term Medium")
config.font_size = 13

config.default_cursor_style = "SteadyBar"
config.cursor_thickness = "1pt"

config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }

-- and finally, return the configuration to wezterm
return config
