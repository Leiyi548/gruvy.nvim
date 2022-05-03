local gruvy = require("gruvy.colors")
local theme = {}

theme.loadSyntax = function()
	-- Syntax highlight groups
	local syntax = {
		Type = { fg = gruvy.purple }, -- int, long, char, etc.
		StorageClass = { fg = gruvy.purple }, -- static, register, volatile, etc.
		Structure = { fg = gruvy.purple }, -- struct, union, enum, etc.
		Constant = { fg = gruvy.keyword_orange }, -- any constant
		Character = { fg = gruvy.keyword_orange }, -- any character constant: 'c', '\n'
		Number = { fg = gruvy.keyword_orange }, -- a number constant: 5
		Boolean = { fg = gruvy.constant_orange }, -- a boolean constant: TRUE, false
		Float = { fg = gruvy.keyword_orange }, -- a floating point constant: 2.3e10
		Statement = { fg = gruvy.statement_red }, -- any statement
		Label = { fg = gruvy.yellow }, -- case, default, etc.
		Operator = { fg = gruvy.operator_pink }, -- sizeof", "+", "*", etc.
		Exception = { fg = gruvy.statement_red }, -- try, catch, throw
		PreProc = { fg = gruvy.yellow }, -- generic Preprocessor
		Include = { fg = gruvy.include_cyan }, -- preprocessor #include
		Define = { fg = gruvy.include_cyan }, -- preprocessor #define
		Macro = { fg = gruvy.yellow }, -- same as Define
		Typedef = { fg = gruvy.yellow }, -- A typedef
		PreCondit = { fg = gruvy.purple }, -- preprocessor #if, #else, #endif, etc.
		Special = { fg = gruvy.purple }, -- any special symbol
		SpecialChar = { fg = gruvy.specialChar_orange }, -- special character in a constant
		Tag = { fg = gruvy.yellow }, -- you can use CTRL-] on this
		Delimiter = { fg = gruvy.specialChar_orange }, -- character that needs attention like , or .
		SpecialComment = { fg = gruvy.specialChar_orange }, -- special things inside a comment
		Debug = { fg = gruvy.specialChar_orange }, -- debugging statements
		Underlined = { fg = gruvy.underline_deepblue, bg = gruvy.none, style = "underline" }, -- text that stands out, HTML links
		Ignore = { fg = gruvy.bg }, -- left blank, hidden
		Error = { fg = gruvy.error_red, bg = gruvy.none, style = "bold,underline" }, -- any erroneous construct
		Todo = { fg = gruvy.yellow, bg = gruvy.none, style = "bold,italic" }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Conceal = { fg = gruvy.gruvy, bg = gruvy.nord0_gui },

		htmlLink = { fg = gruvy.underline_deepblue, style = "underline" },
		htmlH1 = { fg = gruvy.cambridge_blue, style = "bold" },
		htmlH2 = { fg = gruvy.cambridge_blue, style = "bold" },
		htmlH3 = { fg = gruvy.cambridge_blue, style = "bold" },
		htmlH4 = { fg = gruvy.cambridge_blue, style = "bold" },
		htmlH5 = { fg = gruvy.nord9_gui, style = "bold" },
		markdownH1 = { fg = gruvy.deep_purple, style = "bold" },
		markdownH2 = { fg = gruvy.deep_purple, style = "bold" },
		markdownH3 = { fg = gruvy.deep_purple, style = "bold" },
		markdownH1Delimiter = { fg = gruvy.specialChar_orange },
		markdownH2Delimiter = { fg = gruvy.specialChar_orange },
		markdownH3Delimiter = { fg = gruvy.specialChar_orange },
	}

	-- Italic comments
	if vim.g.nord_italic == false then
		syntax.Comment = { fg = gruvy.nord3_gui_bright } -- normal comments
		syntax.Conditional = { fg = gruvy.nord9_gui } -- normal if, then, else, endif, switch, etc.
		syntax.Function = { fg = gruvy.nord8_gui } -- normal function names
		syntax.Identifier = { fg = gruvy.nord9_gui } -- any variable name
		syntax.Keyword = { fg = gruvy.nord9_gui } -- normal for, do, while, etc.
		syntax.Repeat = { fg = gruvy.nord9_gui } -- normal any other keyword
		syntax.String = { fg = gruvy.nord14_gui } -- any string
	else
		syntax.Comment = { fg = gruvy.nord3_gui_bright, bg = gruvy.none, style = "italic" } -- italic comments
		syntax.Conditional = { fg = gruvy.nord9_gui, bg = gruvy.none, style = "italic" } -- italic if, then, else, endif, switch, etc.
		syntax.Function = { fg = gruvy.nord8_gui, bg = gruvy.none, style = "italic" } -- italic funtion names
		syntax.Identifier = { fg = gruvy.nord9_gui, bg = gruvy.none, style = "italic" } -- any variable name
		syntax.Keyword = { fg = gruvy.nord9_gui, bg = gruvy.none, style = "italic" } -- italic for, do, while, etc.
		syntax.Repeat = { fg = gruvy.nord9_gui, bg = gruvy.none, style = "italic" } -- italic any other keyword
		syntax.String = { fg = gruvy.nord14_gui, bg = gruvy.none, style = "italic" } -- any string
	end

	return syntax
