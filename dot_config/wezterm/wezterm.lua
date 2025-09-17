-----------------------------------------------------
local wezterm = require("wezterm")

-----------------------------------------------------
-- start of the config block
local cfg = wezterm.config_builder()

-----------------------------------------------------
-- font settings
cfg.font = wezterm.font("Fira Code Nerd Font Mono")
cfg.font_size = 13

-----------------------------------------------------
-- appearance settings
cfg.window_decorations = "NONE"
cfg.use_fancy_tab_bar = true
cfg.tab_bar_at_bottom = true
cfg.hide_tab_bar_if_only_one_tab = true
cfg.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-----------------------------------------------------
-- misc settings
cfg.max_fps = 120
cfg.window_close_confirmation = "NeverPrompt"
-- cfg.prefer_egl = true

return cfg
