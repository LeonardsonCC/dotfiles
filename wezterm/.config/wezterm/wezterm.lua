local wezterm = require 'wezterm';
return {
  default_prog = {"fish"},

  font = wezterm.font("mononoki", {weight="Regular"}),
  font_size = 11,

  color_scheme = "Gruvbox Dark",
  window_background_opacity = 0.9,
}
