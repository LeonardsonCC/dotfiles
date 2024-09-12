local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "tokyonight_night"
config.colors = {
	background = "black",
}

config.freetype_load_target = "HorizontalLcd"
config.font = wezterm.font_with_fallback({
	{
		family = "MonaspaceNeon Nerd Font",
		harfbuzz_features = { "calt", "liga", "dlig", "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08" },
	},
	"JetBrains Mono",
	"nonicons",
})

config.font_rules = {
	--
	-- Italic (comments)
	--
	{
		intensity = "Normal",
		italic = true,
		font = wezterm.font({
			family = "MonaspaceRadon Nerd Font",
			weight = "ExtraLight",
			stretch = "Normal",
			style = "Normal",
			harfbuzz_features = {
				"calt",
				"liga",
				"dlig",
				"ss01",
				"ss02",
				"ss03",
				"ss04",
				"ss05",
				"ss06",
				"ss07",
				"ss08",
			},
		}),
	},

	--
	-- Bold (highlighting)
	--
	{
		intensity = "Bold",
		italic = false,
		font = wezterm.font({
			family = "MonaspaceKrypton Nerd Font",
			weight = "Light",
			stretch = "Normal",
			style = "Normal",
			harfbuzz_features = {
				"calt",
				"liga",
				"dlig",
				"ss01",
				"ss02",
				"ss03",
				"ss04",
				"ss05",
				"ss06",
				"ss07",
				"ss08",
			},
		}),
	},
}

config.font_size = 10.5
config.line_height = 1.0
config.cell_width = 1.0

-- wayland compatibility is buggy
config.enable_wayland = false

config.window_background_opacity = 0.95

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.enable_tab_bar = false
config.enable_kitty_graphics = true

config.warn_about_missing_glyphs = false

-- config.front_end = "WebGpu"

config.cursor_blink_rate = 0

return config
