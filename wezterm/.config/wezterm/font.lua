local wezterm = require("wezterm")

local setup = function(config)
	config.freetype_load_target = "HorizontalLcd"
	config.font = wezterm.font_with_fallback({
		{
			family = "MonaspaceNeon Nerd Font",
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
end

return {
	setup = setup,
}
