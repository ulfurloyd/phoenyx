local colors = require("colors.custom")

return {
	max_fps = 120,

	-- cursor
	animation_fps = 120,
	cursor_blink_ease_in = "EaseOut",
	cursor_blink_ease_out = "EaseOut",
	default_cursor_style = "BlinkingBlock",
	cursor_blink_rate = 650,

	-- color scheme
	colors = colors,
	window_background_opacity = 0.9,

	-- scrollbar
	enable_scroll_bar = true,

	-- tab bar
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = false,
	use_fancy_tab_bar = false,
	tab_max_width = 22,
	show_tab_index_in_tab_bar = false,
	switch_to_last_active_tab_when_closing_tab = true,

	-- command palette
	command_palette_fg_color = "#b4befe",
	command_palette_bg_color = "#11111b",
	command_palette_font_size = 14,
	command_palette_rows = 25,

	-- window
	window_padding = {
		left = 0,
		right = 0,
		top = 5,
		bottom = 7.5,
	},
	adjust_window_size_when_changing_font_size = false,
	window_close_confirmation = "NeverPrompt",
	window_frame = {
		active_titlebar_bg = "#090909",
		-- font = fonts.font,
		-- font_size = fonts.font_size,
	},
	-- inactive_pane_hsb = {
	--    saturation = 0.9,
	--    brightness = 0.65,
	-- },
	inactive_pane_hsb = {
		saturation = 1,
		brightness = 1,
	},

	visual_bell = {
		fade_in_function = "EaseIn",
		fade_in_duration_ms = 250,
		fade_out_function = "EaseOut",
		fade_out_duration_ms = 250,
		target = "CursorColor",
	},
}