end

theme.loadEditor = function()
	-- Editor highlight groups

	local editor = {
		NormalFloat = { fg = gruvy.nord4_gui, bg = gruvy.float }, -- normal text and background color
		FloatBorder = { fg = gruvy.nord4_gui, bg = gruvy.float }, -- normal text and background color
		ColorColumn = { fg = gruvy.none, bg = gruvy.nord1_gui }, --  used for the columns set with 'colorcolumn'
		Conceal = { fg = gruvy.nord1_gui }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = gruvy.nord4_gui, bg = gruvy.none, style = "reverse" }, -- the character under the cursor
		CursorIM = { fg = gruvy.nord5_gui, bg = gruvy.none, style = "reverse" }, -- like Cursor, but used when in IME mode
		Directory = { fg = gruvy.nord7_gui, bg = gruvy.none }, -- directory names (and other special names in listings)
		DiffAdd = { fg = gruvy.nord14_gui, bg = gruvy.none, style = "reverse" }, -- diff mode: Added line
		DiffChange = { fg = gruvy.nord13_gui, bg = gruvy.none, style = "reverse" }, --  diff mode: Changed line
		DiffDelete = { fg = gruvy.nord11_gui, bg = gruvy.none, style = "reverse" }, -- diff mode: Deleted line
		DiffText = { fg = gruvy.nord15_gui, bg = gruvy.none, style = "reverse" }, -- diff mode: Changed text within a changed line
		EndOfBuffer = { fg = gruvy.nord1_gui },
		ErrorMsg = { fg = gruvy.none },
		Folded = { fg = gruvy.nord3_gui_bright, bg = gruvy.none, style = "italic" },
		FoldColumn = { fg = gruvy.nord7_gui },
		IncSearch = { fg = gruvy.nord6_gui, bg = gruvy.nord10_gui },
		LineNr = { fg = gruvy.nord3_gui_bright },
		CursorLineNr = { fg = gruvy.nord4_gui },
		MatchParen = { fg = gruvy.nord15_gui, bg = gruvy.none, style = "bold" },
		ModeMsg = { fg = gruvy.nord4_gui },
		MoreMsg = { fg = gruvy.nord4_gui },
		NonText = { fg = gruvy.nord1_gui },
		Pmenu = { fg = gruvy.nord4_gui, bg = gruvy.nord2_gui },
		PmenuSel = { fg = gruvy.nord4_gui, bg = gruvy.nord10_gui },
		PmenuSbar = { fg = gruvy.nord4_gui, bg = gruvy.nord2_gui },
		PmenuThumb = { fg = gruvy.nord4_gui, bg = gruvy.nord4_gui },
		Question = { fg = gruvy.nord14_gui },
		QuickFixLine = { fg = gruvy.nord4_gui, bg = gruvy.none, style = "reverse" },
		qfLineNr = { fg = gruvy.nord4_gui, bg = gruvy.none, style = "reverse" },
		Search = { fg = gruvy.nord10_gui, bg = gruvy.nord6_gui, style = "reverse" },
		SpecialKey = { fg = gruvy.nord9_gui },
		SpellBad = { fg = gruvy.nord11_gui, bg = gruvy.none, style = "italic,undercurl" },
		SpellCap = { fg = gruvy.nord7_gui, bg = gruvy.none, style = "italic,undercurl" },
		SpellLocal = { fg = gruvy.nord8_gui, bg = gruvy.none, style = "italic,undercurl" },
		SpellRare = { fg = gruvy.nord9_gui, bg = gruvy.none, style = "italic,undercurl" },
		StatusLine = { fg = gruvy.nord4_gui, bg = gruvy.nord2_gui },
		StatusLineNC = { fg = gruvy.nord4_gui, bg = gruvy.nord1_gui },
		StatusLineTerm = { fg = gruvy.nord4_gui, bg = gruvy.nord2_gui },
		StatusLineTermNC = { fg = gruvy.nord4_gui, bg = gruvy.nord1_gui },
		TabLineFill = { fg = gruvy.nord4_gui, bg = gruvy.none },
		TablineSel = { fg = gruvy.nord1_gui, bg = gruvy.nord9_gui },
		Tabline = { fg = gruvy.nord4_gui, bg = gruvy.nord1_gui },
		Title = { fg = gruvy.nord14_gui, bg = gruvy.none, style = "bold" },
		Visual = { fg = gruvy.none, bg = gruvy.nord2_gui },
		VisualNOS = { fg = gruvy.none, bg = gruvy.nord2_gui },
		WarningMsg = { fg = gruvy.nord15_gui },
		WildMenu = { fg = gruvy.nord12_gui, bg = gruvy.none, style = "bold" },
		CursorColumn = { fg = gruvy.none, bg = gruvy.cursorlinefg },
		CursorLine = { fg = gruvy.none, bg = gruvy.cursorlinefg },
		ToolbarLine = { fg = gruvy.nord4_gui, bg = gruvy.nord1_gui },
		ToolbarButton = { fg = gruvy.nord4_gui, bg = gruvy.none, style = "bold" },
		NormalMode = { fg = gruvy.nord4_gui, bg = gruvy.none, style = "reverse" },
		InsertMode = { fg = gruvy.nord14_gui, bg = gruvy.none, style = "reverse" },
		ReplacelMode = { fg = gruvy.nord11_gui, bg = gruvy.none, style = "reverse" },
		VisualMode = { fg = gruvy.nord9_gui, bg = gruvy.none, style = "reverse" },
		CommandMode = { fg = gruvy.nord4_gui, bg = gruvy.none, style = "reverse" },
		Warnings = { fg = gruvy.nord15_gui },

		healthError = { fg = gruvy.nord11_gui },
		healthSuccess = { fg = gruvy.nord14_gui },
		healthWarning = { fg = gruvy.nord15_gui },

		-- dashboard
		DashboardShortCut = { fg = gruvy.nord7_gui },
		DashboardHeader = { fg = gruvy.nord9_gui },
		DashboardCenter = { fg = gruvy.nord8_gui },
		DashboardFooter = { fg = gruvy.nord14_gui, style = "italic" },

		-- BufferLine
		BufferLineIndicatorSelected = { fg = gruvy.nord0_gui },
		BufferLineFill = { bg = gruvy.nord0_gui },
	}

	-- Options:

	--Set transparent background
	if vim.g.nord_disable_background then
		editor.Normal = { fg = gruvy.nord4_gui, bg = gruvy.none } -- normal text and background color
		editor.SignColumn = { fg = gruvy.nord4_gui, bg = gruvy.none }
	else
		editor.Normal = { fg = gruvy.nord4_gui, bg = gruvy.nord0_gui } -- normal text and background color
		editor.SignColumn = { fg = gruvy.nord4_gui, bg = gruvy.nord0_gui }
	end

	-- Remove window split borders
	if vim.g.nord_borders then
		editor.VertSplit = { fg = gruvy.nord2_gui }
	else
		editor.VertSplit = { fg = gruvy.nord0_gui }
	end

	return editor
