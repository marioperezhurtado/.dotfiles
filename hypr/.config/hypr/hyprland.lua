-- =========================
-- Variables
-- =========================
local mainMod = "ALT"
local terminal = "kitty"
local fileManager = "dolphin"
local menu = "rofi -show drun"
local browser = "helium-browser"


-- =========================
-- Environment
-- =========================
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")


-- =========================
-- Monitors
-- =========================
hl.monitor({ output = "HDMI-A-1", mode = "preferred", position = "0x0", scale = 1 })
hl.monitor({ output = "eDP-1", mode = "preferred", position = "auto", scale = 1.5 })

for i = 1, 9 do
  hl.workspace_rule({ workspace = tostring(i), monitor = "HDMI-A-1" })
end

-- =========================
-- Keybindings
-- =========================

-- Kill active window
hl.bind(mainMod .. " + Q", hl.dsp.window.close())

-- Open terminal
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))

-- Open file manager
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))

-- Open menu
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(menu))

-- Open browser
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))

-- Open clipboard history
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("cliphist list | rofi -dmenu | cliphist"))

-- Open screenshot editor for selected area
hl.bind(mainMod .. " + S",
  hl.dsp.exec_cmd([[grim -g "$(slurp)" - | satty --filename - --fullscreen --copy-command wl-copy]]))

-- Open screenshot editor for fullscreen
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd([[grim - | satty --filename - --fullscreen --copy-command wl-copy]]))

-- Fullscreen
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))

-- Move focus
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "d" }))

-- Move windows
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "l" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "r" }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "u" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "d" }))

-- Switch workspaces
for i = 1, 9 do
  hl.bind(mainMod .. " + " .. i, hl.dsp.focus({ workspace = i }))
end

-- Move active window to workspace
for i = 1, 9 do
  hl.bind(mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end


-- =========================
-- Startup applications
-- =========================

hl.on("hyprland.start", function()
  -- Authentication agent
  hl.exec_cmd("systemctl --user start hyprpolkitagent")

  -- Notifications
  hl.exec_cmd("mako")

  -- Clipboard
  hl.exec_cmd("wl-paste --type text --watch cliphist store")
  hl.exec_cmd("wl-paste --type image --watch cliphist store")
  hl.exec_cmd("wl-clip-persist --clipboard regular")

  -- Status bar
  hl.exec_cmd("waybar")

  -- Wallpaper
  hl.exec_cmd("swaybg -i ~/Downloads/wallpaper.jpg -m fill")

  -- Bluetooth
  hl.exec_cmd("blueman-applet")

  -- Network
  hl.exec_cmd("nm-applet --indicator")
end)


-- =========================
-- Visuals
-- =========================

hl.config({
  general = {
    gaps_in = 0,
    gaps_out = 0,
    border_size = 1,
    col = {
      active_border = "rgb(4c7899)",
      inactive_border = "rgb(333333)",
    },
  },

  decoration = {
    rounding = 0,
  },

  animations = {
    enabled = false,
  },

  cursor = {
    no_warps = true,
  },
})
