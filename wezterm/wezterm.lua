local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Gruvbox Material (Gogh)"

config.enable_tab_bar = false

config.font = wezterm.font("Iosevka Term Medium")
config.font_size = 13

config.default_cursor_style = "SteadyBar"
config.cursor_thickness = "1pt"

config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }

config.colors = {
	cursor_bg = "#FFF",
	cursor_fg = "#FFF",
	cursor_border = "#262626",
}

config.force_reverse_video_cursor = true

config.enable_wayland = false

config.window_close_confirmation = "NeverPrompt"

return config
