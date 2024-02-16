local wezterm = require("wezterm")
local config = {}

-- config.color_scheme = "IR_Black"
config.color_scheme = "tokyonight_night"
config.colors = {
	background = "black",
}

config.font = wezterm.font("MonaspiceNe Nerd Font Mono")
config.font_size = 10
config.line_height = 1.3

config.enable_tab_bar = false
config.window_decorations = "INTEGRATED_BUTTONS"
config.integrated_title_button_style = "Gnome"

config.window_background_opacity = 0.96

return config
