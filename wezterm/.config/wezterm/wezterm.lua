local wezterm = require 'wezterm';
return {
  default_prog = {"fish"},

  font = wezterm.font("Victor Mono", {weight="Medium"}),
  font_size = 11,

  color_scheme = "Gruvbox Dark",
  window_background_opacity = 0.9,
}
