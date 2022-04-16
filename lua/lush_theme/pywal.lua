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

local lush = require('lush')
local hsl = lush.hsl

local function getColors()
  local colorTable = {}
  local home = os.getenv('HOME')
  local pywal_colors = home .. '/.cache/wal/colors'
  local file = io.open(pywal_colors, 'r')
  for line in file:lines() do
    table.insert(colorTable, line)
  end
  return colorTable
end

local colors = getColors()

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
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
    LineNr({ bg = "NONE", fg = color3 }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr({ bg = color11, fg = color0 }), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
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
    StatusLineNC({ bg = color8, fg = color2 }), -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
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

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- used for highlighting "text" references
    -- LspReferenceRead            { } , -- used for highlighting "read" references
    -- LspReferenceWrite           { } , -- used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.

    -- See :h nvim-treesitter-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- TSAttribute          { } , -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    -- TSBoolean            { } , -- Boolean literals: `True` and `False` in Python.
    -- TSCharacter          { } , -- Character literals: `'a'` in C.
    -- TSComment            { } , -- Line comments and block comments.
    -- TSConditional        { } , -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    -- TSConstant           { } , -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    -- TSConstBuiltin       { } , -- Built-in constant values: `nil` in Lua.
    -- TSConstMacro         { } , -- Constants defined by macros: `NULL` in C.
    -- TSConstructor        { } , -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    -- TSError              { } , -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    -- TSException          { } , -- Exception related keywords: `try`, `except`, `finally` in Python.
    -- TSField              { } , -- Object and struct fields.
    -- TSFloat              { } , -- Floating-point number literals.
    -- TSFunction           { } , -- Function calls and definitions.
    -- TSFuncBuiltin        { } , -- Built-in functions: `print` in Lua.
    -- TSFuncMacro          { } , -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { } , -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    -- TSKeyword            { } , -- Keywords that don't fit into other categories.
    -- TSKeywordFunction    { } , -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    -- TSKeywordOperator    { } , -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    -- TSKeywordReturn      { } , -- Keywords like `return` and `yield`.
    -- TSLabel              { } , -- GOTO labels: `label:` in C, and `::label::` in Lua.
    -- TSMethod             { } , -- Method calls and definitions.
    -- TSNamespace          { } , -- Identifiers referring to modules and namespaces.
    -- TSNone               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    -- TSNumber             { } , -- Numeric literals that don't fit into other categories.
    -- TSOperator           { } , -- Binary or unary operators: `+`, and also `->` and `*` in C.
    -- TSParameter          { } , -- Parameters of a function.
    -- TSParameterReference { } , -- References to parameters of a function.
    -- TSProperty           { } , -- Same as `TSField`.
    -- TSPunctDelimiter     { } , -- Punctuation delimiters: Periods, commas, semicolons, etc.
    -- TSPunctBracket       { } , -- Brackets, braces, parentheses, etc.
    -- TSPunctSpecial       { } , -- Special punctuation that doesn't fit into the previous categories.
    -- TSRepeat             { } , -- Keywords related to loops: `for`, `while`, etc.
    -- TSString             { } , -- String literals.
    -- TSStringRegex        { } , -- Regular expression literals.
    -- TSStringEscape       { } , -- Escape characters within a string: `\n`, `\t`, etc.
    -- TSStringSpecial      { } , -- Strings with special meaning that don't fit into the previous categories.
    -- TSSymbol             { } , -- Identifiers referring to symbols or atoms.
    -- TSTag                { } , -- Tags like HTML tag names.
    -- TSTagAttribute       { } , -- HTML tag attributes.
    -- TSTagDelimiter       { } , -- Tag delimiters like `<` `>` `/`.
    -- TSText               { } , -- Non-structured text. Like text in a markup language.
    -- TSStrong             { } , -- Text to be represented in bold.
    -- TSEmphasis           { } , -- Text to be represented with emphasis.
    -- TSUnderline          { } , -- Text to be represented with an underline.
    -- TSStrike             { } , -- Strikethrough text.
    -- TSTitle              { } , -- Text that is part of a title.
    -- TSLiteral            { } , -- Literal or verbatim text.
    -- TSURI                { } , -- URIs like hyperlinks or email addresses.
    -- TSMath               { } , -- Math environments like LaTeX's `$ ... $`
    -- TSTextReference      { } , -- Footnotes, text references, citations, etc.
    -- TSEnvironment        { } , -- Text environments of markup languages.
    -- TSEnvironmentName    { } , -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    -- TSNote               { } , -- Text representation of an informational note.
    -- TSWarning            { } , -- Text representation of a warning note.
    -- TSDanger             { } , -- Text representation of a danger note.
    -- TSType               { } , -- Type (and class) definitions and annotations.
    -- TSTypeBuiltin        { } , -- Built-in types: `i32` in Rust.
    -- TSVariable           { } , -- Variable names that don't fit into other categories.
    -- TSVariableBuiltin    { } , -- Variable names defined by the language: `this` or `self` in Javascript.

    -- Telescope
    -- https://github.com/nvim-telescope/telescope.nvim

    -- TelescopeSelection      { }, -- guifg=#D79921 gui=bold " Selected item
    -- TelescopeSelectionCaret { }, -- guifg=#CC241D          " Selection caret
    -- TelescopeMultiSelection { }, -- guifg=#928374          " Multisections
    -- TelescopeNormal         { }, -- guibg=#00000           " Floating windows created by telescope

    -- Border highlight groups
    TelescopeBorder { fg = color2 }, -- guifg=#ffffff
    -- TelescopePromptBorder   { }, -- guifg=#ffffff
    -- TelescopeResultsBorder  { }, -- guifg=#ffffff
    -- TelescopePreviewBorder  { }, -- guifg=#ffffff

    -- Highlight characters your in put matches
    TelescopeMatching { bg = color10, fg = color0 }, -- guifg=blue

    -- Color the prompt prefix
    -- TelescopePromptPrefix   { }, -- guifg=red
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
