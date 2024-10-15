local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "tokyonight_night"
config.colors = {
	background = "black",
}

config.font_size = 10.0
config.line_height = 1.2
config.cell_width = 1.1

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

local workspace_switcher = wezterm.plugin.require("https://github.com/MLFlexer/smart_workspace_switcher.wezterm")
table.insert(config.keys, {
	key = "f",
	mods = "LEADER",
	action = workspace_switcher.switch_workspace(),
})

local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")
tabline.setup({
	options = {
		icons_enabled = false,
		theme = "Catppuccin Mocha",
		color_overrides = {
			tab = {
				active = { bg = "#F078EB", fg = "#060606" },
			},
		},
		section_separators = {
			left = wezterm.nerdfonts.pl_left_hard_divider,
			right = wezterm.nerdfonts.pl_right_hard_divider,
		},
		component_separators = {
			left = wezterm.nerdfonts.pl_left_soft_divider,
			right = wezterm.nerdfonts.pl_right_soft_divider,
		},
		tab_separators = {
			left = wezterm.nerdfonts.pl_left_hard_divider,
			right = wezterm.nerdfonts.pl_right_hard_divider,
		},
	},
	sections = {
		tabline_a = { "mode" },
		tabline_b = { "workspace" },
		tabline_c = { " " },
		tab_active = { "tab_index", { "process", padding = { left = 0, right = 1 } } },
		tab_inactive = { "tab_index", { "process", padding = { left = 0, right = 1 } } },
		tabline_x = { "ram", "cpu" },
		tabline_y = {},
		tabline_z = {},
	},
	extensions = {},
})
-- tabline.apply_to_config(config)

return config
