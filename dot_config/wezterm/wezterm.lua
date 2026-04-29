local wezterm = require('wezterm')
local config = wezterm.config_builder()

-- disable window closing confirmation
config.window_close_confirmation = 'NeverPrompt'

-- matugen generated colorscheme
config.color_scheme = "matugen_theme"

-- font settings
config.font_size = 12
config.font = wezterm.font("JetBrains Mono")

-- appearance
config.initial_cols = 130
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8
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
