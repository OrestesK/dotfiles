local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Gruvbox Material (Gogh)"

-- config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.font = wezterm.font("Iosevka Term Medium")
config.font_size = 13

config.default_cursor_style = "SteadyBar"
config.cursor_thickness = "1pt"

config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }

config.colors = {
	cursor_bg = "#FFF",
	cursor_fg = "#000000",
	cursor_border = "#FFF",
}

config.force_reverse_video_cursor = true

config.enable_wayland = false
-- config.enable_wayland = true
config.use_fancy_tab_bar = false

config.window_close_confirmation = "NeverPrompt"

config.keys = {
	{
		key = ";",
		mods = "CTRL",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		key = "'",
		mods = "CTRL",
		action = wezterm.action.ActivateTabRelative(1),
	},
	{
		key = "]",
		mods = "CTRL",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "[",
		mods = "CTRL",
		action = wezterm.action.CloseCurrentTab({ confirm = false }),
	},
}

return config
