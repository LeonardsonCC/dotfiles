local wezterm = require("wezterm")
local config = {}

config.color_scheme = "tokyonight_night"
config.colors = {
	background = "black",
}

config.freetype_load_target = "HorizontalLcd"
config.font = wezterm.font_with_fallback({
	"JetBrains Mono",
	"nonicons",
})

config.font_size = 10
config.line_height = 1.0

config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.integrated_title_button_style = "Gnome"

config.window_background_opacity = 1

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.enable_kitty_graphics = true

-- config.front_end = "OpenGL"

config.cursor_blink_rate = 0

return config
