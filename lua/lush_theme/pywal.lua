--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require("lush")
local hsl = lush.hsl

function getColors()
	local colorTable = {}
	local home = os.getenv("HOME")
	local pywal_colors = home .. "/.cache/wal/colors"
	file = io.open(pywal_colors, "r")
	for line in file:lines() do
		table.insert(colorTable, line)
	end
	return colorTable
end

local colors = getColors()

local theme = lush(function()
	local color0 = hsl(colors[1])
	local color1 = hsl(colors[2])
	local color2 = hsl(colors[3])
	local color3 = hsl(colors[4])
	local color4 = hsl(colors[5])
	local color5 = hsl(colors[6])
	local color6 = hsl(colors[7])
	local color7 = hsl(colors[8])
	local color8 = hsl(colors[9])
	local color9 = hsl(colors[10])
	local color10 = hsl(colors[11])
	local color11 = hsl(colors[12])
	local color12 = hsl(colors[13])
	local color13 = hsl(colors[14])
	local color14 = hsl(colors[15])
	local color15 = hsl(colors[16])

	local diffAdd = hsl("#3fb950")
	-- 156,30,15
	local diffAddBg = hsl("#1b3229")

	local diffDelete = hsl("#f85149")
	-- 346,10,15
	local diffDeleteBg = hsl("#2a2224")

	local diffChange = hsl("#d29922")
	local diffChangeBg = hsl("#322c1b")

	return {
		-- The following are all the Neovim default highlight groups from the docs
		-- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
		-- probably style all of these at a bare minimum.
		--
		-- Referenced/linked groups must come before being referenced/lined,
		-- so the order shown ((mostly) alphabetical) is likely
		-- not the order you will end up with.
		--
		-- You can uncomment these and leave them empty to disable any
		-- styling for that group (meaning they mostly get styled as Normal)
		-- or leave them commented to apply vims default colouring or linking.

		Comment({ bg = "NONE", fg = color1.darken(10), gui = "italic" }), -- any comment
		ColorColumn({ bg = color0.darken(60) }), -- used for the columns set with 'colorcolumn'
		Conceal({ bg = color0, fg = color1.darken(30) }), -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor({ bg = color0, fg = color8 }), -- character under the cursor
		lCursor({ bg = color2, fg = color15 }), -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM({ bg = color5, fg = color0 }), -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn({ bg = "NONE", fg = color7 }), -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine({ bg = color1.darken(40), fg = color1.lighten(40) }), -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
		Directory({ bg = "NONE", fg = color5 }), -- directory names (and other special names in listings)
		DiffAdd({ bg = diffAddBg }), -- diff mode: Added line |diff.txt|
		DiffChange({ bg = diffChangeBg }), -- diff mode: Changed line |diff.txt|
		DiffDelete({ bg = diffDeleteBg }), -- diff mode: Deleted line |diff.txt|
		DiffText({ bg = diffChange, fg = color0 }), -- diff mode: Changed text within a changed line |diff.txt|
		EndOfBuffer({ bg = "NONE", fg = color1.darken(55) }), -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		TermCursor({ bg = color5, fg = color0 }), -- cursor in a focused terminal
		TermCursorNC({ bg = color2, fg = color0 }), -- cursor in an unfocused terminal
		ErrorMsg({ bg = color14, fg = color0 }), -- error messages on the command line
		VertSplit({ bg = "NONE", fg = color8 }), -- the column separating vertically split windows
		Folded({ bg = color0, fg = color2.darken(30) }), -- line used for closed folds
		FoldColumn({ bg = color1, fg = color0 }), -- 'foldcolumn'
		SignColumn({ bg = "NONE", fg = color5 }), -- column where |signs| are displayed
		IncSearch({ bg = color7, fg = color0 }), -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		Substitute({ bg = color6, fg = color0 }), -- |:substitute| replacement text highlighting
		LineNr({ bg = "NONE", fg = color11 }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr({ bg = color11.lighten(35), fg = color0.darken(30) }), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		MatchParen({ bg = color0, fg = color14 }), -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg({ bg = color14, fg = color0 }), -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea({ bg = "NONE", fg = color11 }), -- Area for messages and cmdline
		MsgSeparator({ bg = color0.darken(80), fg = color4.lighten(60) }), -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg({ bg = color0, fg = color5.lighten(10), gui = "italic" }), -- |more-prompt|
		NonText({ bg = color0, fg = color1.darken(30), ctermbg = none }), -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal({ bg = "NONE", fg = color7, ctermbg = none }), -- normal text
		NormalFloat({ bg = color8, fg = color7 }), -- Normal text in floating windows.
		-- NormalNC      { bg = color0, fg = color8.darken(70)}, -- normal text in non-current windows
		Pmenu({ bg = color8, fg = color7 }), -- Popup menu: normal item.
		PmenuSel({ bg = color9, fg = color0 }), -- Popup menu: selected item.
		PmenuSbar({ bg = "NONE", fg = color1 }), -- Popup menu: scrollbar.
		PmenuThumb({ bg = color1, fg = color0 }), -- Popup menu: Thumb of the scrollbar.
		Question({ bg = color0, fg = color4.lighten(30) }), -- |hit-enter| prompt and yes/no questions
		QuickFixLine({ bg = color2, fg = color8 }), -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search({ bg = color7, fg = color0 }), -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		SpecialKey({ bg = color0, fg = color7.darken(40) }), -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad({ bg = color0, fg = color2.darken(25), gui = "undercurl" }), -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap({ SpellBad }), -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal({ SpellBad }), -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare({ SpellBad }), -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine({ bg = color10, fg = color0 }), -- status line of current window
		StatusLineNC({ bg = color0, fg = color4 }), -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine({ StatusLineNC }), -- tab pages line, not active tab page label
		TabLineFill({ bg = "NONE" }), -- tab pages line, where there are no labels
		TabLineSel({ StatusLine }), -- tab pages line, active tab page label
		Title({ bg = "NONE", fg = color0.lighten(40) }), -- titles for output from ":set all", ":autocmd" etc.
		Visual({ bg = color9, fg = color0 }), -- Visual mode selection
		VisualNOS({ QuickFixLine }), -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg({ bg = color8, fg = color5.lighten(70), gui = "bold" }), -- warning messages
		Whitespace({ NonText }), -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu({ PmenuSel }), -- current match in 'wildmenu' completion

		-- These groups are not listed as default vim groups,
		-- but they are defacto standard group names for syntax highlighting.
		-- commented out groups should chain up to their "preferred" group by
		-- default,
		-- Uncomment and edit if you want more specific syntax highlighting.

		Constant({ bg = "NONE", fg = color10 }), -- (preferred) any constant
		-- String         { }, --   a string constant: "this is a string"
		-- Character      { }, --  a character constant: 'c', '\n'
		-- Number         { }, --   a number constant: 234, 0xff
		-- Boolean        { }, --  a boolean constant: TRUE, false
		-- Float          { }, --    a floating point constant: 2.3e10
		Identifier({ bg = "NONE", fg = color7 }), -- (preferred) any variable name
		Function({ bg = "NONE", fg = color12 }), -- function name (also: methods for classes)

		Statement({ bg = "NONE", fg = color2 }), -- (preferred) any statement

		Conditional({ bg = "NONE", fg = color4 }), --  if, then, else, endif, switch, etc.
		Repeat({ bg = "NONE", fg = color4 }), --   for, do, while, etc.

		Label({ bg = "NONE", fg = color7 }), --    case, default, etc.
		-- Operator       { }, -- "sizeof", "+", "*", etc.
		-- Keyword        { }, --  any other keyword
		-- Exception      { }, --  try, catch, throw

		PreProc({ bg = "NONE", fg = color6 }), -- (preferred) generic Preprocessor, also Fugitive deleted text
		-- Include        { }, --  preprocessor #include
		-- Define         { }, --   preprocessor #define
		-- Macro          { }, --    same as Define
		-- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

		Type({ bg = "NONE", fg = color6, gui = "bold" }), -- (preferred) int, long, char, etc.
		-- StorageClass   { }, -- static, register, volatile, etc.
		-- Structure      { }, --  struct, union, enum, etc.
		-- Typedef        { }, --  A typedef

		Special({ bg = "NONE", fg = color13 }), -- (preferred) any special symbol
		-- SpecialChar    { }, --  special character in a constant
		-- Tag            { }, --    you can use CTRL-] on this
		-- Delimiter      { }, --  character that needs attention
		-- SpecialComment { }, -- special things inside a comment
		-- Debug          { }, --    debugging statements

		Underlined({ gui = "underline" }), -- (preferred) text that stands out, HTML links
		Bold({ gui = "bold" }),
		Italic({ gui = "italic" }),

		-- ("Ignore", below, may be invisible...)
		-- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Error({ bg = color8, fg = color9, gui = "bold" }), -- (preferred) any erroneous construct

		Todo({ Title }), -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		-- These groups are for the native LSP client. Some other LSP clients may
		-- use these groups, or use their own. Consult your LSP client's
		-- documentation.

		-- LspReferenceText                     { }, -- used for highlighting "text" references
		-- LspReferenceRead                     { }, -- used for highlighting "read" references
		-- LspReferenceWrite                    { }, -- used for highlighting "write" references

		-- LspDiagnosticsDefaultError           { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		-- LspDiagnosticsDefaultWarning         { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		-- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		-- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

		-- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
		-- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
		-- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
		-- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

		-- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
		-- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
		-- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
		-- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

		-- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

		-- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
		-- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
		-- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
		-- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

		-- These groups are for the neovim tree-sitter highlights.
		-- As of writing, tree-sitter support is a WIP, group names may change.
		-- By default, most of these groups link to an appropriate Vim group,
		-- TSError -> Error for example, so you do not have to define these unless
		-- you explicitly want to support Treesitter's improved syntax awareness.

		-- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		-- TSAttribute          { };    -- (unstable) TODO: docs
		-- TSBoolean            { };    -- For booleans.
		-- TSCharacter          { };    -- For characters.
		-- TSComment            { };    -- For comment blocks.
		-- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
		-- TSConditional        { };    -- For keywords related to conditionnals.
		-- TSConstant           { };    -- For constants
		-- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
		-- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
		-- TSError              { };    -- For syntax/parser errors.
		-- TSException          { };    -- For exception related keywords.
		-- TSField              { };    -- For fields.
		-- TSFloat              { };    -- For floats.
		-- TSFunction           { };    -- For function (calls and definitions).
		-- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
		-- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		-- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		-- TSKeyword            { };    -- For keywords that don't fall in previous categories.
		-- TSKeywordFunction    { };    -- For keywords used to define a fuction.
		-- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
		-- TSMethod             { };    -- For method calls and definitions.
		-- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
		-- TSNone               { };    -- TODO: docs
		-- TSNumber             { };    -- For all numbers
		-- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
		-- TSParameter          { };    -- For parameters of a function.
		-- TSParameterReference { };    -- For references to parameters of a function.
		-- TSProperty           { };    -- Same as `TSField`.
		-- TSPunctDelimiter     { };    -- For delimiters ie: `.`
		-- TSPunctBracket       { };    -- For brackets and parens.
		-- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
		-- TSRepeat             { };    -- For keywords related to loops.
		-- TSString             { };    -- For strings.
		-- TSStringRegex        { };    -- For regexes.
		-- TSStringEscape       { };    -- For escape characters within a string.
		-- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
		-- TSType               { };    -- For types.
		-- TSTypeBuiltin        { };    -- For builtin types.
		-- TSVariable           { };    -- Any variable name that does not have another highlight.
		-- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

		-- TSTag                { };    -- Tags like html tag names.
		-- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
		-- TSText               { };    -- For strings considered text in a markup language.
		-- TSEmphasis           { };    -- For text to be represented with emphasis.
		-- TSUnderline          { };    -- For text to be represented with an underline.
		-- TSStrike             { };    -- For strikethrough text.
		-- TSTitle              { };    -- Text that is part of a title.
		-- TSLiteral            { };    -- Literal text.
		-- TSURI                { };    -- Any URI like a link or email.
	}
end)

-- Define your lightline theme using groups from our lush spec
--
-- This theme simply flips the background and foreground colours
-- for normal and insert mode.
--
-- Continue below to see how to enable real time updating,
-- then try editing this theme.
local lightline_theme = {
	normal = {
		left = {
			{ theme.CursorLineNr.fg.hex, theme.CursorLineNr.bg.hex },
		},
		middle = {
			{ theme.Normal.fg.hex, theme.Normal.bg.hex },
		},
		right = {
			{ theme.StatusLine.fg.hex, theme.StatusLine.bg.hex },
		},
	},
	insert = {
		left = {
			{ theme.PmenuSbar.bg.hex, theme.PmenuSbar.fg.hex },
		},
		middle = {
			{ theme.Normal.bg.hex, theme.Normal.fg.hex },
		},
		right = {
			{ theme.StatusLine.bg.hex, theme.StatusLine.fg.hex },
		},
	},
	replace = {
		left = {
			{ theme.Pmenu.bg.hex, theme.Pmenu.fg.hex },
		},
		middle = {
			{ theme.Normal.bg.hex, theme.Normal.fg.hex },
		},
		right = {
			{ theme.StatusLine.bg.hex, theme.StatusLine.fg.hex },
		},
	},
	visual = {
		left = {
			{ theme.WarningMsg.bg.hex, theme.WarningMsg.fg.hex },
		},
		middle = {
			{ theme.Normal.bg.hex, theme.Normal.fg.hex },
		},
		right = {
			{ theme.StatusLine.bg.hex, theme.StatusLine.fg.hex },
		},
	},
}

-- Use lightlines helper functions to correct cterm holes in our theme.
-- Note: These functions can be expensive to run, it is recommended you
--       leave them commented out until you wish to work on lightline,
--       or investigate the two-file approach in the other lightline example.
-- local lightline_theme_filled = vim.fn['lightline#colorscheme#fill'](lightline_theme)

-- define our theme for lightline to find
-- vim.g['lightline#colorscheme#lightline_one_file#palette'] = lightline_theme_filled

-- Technically, that's all you have to do for your lightline theme to
-- be applied but if you want real-time feedback while designing it, you must
-- include some extra code which forces lightline to notice the changes.
--
-- It's recommended you comment out the following code if you're not actively
-- editing your lightline theme.
--
-- You may find realtime performance unacceptable while changes are being
-- propagated back to and applied by vimscript, if this is a problem,
-- you can disable lush.ify() on the buffer (save then `:e!`), then when you
-- wish to preview your changes, save and run `:luafile %`.
--
-- Consider making a temporary mapping while working:
--
--   `:nmap <leader>llr :luafile %<CR>`

-- Lightline is a little tempermental about when you tell it to update it's
-- theme, so we push it to vim's scheduler.
-- vim.schedule(function()
--   -- lightline#colorscheme() has a side effect of not always
-- applying updates until after leaving insert mode.
--   vim.fn['lightline#colorscheme']()

-- this will apply more uniforming across all modes, but may have
-- unacceptable performance impacts.
--   vim.fn['lightline#disable']()
--   vim.fn['lightline#enable']()
-- return our parsed theme for extension or use else where.
--
-- end)
return theme

-- vi:nowrap
