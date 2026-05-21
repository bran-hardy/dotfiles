-- Keybinds

local mod         = "SUPER"
local terminal    = "wezterm"
local fileManager = ""
local browser     = "firefox"
local launcher    = "rofi -show drun"

-- Application launcher
hl.bind(mod .. " + Q", hl.dsp.exec_cmd(terminal .. " start"))
hl.bind(mod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mod .. " + R", hl.dsp.exec_cmd(launcher))
hl.bind(mod .. " + A", hl.dsp.exec_cmd("rofi -show window"))

-- Window managment
hl.bind(mod .. " + C", hl.dsp.window.close())
hl.bind(mod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mod .. " + F", hl.dsp.window.fullscreen())
--hl.bind(mod .. " + J",		hl.dsp.layout_msg("togglesplit"))

hl.bind(mod .. " + X", hl.dsp.exec_cmd("pkill waybar && waybar &"))

-- Session management
hl.bind(mod .. " + SHIFT + E", hl.dsp.exit())
hl.bind(mod .. " + M", hl.dsp.exec_cmd("wlogout"))

-- Focus
hl.bind(mod .. " + left", hl.dsp.focus({ direction = "l" }))
hl.bind(mod .. " + right", hl.dsp.focus({ direction = "r" }))
hl.bind(mod .. " + up", hl.dsp.focus({ direction = "u" }))
hl.bind(mod .. " + down", hl.dsp.focus({ direction = "d" }))

-- Workspaces
for i = 1, 9 do
    hl.bind(mod .. " + " .. i, hl.dsp.focus({ workspace = i }))
    hl.bind(mod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i, follow = true }))
end

-- Mouse
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize())

-- Media keys
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s 5%+"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 5%-"))
