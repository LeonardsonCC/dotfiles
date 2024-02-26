local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- config.color_scheme = "IR_Black"
config.color_scheme = "tokyonight_night"
config.colors = {
	background = "black",
}

config.font = wezterm.font_with_fallback({
	"JetBrains Mono",
	"nonicons",
})

config.font_size = 10
config.line_height = 1.1

-- config.enable_tab_bar = false
config.window_decorations = "INTEGRATED_BUTTONS"
config.integrated_title_button_style = "Gnome"

config.window_background_opacity = 0.96

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.freetype_load_target = "HorizontalLcd"

return config
