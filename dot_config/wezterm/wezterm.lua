local wezterm = require 'wezterm'

local config = wezterm.config_builder()
config.automatically_reload_config = true
config.font_size = 10.0
config.use_ime = true
config.color_scheme = 'nightfox'
config.enable_tab_bar = false
config.window_background_opacity = 0.85

-- config.window_padding = {
--   left = '0',
  -- right = '0',
  -- top = '0',
--   bottom = '0',
-- }

config.font = wezterm.font(
  'Hack Nerd Font',
  { weight = "Bold" }
)

return config
