local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "tokyonight_night"
config.colors = {
	background = "black",
}

config.font_size = 10.2
config.line_height = 1.0
config.cell_width = 1.0

-- wayland compatibility is buggy
config.enable_wayland = false

config.window_background_opacity = 0.95

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false
config.enable_tab_bar = true
config.tab_max_width = 70

config.enable_kitty_graphics = true

config.warn_about_missing_glyphs = false

-- config.front_end = "WebGpu"

config.cursor_blink_rate = 0

-- Start maximized
wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

local mappings = require("mappings")
mappings.setup(config)

local font = require("font")
font.setup(config)

return config
