local gruvy = {
	-- gruvy color base tj
	none = "NONE",
	red = "#fc011a",
	yellow = "#f8fe7a",
	purple = "#b294bb",
	grey = "#4e545c",
	pink = "	#FFB6C1",
	white = "#ffffff",
	comment_grey = "#b0b1b0",
	method_purple = "#B180D7",
	deep_purple = "#5e0088",
	strorageclass_popule = "#aa92cd",
	cambridge_blue = "#81a2be",
	keyword_orange = "#cc6666",
	string_green = "#99cc99",
	constant_orange = "#de935f",
	statement_red = "#c04040",
	function_yellow = "#f8fe7a",
	operator_pink = "#e6b3b3",
	include_cyan = "#8abeb7",
	specialChar_orange = "#a3685a",
	special_purple = "#aa92cd",
	underline_deepblue = "#80a0ff",
	error_red = "#f70067",
	float_bg = "#282c34",
	float_border_fg = "#3e4451",
	float_fg = "#fafafa",
	colorcolumn = "#373c47",
	endofbuffer = "#969896",
	ts_keyword = "#81a2be",
	-- ts_keyword = "#f96859",

	-- lsp
	error = "#f44747",
	warn = "#FFFF00",
	hint = "#00BFFF",
	info = "#00BFFF",

	-- gitsign
	gitsign_change = "#007acc",
	gitsign_add = "#6A9955",
	gitsign_delete = "#F44747",

	-- cmp
	-- cmp_abbrMatch = "#0195F7",
	cmp_abbrMatch = "#f8fe7a",

	-- telescope
	telescope_selection_bg = "#004b72",
	telescope_selection_fg = "#e0e0dd",

	-- nord color
	--16 colors
	nord0_gui = "#2E3440", -- nord0 in palette
	nord1_gui = "#3B4252", -- nord1 in palette
	nord2_gui = "#434C5E", -- nord2 in palette
	nord3_gui = "#4C566A", -- nord3 in palette
	nord3_gui_bright = "#616E88", -- out of palette
	nord4_gui = "#D8DEE9", -- nord4 in palette

	nord5_gui = "#E5E9F0", -- nord5 in palette
	nord6_gui = "#ECEFF4", -- nord6 in palette

	nord7_gui = "#8FBCBB", -- nord7 in palette
	nord8_gui = "#88C0D0", -- nord8 in palette
	nord9_gui = "#81A1C1", -- nord9 in palette
	nord10_gui = "#5E81AC", -- nord10 in palette
	nord11_gui = "#BF616A", -- nord11 in palette
	nord12_gui = "#D08770", -- nord12 in palette
	nord13_gui = "#EBCB8B", -- nord13 in palette
	nord14_gui = "#A3BE8C", -- nord14 in palette
	nord15_gui = "#B48EAD", -- nord15 in palette
	nord16_gui = "#dcdcaa",
}

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.nord_contrast then
	gruvy.sidebar = gruvy.nord1_gui
	gruvy.float = gruvy.nord1_gui
else
	gruvy.sidebar = gruvy.nord0_gui
	gruvy.float = gruvy.nord0_gui
end

if vim.g.nord_cursorline_transparent then
	gruvy.cursorlinefg = gruvy.nord0_gui
else
	gruvy.cursorlinefg = gruvy.nord1_gui
end

return gruvy
