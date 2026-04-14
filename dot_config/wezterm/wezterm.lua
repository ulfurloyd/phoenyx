local wezterm = require('wezterm')
local config = wezterm.config_builder()

-- matugen generated colorscheme
config.color_scheme = "matugen_theme"

-- font settings
config.font_size = 12
config.font = wezterm.font("JetBrains Mono")

-- appearance
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = 2,
	right = 0,
	top = 2,
	bottom = 0,
}

-- misc settings
config.max_fps = 120

return config
