-- Copyright (c) 2020-2021 shadmansaleh
-- MIT license, see LICENSE for more details.
-- Credit: Zoltan Dalmadi(lightline)
-- LuaFormatter off
local colors = {
	blue = "#569cd6",
	green = "#6a9955",
	purple = "#c586c0",
	red1 = "#d16969",
	yellow = "#dcdcaa",
	orange = "#ce9178",
	-- fg = "#d4d4d4",
	fg = "#4d5a67",
	-- bg     = '#007acc',
	bg = "#8db2d1",
	-- bg     = '#68217a',
	-- bg     = '#252525',
	gray1 = "#5c6370",
	gray2 = "#2c323d",
	gray3 = "#3e4452",

	a_fg = "#babf65",
	a_bg = "#282c34",
}
-- LuaFormatter on
return {
	normal = {
		a = { fg = colors.a_fg, bg = colors.a_bg },
		b = { fg = colors.fg, bg = colors.bg },
		c = { fg = colors.fg, bg = colors.bg },
		z = { fg = "#ffffbe", bg = colors.bg },
	},
	insert = { a = { fg = colors.a_fg, bg = colors.a_bg } },
	visual = { a = { fg = colors.a_fg, bg = colors.a_bg } },
	command = { a = { fg = colors.a_fg, bg = colors.a_bg } },
	replace = { a = { fg = colors.a_fg, bg = colors.a_bg } },
	inactive = {
		a = { fg = colors.fg, bg = colors.bg },
		b = { fg = colors.fg, bg = colors.bg },
		c = { fg = colors.fg, bg = colors.bg },
	},
}
