local wezterm = require("wezterm")

return {
	default_prog = { "zsh" },
	automatically_reload_config = true,
	audible_bell = "Disabled",

	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,

	font = wezterm.font("JetBrains Mono", { weight = "Medium" }),
	font_size = 12,

	color_scheme = "tokyonight",

	-- window_background_image = "/home/leonardson/wallpapers/anime/kurisu_dark.png",
	-- window_background_image_hsb = {
	-- 	brightness = 0.1,
	-- 	hue = 1.0,
	-- 	saturation = 0.7,
	-- },
	colors = {
		background = "black",
	},
	--
	keys = {
		{
			key = "v",
			mods = "CTRL",
			action = wezterm.action.SplitHorizontal({}),
		},
		{
			key = "s",
			mods = "CTRL",
			action = wezterm.action.SplitVertical({}),
		},
	},
}
