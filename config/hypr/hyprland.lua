
require("monitors")
require("keybinds")

local terminal = "wezterm"
local browser = "firefox"
local launcher = "walker"

hl.env("XCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "Adwaita")
hl.env("MOZ_ENABLE_WAYLAND", "1")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")

hl.on("hyprland.start", function()
  hl.exec_cmd("walker --gapplication-service")
end)

hl.config({
  general = {
    gaps_in	= 4,
    gaps_out	= 8,
    border_size	= 2,
    col = {
      active_border	= { colors = { "rgba(8ecff2ee)", "rgba(c2e8ffee)" }, angle = 45 },
      inactive_border	= "rgba(41484daa)",
    },
    layout = "dwindle",
  },
  
  decoration = {
    rounding = 8,
    blur = {
      enabled = true,
      size    = 6,
      passes  = 2,
    },
    shadow = {
      enabled = true,
      range = 8,
      render_power = 3,
      color = 0x800f1417,
    },
  },

  dwindle = {
    preserve_split = false,
  },

  misc = {
    disable_hyprland_logo = true,
    disable_splash_rendering = true,
    force_default_wallpaper = 0,
  },

  input = {
    kb_layout = "us",
    follow_mouse = 1,
    sensitivity = 0,
    touchpad = {
      natural_scroll = true,
      tap_to_click = true,
    },
  },
})

hl.curve("easeOutQuint", { type = "bezier", points = { { 0.22, 1 }, { 0.36, 1 } } })

hl.animation({ leaf = "global",		enabled = true, speed = 10,	bezier = "default" })
hl.animation({ leaf = "windows",	enabled = true, speed = 4,	bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsOut",	enabled = true, speed = 4,	bezier = "easeOutQuint" })
hl.animation({ leaf = "border",		enabled = true, speed = 6,	bezier = "default" })
hl.animation({ leaf = "fade",		enabled = true, speed = 6,	bezier = "default" })
hl.animation({ leaf = "workspaces",	enabled = true, speed = 4,	bezier = "easeOutQuint" })
