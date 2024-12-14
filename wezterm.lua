local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Dracula (Official)'
config.default_cwd = '~/dev/gaea-tech/gaea'

config.window_background_opacity = 0.98
config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'

config.font = wezterm.font 'Fira Code'
config.font_size = 12.0

config.tab_bar_at_bottom = true

config.use_fancy_tab_bar = false

config.hide_tab_bar_if_only_one_tab = true

config.keys = {
    {
        key = 'LeftArrow',
        mods = 'OPT',
        action = wezterm.action.SendKey {
            key = 'b',
            mods = 'ALT',
        },
    },
    {
        key = 'RightArrow',
        mods = 'OPT',
        action = wezterm.action.SendKey { 
            key = 'f', 
            mods = 'ALT', 
        },
    },
}
config.window_padding = {
    left = 20,
    right = 20,
    top = 60,
    bottom = 20,
}

return config