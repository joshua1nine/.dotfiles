-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.native_macos_fullscreen_mode = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
-- config.window_background_image = "/Users/joshuamichael/Pictures/42271.jpg"
-- config.window_background_opacity = 0.98
-- config.color_scheme = "Catppuccin Mocha"
config.colors = {
	background = "#1A1A1A",
	cursor_bg = "#f8f8f0",
}
config.font = wezterm.font_with_fallback({
	{ family = "FiraCode Nerd Font", scale = 1.4, harfbuzz_features = { "calt=0", "clig=0", "liga=0" } },
	-- { family = "Hack Nerd Font", scale = 1.5 },
})
config.window_decorations = "RESIZE"
-- config.window_frame = {
--   font = wezterm.font("Hack Nerd Font"),
--   font_size = 12.0,
-- }

-- Keys
config.keys = {
	-- Create new tmux window
	{
		key = "t",
		mods = "CMD",
		action = wezterm.action.Multiple({
			wezterm.action.SendKey({ key = "s", mods = "CTRL" }),
			wezterm.action.SendKey({ key = "c" }),
		}),
	},

	-- Close tmux window
	{
		key = "w",
		mods = "CMD",
		action = wezterm.action.Multiple({
			wezterm.action.SendKey({ key = "s", mods = "CTRL" }),
			wezterm.action.SendKey({ key = "x" }),
		}),
	},

	-- Navigate between tmux windows
	-- Next
	{
		key = "Tab",
		mods = "CTRL",
		action = wezterm.action.Multiple({
			wezterm.action.SendKey({ key = "s", mods = "CTRL" }),
			wezterm.action.SendKey({ key = "n", mods = "CTRL" }),
		}),
	},
	-- Previous
	{
		key = "Tab",
		mods = "CTRL|SHIFT",
		action = wezterm.action.Multiple({
			wezterm.action.SendKey({ key = "s", mods = "CTRL" }),
			wezterm.action.SendKey({ key = "p", mods = "CTRL" }),
		}),
	},

	-- Navigate between active tmux sessions
	-- Next
	{
		key = "Tab",
		mods = "META",
		action = wezterm.action.Multiple({
			wezterm.action.SendKey({ key = "s", mods = "CTRL" }),
			wezterm.action.SendKey({ key = ")" }),
		}),
	},
	-- Previous
	{
		key = "Tab",
		mods = "META",
		action = wezterm.action.Multiple({
			wezterm.action.SendKey({ key = "s", mods = "CTRL" }),
			wezterm.action.SendKey({ key = "(" }),
		}),
	},

	-- Navigate by number
	{
		key = "1",
		mods = "CMD",
		action = wezterm.action.Multiple({
			wezterm.action.SendKey({ key = "s", mods = "CTRL" }),
			wezterm.action.SendKey({ key = "1" }),
		}),
	},
	{
		key = "2",
		mods = "CMD",
		action = wezterm.action.Multiple({
			wezterm.action.SendKey({ key = "s", mods = "CTRL" }),
			wezterm.action.SendKey({ key = "2" }),
		}),
	},
	{
		key = "3",
		mods = "CMD",
		action = wezterm.action.Multiple({
			wezterm.action.SendKey({ key = "s", mods = "CTRL" }),
			wezterm.action.SendKey({ key = "3" }),
		}),
	},
	{
		key = "4",
		mods = "CMD",
		action = wezterm.action.Multiple({
			wezterm.action.SendKey({ key = "s", mods = "CTRL" }),
			wezterm.action.SendKey({ key = "4" }),
		}),
	},

	-- Zoom into pane
	{
		key = "m",
		mods = "CMD",
		action = wezterm.action.Multiple({
			wezterm.action.SendKey({ key = "s", mods = "CTRL" }),
			wezterm.action.SendKey({ key = "z" }),
		}),
	},

	-- Create new Vertical pane
	{
		key = "^",
		mods = "CTRL|SHIFT",
		action = wezterm.action.Multiple({
			wezterm.action.SendKey({ key = "s", mods = "CTRL" }),
			wezterm.action.SendKey({ key = '"' }),
		}),
	},

	-- Create new horizontal pane
	{
		key = "%",
		mods = "CTRL|SHIFT",
		action = wezterm.action.Multiple({
			wezterm.action.SendKey({ key = "s", mods = "CTRL" }),
			wezterm.action.SendKey({ key = "%" }),
		}),
	},
}

-- and finally, return the configuration to wezterm
return config
