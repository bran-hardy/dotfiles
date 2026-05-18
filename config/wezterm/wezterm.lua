local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.font_size = 12.0

config.colors = {
    background = '#0f1417',
    foreground = '#dfe3e7',
    cursor_bg = '#8ecff2',
    cursor_fg = '#0f1417',
    cursor_border = '#8ecff2',
    selection_bg = '#004d68',
    selection_fg = '#c2e8ff',

    ansi = {
        '#1d1d1d', '#cc6666', '#99cc99', '#f0c674',
        '#81a2be', '#b294bb', '#8abeb7', '#c5c8c6',
    },
    brights = {
        '#666666', '#d54e53', '#b9ca4a', '#e7c547',
        '#7aa6da', '#c397d8', '#70c0b1', '#eaeaea',
    },
}

config.window_background_opacity = 0.75
config.window_decorations = 'NONE'
config.window_padding = {
    left = 24, right = 24, top = 24, bottom = 24,
}

config.enable_tab_bar = false
config.scrollback_lines = 10000
config.use_fancy_tab_bar = false
config.audible_bell = 'Disabled'

config.enable_wayland = false

return config
