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
-- Note: Because this is a lua file, vim will append it to the runtime,
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
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym

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

  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn({ bg = color0.darken(60) }), -- used for the columns set with 'colorcolumn'
    Conceal({ bg = color0, fg = color1.darken(30) }), -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor({ bg = color0, fg = color8 }), -- character under the cursor
    lCursor({ bg = color2, fg = color15 }), -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM({ bg = color5, fg = color0 }), -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn({ bg = "NONE", fg = color7 }), -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine({}), -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory({ bg = "NONE", fg = color5 }), -- directory names (and other special names in listings)
    DiffAdd({ bg = color6, fg = color15 }), -- diff mode: Added line |diff.txt|
    DiffChange({ bg = color8, fg = color10 }), -- diff mode: Changed line |diff.txt|
    DiffDelete({ bg = color0, fg = color8 }), -- diff mode: Deleted line |diff.txt|
    DiffText({ DiffAdd }), -- diff mode: Changed text within a changed line |diff.txt|
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
    CursorLineNr({ bg = color8, fg = color7 }), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
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
    PmenuSbar({ fg = "NONE", bg = color0 }), -- Popup menu: scrollbar.
    PmenuThumb({ bg = color1, fg = "NONE" }), -- Popup menu: Thumb of the scrollbar.
    Question({ bg = color0, fg = color4.lighten(30) }), -- |hit-enter| prompt and yes/no questions
    QuickFixLine({ bg = color2, fg = color8 }), -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search({ bg = color7, fg = color0 }), -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey({ bg = color0, fg = color7.darken(40) }), -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad({ bg = "NONE", fg = "NONE", gui = "undercurl" }), -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap({ SpellBad }), -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal({ SpellBad }), -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare({ SpellBad }), -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine({ bg = color10, fg = color0 }), -- status line of current window
    StatusLineNC({ bg = color8, fg = color2 }), -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine({ StatusLineNC }), -- tab pages line, not active tab page label
    TabLineFill({ bg = "NONE" }), -- tab pages line, where there are no labels
    TabLineSel({ StatusLine }), -- tab pages line, active tab page label
    Title({ bg = "NONE", fg = color15 }), -- titles for output from ":set all", ":autocmd" etc.
    Visual({ bg = color9, fg = color0 }), -- Visual mode selection
    VisualNOS({ QuickFixLine }), -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg({ bg = color8, fg = color5.lighten(70), gui = "bold" }), -- warning messages
    Whitespace({ bg = "NONE", fg = color8, ctermbg = none }), -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu({ PmenuSel }), -- current match in 'wildmenu' completion

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment({ bg = "NONE", fg = color1.darken(10), gui = "italic" }), -- Any comment

    Constant({ bg = "NONE", fg = color10 }), -- (*) Any constant
    -- String         { }, --   A string constant: "this is a string"
    -- Character      { }, --   A character constant: 'c', '\n'
    -- Number         { }, --   A number constant: 234, 0xff
    -- Boolean        { }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    Identifier({ bg = "NONE", fg = color7 }), -- (*) Any variable name
    Function({ bg = "NONE", fg = color12 }), --   Function name (also: methods for classes)

    Statement({ bg = "NONE", fg = color2 }), -- (*) Any statement
    Conditional({ bg = "NONE", fg = color4 }), --   if, then, else, endif, switch, etc.
    Repeat({ bg = "NONE", fg = color4 }), --   for, do, while, etc.
    Label({ bg = "NONE", fg = color7 }), --   case, default, etc.
    -- Operator       { }, -- "sizeof", "+", "*", etc.
    -- Keyword        { }, --  any other keyword
    -- Exception      { }, --  try, catch, throw

    PreProc({ bg = "NONE", fg = color6 }), -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type({ bg = "NONE", fg = color6, gui = "bold" }), -- (*) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    Special({ bg = "NONE", fg = color13 }), -- (*) Any special symbol
    -- SpecialChar    { }, --  Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --  Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    Underlined({ gui = "underline" }), -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error({ bg = color8, fg = color9, gui = "bold" }), -- Any erroneous construct
    Todo({ Title }), -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
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

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    -- sym"@variable"          { }, -- Identifier
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag

    -- Extras

    -- TSVariableBuiltin    { } , -- Variable names defined by the language: `this` or `self` in Javascript.

    -- e $VIMRUNTIME/syntax/diff.vim
    -- changing these only to tweak vim-fugitive's :G status view

    -- diffOldFile {}, -- diffFile
    -- diffNewFile {}, -- diffFile
    -- diffIndexLine {}, -- PreProc
    -- diffFile {}, -- Type
    -- diffOnly {}, -- Constant
    -- diffIdentical {}, -- Constant
    -- diffDiffer {}, -- Constant
    -- diffBDiffer {}, -- Constant
    -- diffIsA {}, -- Constant
    -- diffNoEOL {}, -- Constant
    -- diffCommon {}, -- Constant
    diffRemoved { DiffDelete }, -- Special
    -- diffChanged {}, -- PreProc
    diffAdded { DiffAdd }, -- Identifier
    -- diffLine {}, -- Statement
    -- diffSubname {}, -- PreProc
    -- diffComment {}, -- Comment

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

    -- LeapMatch { bg = color7, gui = 'underline' },
    -- LeapLabelPrimary {}

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