end

theme.loadTerminal = function()
	vim.g.terminal_color_0 = gruvy.nord1_gui
	vim.g.terminal_color_1 = gruvy.nord11_gui
	vim.g.terminal_color_2 = gruvy.nord14_gui
	vim.g.terminal_color_3 = gruvy.nord13_gui
	vim.g.terminal_color_4 = gruvy.nord9_gui
	vim.g.terminal_color_5 = gruvy.nord15_gui
	vim.g.terminal_color_6 = gruvy.nord8_gui
	vim.g.terminal_color_7 = gruvy.nord5_gui
	vim.g.terminal_color_8 = gruvy.nord3_gui
	vim.g.terminal_color_9 = gruvy.nord11_gui
	vim.g.terminal_color_10 = gruvy.nord14_gui
	vim.g.terminal_color_11 = gruvy.nord13_gui
	vim.g.terminal_color_12 = gruvy.nord9_gui
	vim.g.terminal_color_13 = gruvy.nord15_gui
	vim.g.terminal_color_14 = gruvy.nord7_gui
	vim.g.terminal_color_15 = gruvy.nord6_gui
end

theme.loadTreeSitter = function()
	-- TreeSitter highlight groups

	local treesitter = {
		TSAnnotation = { fg = gruvy.yellow }, -- For C++/Dart attributes, annotations thatcan be attached to the code to denote some kind of meta information.
		TSConstructor = { fg = gruvy.special_purple }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		TSConstant = { fg = gruvy.cambridge_blue }, -- For constants
		TSFloat = { fg = gruvy.keyword_orange }, -- For floats
		TSNumber = { fg = gruvy.keyword_orange }, -- For all number

		TSAttribute = { fg = gruvy.yellow }, -- (unstable) TODO: docs
		TSVariable = { fg = gruvy.specialChar_orange, style = "none" }, -- Any variable name that does not have another highlight.
		TSVariableBuiltin = { fg = gruvy.nord4_gui, style = "bold" },
		TSBoolean = { fg = gruvy.nord9_gui, style = "bold" }, -- For booleans.
		TSConstBuiltin = { fg = gruvy.nord7_gui, style = "bold" }, -- For constant that are built in the language: `nil` in Lua.
		TSConstMacro = { fg = gruvy.nord7_gui, style = "bold" }, -- For constants that are defined by macros: `NULL` in C.
		TSError = { fg = gruvy.nord11_gui }, -- For syntax/parser errors.
		TSException = { fg = gruvy.nord15_gui }, -- For exception related keywords.
		TSFuncMacro = { fg = gruvy.nord7_gui }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		TSInclude = { fg = gruvy.nord9_gui }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSLabel = { fg = gruvy.nord15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
		TSOperator = { fg = gruvy.nord9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
		TSParameter = { fg = gruvy.nord10_gui }, -- For parameters of a function.
		TSParameterReference = { fg = gruvy.nord10_gui }, -- For references to parameters of a function.
		TSPunctDelimiter = { fg = gruvy.nord8_gui }, -- For delimiters ie: `.`
		TSPunctBracket = { fg = gruvy.nord8_gui }, -- For brackets and parens.
		TSPunctSpecial = { fg = gruvy.nord8_gui }, -- For special punctutation that does not fall in the catagories before.
		TSSymbol = { fg = gruvy.nord15_gui }, -- For identifiers referring to symbols or atoms.
		TSType = { fg = gruvy.nord9_gui }, -- For types.
		TSTypeBuiltin = { fg = gruvy.nord9_gui }, -- For builtin types.
		TSTag = { fg = gruvy.nord4_gui }, -- Tags like html tag names.
		TSTagDelimiter = { fg = gruvy.nord15_gui }, -- Tag delimiter like `<` `>` `/`
		TSText = { fg = gruvy.nord4_gui }, -- For strings considenord11_gui text in a markup language.
		TSTextReference = { fg = gruvy.nord15_gui }, -- FIXME
		TSEmphasis = { fg = gruvy.nord10_gui }, -- For text to be represented with emphasis.
		TSUnderline = { fg = gruvy.nord4_gui, bg = gruvy.none, style = "underline" }, -- For text to be represented with an underline.
		TSTitle = { fg = gruvy.nord10_gui, bg = gruvy.none, style = "bold" }, -- Text that is part of a title.
		TSLiteral = { fg = gruvy.nord4_gui }, -- Literal text.
		TSURI = { fg = gruvy.nord14_gui }, -- Any URI like a link or email.
		TSAnnotation = { fg = gruvy.nord11_gui }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
	}

	if vim.g.nord_italic == false then
		-- Comments
		treesitter.TSComment = { fg = gruvy.nord3_gui_bright }
		-- Conditionals
		treesitter.TSConditional = { fg = gruvy.nord9_gui } -- For keywords related to conditionnals.
		-- Function names
		treesitter.TSFunction = { fg = gruvy.nord8_gui } -- For fuction (calls and definitions).
		treesitter.TSMethod = { fg = gruvy.nord7_gui } -- For method calls and definitions.
		treesitter.TSFuncBuiltin = { fg = gruvy.nord8_gui }
		-- Namespaces and property accessors
		treesitter.TSNamespace = { fg = gruvy.nord4_gui } -- For identifiers referring to modules and namespaces.
		treesitter.TSField = { fg = gruvy.nord4_gui } -- For fields in literals
		treesitter.TSProperty = { fg = gruvy.nord10_gui } -- Same as `TSField`
		-- Language keywords
		treesitter.TSKeyword = { fg = gruvy.nord9_gui } -- For keywords that don't fall in other categories.
		treesitter.TSKeywordFunction = { fg = gruvy.nord8_gui }
		treesitter.TSKeywordReturn = { fg = gruvy.nord8_gui }
		treesitter.TSKeywordOperator = { fg = gruvy.nord8_gui }
		treesitter.TSRepeat = { fg = gruvy.nord9_gui } -- For keywords related to loops.
		-- Strings
		treesitter.TSString = { fg = gruvy.nord14_gui } -- For strings.
		treesitter.TSStringRegex = { fg = gruvy.nord7_gui } -- For regexes.
		treesitter.TSStringEscape = { fg = gruvy.nord15_gui } -- For escape characters within a string.
		treesitter.TSCharacter = { fg = gruvy.nord14_gui } -- For characters.
	else
		-- Comments
		treesitter.TSComment = { fg = gruvy.nord3_gui_bright, style = "italic" }
		-- Conditionals
		treesitter.TSConditional = { fg = gruvy.nord9_gui, style = "italic" } -- For keywords related to conditionnals.
		-- Function names
		treesitter.TSFunction = { fg = gruvy.nord8_gui, style = "italic" } -- For fuction (calls and definitions).
		treesitter.TSMethod = { fg = gruvy.nord7_gui, style = "italic" } -- For method calls and definitions.
		treesitter.TSFuncBuiltin = { fg = gruvy.nord8_gui, style = "italic" }
		-- Namespaces and property accessors
		treesitter.TSNamespace = { fg = gruvy.nord4_gui, style = "italic" } -- For identifiers referring to modules and namespaces.
		treesitter.TSField = { fg = gruvy.nord4_gui, style = "italic" } -- For fields.
		treesitter.TSProperty = { fg = gruvy.nord10_gui, style = "italic" } -- Same as `TSField`, but when accessing, not declaring.
		-- Language keywords
		treesitter.TSKeyword = { fg = gruvy.nord9_gui, style = "italic" } -- For keywords that don't fall in other categories.
		treesitter.TSKeywordFunction = { fg = gruvy.nord8_gui, style = "italic" }
		treesitter.TSKeywordReturn = { fg = gruvy.nord8_gui, style = "italic" }
		treesitter.TSKeywordOperator = { fg = gruvy.nord8_gui, style = "italic" }
		treesitter.TSRepeat = { fg = gruvy.nord9_gui, style = "italic" } -- For keywords related to loops.
		-- Strings
		treesitter.TSString = { fg = gruvy.nord14_gui, style = "italic" } -- For strings.
		treesitter.TSStringRegex = { fg = gruvy.nord7_gui, style = "italic" } -- For regexes.
		treesitter.TSStringEscape = { fg = gruvy.nord15_gui, style = "italic" } -- For escape characters within a string.
		treesitter.TSCharacter = { fg = gruvy.nord14_gui, style = "italic" } -- For characters.
	end

	return treesitter
end

theme.loadLSP = function()
	-- Lsp highlight groups

	local lsp = {
		LspDiagnosticsDefaultError = { fg = gruvy.nord11_gui }, -- used for "Error" diagnostic virtual text
		LspDiagnosticsSignError = { fg = gruvy.nord11_gui }, -- used for "Error" diagnostic signs in sign column
		LspDiagnosticsFloatingError = { fg = gruvy.nord11_gui }, -- used for "Error" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextError = { fg = gruvy.nord11_gui }, -- Virtual text "Error"
		LspDiagnosticsUnderlineError = { style = "undercurl", sp = gruvy.nord11_gui }, -- used to underline "Error" diagnostics.
		LspDiagnosticsDefaultWarning = { fg = gruvy.nord15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsSignWarning = { fg = gruvy.nord15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsFloatingWarning = { fg = gruvy.nord15_gui }, -- used for "Warning" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextWarning = { fg = gruvy.nord15_gui }, -- Virtual text "Warning"
		LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = gruvy.nord15_gui }, -- used to underline "Warning" diagnostics.
		LspDiagnosticsDefaultInformation = { fg = gruvy.nord10_gui }, -- used for "Information" diagnostic virtual text
		LspDiagnosticsSignInformation = { fg = gruvy.nord10_gui }, -- used for "Information" diagnostic signs in sign column
		LspDiagnosticsFloatingInformation = { fg = gruvy.nord10_gui }, -- used for "Information" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextInformation = { fg = gruvy.nord10_gui }, -- Virtual text "Information"
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = gruvy.nord10_gui }, -- used to underline "Information" diagnostics.
		LspDiagnosticsDefaultHint = { fg = gruvy.nord9_gui }, -- used for "Hint" diagnostic virtual text
		LspDiagnosticsSignHint = { fg = gruvy.nord9_gui }, -- used for "Hint" diagnostic signs in sign column
		LspDiagnosticsFloatingHint = { fg = gruvy.nord9_gui }, -- used for "Hint" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextHint = { fg = gruvy.nord9_gui }, -- Virtual text "Hint"
		LspDiagnosticsUnderlineHint = { style = "undercurl", sp = gruvy.nord10_gui }, -- used to underline "Hint" diagnostics.
		LspReferenceText = { fg = gruvy.nord4_gui, bg = gruvy.nord1_gui }, -- used for highlighting "text" references
		LspReferenceRead = { fg = gruvy.nord4_gui, bg = gruvy.nord1_gui }, -- used for highlighting "read" references
		LspReferenceWrite = { fg = gruvy.nord4_gui, bg = gruvy.nord1_gui }, -- used for highlighting "write" references

		DiagnosticError = { link = "LspDiagnosticsDefaultError" },
		DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" },
		DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation" },
		DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
		DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
		DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
		DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
		DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
		DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
		DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
		DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
		DiagnosticSignError = { link = "LspDiagnosticsSignError" },
		DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
		DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
		DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
		DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
		DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
		DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
		DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
		DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
	}

	return lsp
end

theme.loadPlugins = function()
	-- Plugins highlight groups

	local plugins = {

		-- LspTrouble
		LspTroubleText = { fg = gruvy.nord4_gui },
		LspTroubleCount = { fg = gruvy.nord9_gui, bg = gruvy.nord10_gui },
		LspTroubleNormal = { fg = gruvy.nord4_gui, bg = gruvy.sidebar },

		-- Diff
		diffAdded = { fg = gruvy.nord14_gui },
		diffRemoved = { fg = gruvy.nord11_gui },
		diffChanged = { fg = gruvy.nord15_gui },
		diffOldFile = { fg = gruvy.yelow },
		diffNewFile = { fg = gruvy.nord12_gui },
		diffFile = { fg = gruvy.nord7_gui },
		diffLine = { fg = gruvy.nord3_gui },
		diffIndexLine = { fg = gruvy.nord9_gui },

		-- Neogit
		NeogitBranch = { fg = gruvy.nord10_gui },
		NeogitRemote = { fg = gruvy.nord9_gui },
		NeogitHunkHeader = { fg = gruvy.nord8_gui },
		NeogitHunkHeaderHighlight = { fg = gruvy.nord8_gui, bg = gruvy.nord1_gui },
		NeogitDiffContextHighlight = { bg = gruvy.nord1_gui },
		NeogitDiffDeleteHighlight = { fg = gruvy.nord11_gui, style = "reverse" },
		NeogitDiffAddHighlight = { fg = gruvy.nord14_gui, style = "reverse" },

		-- GitGutter
		GitGutterAdd = { fg = gruvy.nord14_gui }, -- diff mode: Added line |diff.txt|
		GitGutterChange = { fg = gruvy.nord15_gui }, -- diff mode: Changed line |diff.txt|
		GitGutterDelete = { fg = gruvy.nord11_gui }, -- diff mode: Deleted line |diff.txt|

		-- GitSigns
		GitSignsAdd = { fg = gruvy.nord14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddNr = { fg = gruvy.nord14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddLn = { fg = gruvy.nord14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = gruvy.nord15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeNr = { fg = gruvy.nord15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeLn = { fg = gruvy.nord15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = gruvy.nord11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteNr = { fg = gruvy.nord11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteLn = { fg = gruvy.nord11_gui }, -- diff mode: Deleted line |diff.txt|

		-- Telescope
		TelescopePromptBorder = { fg = gruvy.nord8_gui },
		TelescopeResultsBorder = { fg = gruvy.nord9_gui },
		TelescopePreviewBorder = { fg = gruvy.nord14_gui },
		TelescopeSelectionCaret = { fg = gruvy.nord9_gui },
		TelescopeSelection = { fg = gruvy.nord9_gui },
		TelescopeMatching = { fg = gruvy.nord8_gui },

		-- NvimTree
		NvimTreeRootFolder = { fg = gruvy.nord7_gui, style = "bold" },
		NvimTreeGitDirty = { fg = gruvy.nord15_gui },
		NvimTreeGitNew = { fg = gruvy.nord14_gui },
		NvimTreeImageFile = { fg = gruvy.nord15_gui },
		NvimTreeExecFile = { fg = gruvy.nord14_gui },
		NvimTreeSpecialFile = { fg = gruvy.nord9_gui, style = "underline" },
		NvimTreeFolderName = { fg = gruvy.nord10_gui },
		NvimTreeEmptyFolderName = { fg = gruvy.nord1_gui },
		NvimTreeFolderIcon = { fg = gruvy.nord4_gui },
		NvimTreeIndentMarker = { fg = gruvy.nord1_gui },
		LspDiagnosticsError = { fg = gruvy.nord11_gui },
		LspDiagnosticsWarning = { fg = gruvy.nord15_gui },
		LspDiagnosticsInformation = { fg = gruvy.nord10_gui },
		LspDiagnosticsHint = { fg = gruvy.nord9_gui },

		-- WhichKey
		WhichKey = { fg = gruvy.nord4_gui, style = "bold" },
		WhichKeyGroup = { fg = gruvy.nord4_gui },
		WhichKeyDesc = { fg = gruvy.nord7_gui, style = "italic" },
		WhichKeySeperator = { fg = gruvy.nord4_gui },
		WhichKeyFloating = { bg = gruvy.float },
		WhichKeyFloat = { bg = gruvy.float },

		-- LspSaga
		DiagnosticError = { fg = gruvy.nord11_gui },
		DiagnosticWarning = { fg = gruvy.nord15_gui },
		DiagnosticInformation = { fg = gruvy.nord10_gui },
		DiagnosticHint = { fg = gruvy.nord9_gui },
		DiagnosticTruncateLine = { fg = gruvy.nord4_gui },
		LspFloatWinNormal = { bg = gruvy.nord2_gui },
		LspFloatWinBorder = { fg = gruvy.nord9_gui },
		LspSagaBorderTitle = { fg = gruvy.nord8_gui },
		LspSagaHoverBorder = { fg = gruvy.nord10_gui },
		LspSagaRenameBorder = { fg = gruvy.nord14_gui },
		LspSagaDefPreviewBorder = { fg = gruvy.nord14_gui },
		LspSagaCodeActionBorder = { fg = gruvy.nord7_gui },
		LspSagaFinderSelection = { fg = gruvy.nord14_gui },
		LspSagaCodeActionTitle = { fg = gruvy.nord10_gui },
		LspSagaCodeActionContent = { fg = gruvy.nord9_gui },
		LspSagaSignatureHelpBorder = { fg = gruvy.nord13_gui },
		ReferencesCount = { fg = gruvy.nord9_gui },
		DefinitionCount = { fg = gruvy.nord9_gui },
		DefinitionIcon = { fg = gruvy.nord7_gui },
		ReferencesIcon = { fg = gruvy.nord7_gui },
		TargetWord = { fg = gruvy.nord8_gui },

		-- Sneak
		Sneak = { fg = gruvy.nord0_gui, bg = gruvy.nord4_gui },
		SneakScope = { bg = gruvy.nord1_gui },

		-- Cmp
		CmpItemKind = { fg = gruvy.nord15_gui },
		CmpItemAbbrMatch = { fg = gruvy.nord5_gui, style = "bold" },
		CmpItemAbbrMatchFuzzy = { fg = gruvy.nord5_gui, style = "bold" },
		CmpItemAbbr = { fg = gruvy.nord4_gui },
		CmpItemMenu = { fg = gruvy.nord14_gui },

		-- Indent Blankline
		IndentBlanklineChar = { fg = gruvy.nord3_gui },
		IndentBlanklineContextChar = { fg = gruvy.nord10_gui },

		-- Illuminate
		illuminatedWord = { bg = gruvy.nord3_gui },
		illuminatedCurWord = { bg = gruvy.nord3_gui },

		-- nvim-dap
		DapBreakpoint = { fg = gruvy.nord14_gui },
		DapStopped = { fg = gruvy.nord15_gui },

		-- nvim-dap-ui
		DapUIVariable = { fg = gruvy.nord4_gui },
		DapUIScope = { fg = gruvy.nord8_gui },
		DapUIType = { fg = gruvy.nord9_gui },
		DapUIValue = { fg = gruvy.nord4_gui },
		DapUIModifiedValue = { fg = gruvy.nord8_gui },
		DapUIDecoration = { fg = gruvy.nord8_gui },
		DapUIThread = { fg = gruvy.nord8_gui },
		DapUIStoppedThread = { fg = gruvy.nord8_gui },
		DapUIFrameName = { fg = gruvy.nord4_gui },
		DapUISource = { fg = gruvy.nord9_gui },
		DapUILineNumber = { fg = gruvy.nord8_gui },
		DapUIFloatBorder = { fg = gruvy.nord8_gui },
		DapUIWatchesEmpty = { fg = gruvy.nord11_gui },
		DapUIWatchesValue = { fg = gruvy.nord8_gui },
		DapUIWatchesError = { fg = gruvy.nord11_gui },
		DapUIBreakpointsPath = { fg = gruvy.nord8_gui },
		DapUIBreakpointsInfo = { fg = gruvy.nord8_gui },
		DapUIBreakpointsCurrentLine = { fg = gruvy.nord8_gui },
		DapUIBreakpointsLine = { fg = gruvy.nord8_gui },

		-- Hop
		HopNextKey = { fg = gruvy.nord4_gui, style = "bold" },
		HopNextKey1 = { fg = gruvy.nord8_gui, style = "bold" },
		HopNextKey2 = { fg = gruvy.nord4_gui },
		HopUnmatched = { fg = gruvy.nord3_gui },

		-- Fern
		FernBranchText = { fg = gruvy.nord3_gui_bright },

		-- nvim-ts-rainbow
		rainbowcol1 = { fg = gruvy.nord15_gui },
		rainbowcol2 = { fg = gruvy.nord13_gui },
		rainbowcol3 = { fg = gruvy.nord11_gui },
		rainbowcol4 = { fg = gruvy.nord7_gui },
		rainbowcol5 = { fg = gruvy.nord8_gui },
		rainbowcol6 = { fg = gruvy.nord15_gui },
		rainbowcol7 = { fg = gruvy.nord13_gui },

		-- lightspeed
		LightspeedLabel = { fg = gruvy.nord8_gui, style = "bold" },
		LightspeedLabelOverlapped = { fg = gruvy.nord8_gui, style = "bold,underline" },
		LightspeedLabelDistant = { fg = gruvy.nord15_gui, style = "bold" },
		LightspeedLabelDistantOverlapped = { fg = gruvy.nord15_gui, style = "bold,underline" },
		LightspeedShortcut = { fg = gruvy.nord10_gui, style = "bold" },
		LightspeedShortcutOverlapped = { fg = gruvy.nord10_gui, style = "bold,underline" },
		LightspeedMaskedChar = { fg = gruvy.nord4_gui, bg = gruvy.nord2_gui, style = "bold" },
		LightspeedGreyWash = { fg = gruvy.nord3_gui_bright },
		LightspeedUnlabeledMatch = { fg = gruvy.nord4_gui, bg = gruvy.nord1_gui },
		LightspeedOneCharMatch = { fg = gruvy.nord8_gui, style = "bold,reverse" },
		LightspeedUniqueChar = { style = "bold,underline" },

		-- copilot
		CopilotLabel = { fg = gruvy.nord3_gui, bg = gruvy.none },

		-- Statusline
		StatusLineDull = { fg = gruvy.nord3_gui, bg = gruvy.nord1_gui },
		StatusLineAccent = { fg = gruvy.nord0_gui, bg = gruvy.nord13_gui },
	}
	-- Options:

	-- Disable nvim-tree background
	if vim.g.nord_disable_background then
		plugins.NvimTreeNormal = { fg = gruvy.nord4_gui, bg = gruvy.none }
	else
		plugins.NvimTreeNormal = { fg = gruvy.nord4_gui, bg = gruvy.sidebar }
	end

	if vim.g.nord_enable_sidebar_background then
		plugins.NvimTreeNormal = { fg = gruvy.nord4_gui, bg = gruvy.sidebar }
	else
		plugins.NvimTreeNormal = { fg = gruvy.nord4_gui, bg = gruvy.none }
	end

	return plugins
end

return theme
