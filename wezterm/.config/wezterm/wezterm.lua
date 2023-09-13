local wezterm = require("wezterm")
local config = {}

config.color_scheme = "tokyonight_night"

config.font = wezterm.font("Noto Mono Nerd Font")
config.font_size = 11

config.use_fancy_tab_bar = true
config.window_decorations = "INTEGRATED_BUTTONS"
config.integrated_title_button_style = "Gnome"

config.window_background_opacity = 0.95

return config
