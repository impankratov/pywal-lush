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
  local sep = package.config:sub(1, 1)
  local wal_colors_path = table.concat({ os.getenv('HOME'), '.cache', 'wal', 'colors' }, sep)

  local file = io.open(wal_colors_path , 'r')
  if file then
    for line in file:lines() do
      table.insert(colorTable, line)
    end
  end
  return colorTable
end

local colors = getColors()

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  ---@diagnostic disable-next-line: unused-local
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
    -- TODO: https://github.com/rktjmp/lush-template/commit/db76a5866a20ec53001eb46616b4eadb5a9d13b3
    ColorColumn { bg = color0 },                                       -- used for the columns set with 'colorcolumn'
    Conceal { bg = color0, fg = color1.darken(30) },                   -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor { bg = color0, fg = color8 },                               -- character under the cursor
    lCursor { bg = color2, fg = color15 },                             -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM { bg = color5, fg = color0 },                             -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { bg = "NONE", fg = color7 },                         -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine { bg = color0 },                                        -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory { bg = "NONE", fg = color5 },                            -- directory names (and other special names in listings)
    DiffAdd { bg = color11, fg = color0 },                             -- diff mode: Added line |diff.txt|
    DiffChange { bg = color3, fg = color15 },                          -- diff mode: Changed line |diff.txt|
    DiffDelete { bg = color0, fg = color1 },                           -- diff mode: Deleted line |diff.txt|
    DiffText { bg = color11, fg = color0 },                            -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer { bg = "NONE", fg = color8 },                          -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    TermCursor { bg = color5, fg = color0 },                           -- cursor in a focused terminal
    ErrorMsg { bg = color14, fg = color0 },                            -- error messages on the command line
    VertSplit { bg = "NONE", fg = color8 },                            -- the column separating vertically split windows
    Folded { bg = color0, fg = color2 },                               -- line used for closed folds
    FoldColumn { bg = "NONE", fg = color2 },                           -- 'foldcolumn'
    SignColumn { bg = "NONE", fg = color5 },                           -- column where |signs| are displayed
    IncSearch { bg = color7, fg = color0 },                            -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute { bg = color6, fg = color0 },                           -- |:substitute| replacement text highlighting
    LineNr { bg = "NONE", fg = color3 },                               -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { bg = color8, fg = color11, gui = "bold" },          -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen { bg = color8, fg = color9, gui = "bold" },            -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg { bg = color14, fg = color0 },                             -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea { bg = "NONE", fg = color14 },                             -- Area for messages and cmdline
    MsgSeparator { bg = color0, fg = color7 },                         -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg { bg = color0, fg = color6, gui = "italic" },              -- |more-prompt|
    NonText { bg = color0, fg = color1.darken(30), ctermbg = none },   -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal { bg = "NONE", fg = color7, ctermbg = none },               -- normal text
    NormalFloat { bg = "NONE", fg = color7 },                          -- Normal text in floating windows.
    NormalNC { },                                                      -- Normal text in non-current windows
    Pmenu { bg = color8, fg = color7 },                                -- Popup menu: normal item.
    PmenuSel { bg = color9, fg = color0 },                             -- Popup menu: selected item.
    PmenuSbar { fg = "NONE", bg = color0 },                            -- Popup menu: scrollbar.
    PmenuThumb { bg = color1, fg = "NONE" },                           -- Popup menu: Thumb of the scrollbar.
    Question { bg = color0, fg = color4.lighten(30) },                 -- |hit-enter| prompt and yes/no questions
    QuickFixLine { bg = color2, fg = color8 },                         -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search { bg = color6, fg = color0 },                              -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    CurSearch { bg = color14, fg = color0 },                           -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SnippetTabStop { bg = color0, fg = color15 },                      -- Tabstops in snippets
    SpecialKey { bg = "NONE", fg = color2, gui = "italic" },                -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad { bg = "NONE", fg = "NONE", gui = "undercurl" },          -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap { SpellBad },                                             -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal { SpellBad },                                           -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare { SpellBad },                                            -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine { bg = color1, fg = color7 },                           -- status line of current window
    StatusLineNC { bg = color0, fg = color1 },                         -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine { StatusLineNC },                                          -- tab pages line, not active tab page label
    TabLineFill { bg = "NONE" },                                       -- tab pages line, where there are no labels
    TabLineSel { StatusLine },                                         -- tab pages line, active tab page label
    Title { bg = "NONE", fg = color15 },                               -- titles for output from ":set all", ":autocmd" etc.
    Visual { bg = color9, fg = color0 },                               -- Visual mode selection
    VisualNOS { QuickFixLine },                                        -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg { bg = color8, fg = color15, gui = "bold" },            -- warning messages
    Whitespace { bg = "NONE", fg = color8, ctermbg = none },           -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Winseparator { bg = "NONE", fg = color8 },                         -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu { PmenuSel },                                             -- current match in 'wildmenu' completion
    WinBar { },                                                        -- Window bar of current window
    WinBarNC { },                                                      -- Window bar of not-current windows

    FloatTitle { NormalFloat, fg = color15, gui = "bold" },            -- nvim.dressing rename pop-up title https://github.com/stevearc/dressing.nvim/issues/42
    FloatBorder { NormalFloat, fg = color2 },                          -- nvim.dressing rename pop-up border

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment { bg = "NONE", fg = color1, gui = "italic" },            -- Any comment

    Constant { bg = "NONE", fg = color10 },                          -- (*) Any constant
    -- String         { }, --   A string constant: "this is a string"
    -- Character      { }, --   A character constant: 'c', '\n'
    -- Number         { }, --   A number constant: 234, 0xff
    -- Boolean        { }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    Identifier { bg = "NONE", fg = color7 },  -- (*) Any variable name
    Function { bg = "NONE", fg = color12 },   --   Function name (also: methods for classes)

    Statement { bg = "NONE", fg = color2 },   -- (*) Any statement
    Conditional { bg = "NONE", fg = color4 }, --   if, then, else, endif, switch, etc.
    Repeat { bg = "NONE", fg = color4 },      --   for, do, while, etc.
    Label { bg = "NONE", fg = color7 },       --   case, default, etc.
    -- Operator       { }, -- "sizeof", "+", "*", etc.
    -- Keyword        { }, --  any other keyword
    -- Exception      { }, --  try, catch, throw

    PreProc { bg = "NONE", fg = color6 }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type { bg = "NONE", fg = color6, gui = "bold" }, -- (*) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    Special { bg = "NONE", fg = color13 }, -- (*) Any special symbol
    -- SpecialChar    { }, --  Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --  Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    Underlined { gui = "underline" },                 -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error { bg = color8, fg = color9, gui = "bold" }, -- Any erroneous construct
    Todo { Title },                                   -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

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
    sym"@string"            { fg = color11 }, -- String
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
    diffRemoved { fg = color1 }, -- Special
    diffChanged { fg = color10 }, -- PreProc
    diffAdded { fg = color11 },      -- Identifier
    -- diffLine {}, -- Statement
    -- diffSubname {}, -- PreProc
    -- diffComment {}, -- Comment

    -- nvim-cmp 
    CmpItemAbbrMatch { fg = color15, gui = "bold" },
    CmpItemAbbrMatchFuzzy { CmpItemAbbrMatch  },
    CmpItemKind { fg = color9 },
    CmpItemMenu { fg = color1, gui = "italic" },

    -- blink.cmp
    -- BlinkCmpMenu {},
    -- BlinkCmpMenuBorder {},
    -- BlinkCmpMenuSelection {},
    -- BlinkCmpScrollBarThumb {},
    -- BlinkCmpScrollBarGutter {},
    -- BlinkCmpLabel {},
    BlinkCmpLabelDeprecated { gui ="strikethrough" },
    BlinkCmpLabelMatch {CmpItemAbbrMatch },
    BlinkCmpLabelDetail { CmpItemKind },
    BlinkCmpLabelDescription { CmpItemKind  },
    BlinkCmpKind { Normal },
    BlinkCmpSource { CmpItemMenu },
    -- BlinkCmpGhostText {},
    -- BlinkCmpDoc {},
    -- BlinkCmpDocBorder {},
    -- BlinkCmpDocSeparator {},
    -- BlinkCmpDocCursorLine {},
    -- BlinkCmpSignatureHelp {},
    -- BlinkCmpSignatureHelpBorder {},
    -- BlinkCmpSignatureHelpActiveParameter {},

    -- Lualine
    LualineNormalA { bg = color4, fg = color0, gui = "bold" },
    LualineNormalB { bg = color8, fg = color15 },
    LualineNormalC { bg = color0, fg = color7 },

    LualineInactiveA { bg = color0, fg = color1 },
    LualineInactiveB { LualineInactiveA },
    LualineInactiveC { LualineInactiveA },

    LualineInsertA { bg = color14, fg = color0, gui = "bold" },
    LualineVisualA { Visual, gui = "bold" },
    LualineReplaceA { bg = color11, fg = color0, gui = "bold" },

    -- Telescope
    -- https://github.com/nvim-telescope/telescope.nvim
    -- https://github.com/nvim-telescope/telescope.nvim/blob/master/plugin/telescope.lua

    TelescopeTitle          { FloatTitle },
    TelescopeSelection      { PmenuSel }, -- " Selected item
    TelescopeSelectionCaret { TelescopeSelection, fg = color15, gui = "bold" }, -- " Selection caret
    TelescopeMultiSelection { TelescopeSelectionCaret, bg = "NONE", gui = "bold" }, -- " Multisections
    TelescopeNormal         { NormalFloat }, -- " Floating windows created by telescope

    -- Border highlight groups
    TelescopeBorder { FloatBorder }, -- guifg=#ffffff
    -- TelescopePromptBorder   { }, -- guifg=#ffffff
    -- TelescopeResultsBorder  { }, -- guifg=#ffffff
    -- TelescopePreviewBorder  { }, -- guifg=#ffffff

    -- Highlight characters your in put matches
    TelescopeMatching { bg = color6, fg = color0 }, -- guifg=blue

    -- Color the prompt prefix
    TelescopePromptPrefix { fg = color14 },  -- guifg=red
    TelescopePromptCounter { bg = "NONE", fg = color3 }, -- guifg=#ffffff

    TreesitterContext { bg = color0 },
    TreesitterContextLineNumber { LineNr, bg = color0 },
    TreesitterContextBottom { fg = color4, gui = "underline,bold" },

    GitSignsAdd { bg = "NONE", fg = color11 },
    GitSignsChange { bg = "NONE", fg = color3 },
    GitSignsDelete { bg = "NONE", fg = color1 },

    GitSignsAddPreview { DiffChange },                          -- Used for added lines in previews.
    GitSignsDeletePreview { DiffDelete },                       -- Used for deleted lines in previews.
    GitSignsCurrentLineBlame { NonText },                       -- Used for current line blame.
    GitSignsAddInline { DiffAdd },                              -- Used for added word diff regions in inline previews.
    GitSignsDeleteInline { bg = color8, fg = color7 },          -- Used for deleted word diff regions in inline previews.
    GitSignsChangeInline { GitSignsDeleteInline },              -- Used for changed word diff regions in inline previews.
    GitSignsAddLnInline { GitSignsAddInline },                  -- Used for added word diff regions when `config.word_diff == true`.
    GitSignsChangeLnInline { GitSignsChangeInline },            -- Used for changed word diff regions when `config.word_diff == true`.
    GitSignsDeleteLnInline { GitSignsDeleteInline },            -- Used for deleted word diff regions when `config.word_diff == true`.
    GitSignsDeleteVirtLn { DiffDelete },                        -- Used for deleted lines shown by inline `preview_hunk_inline()` or `show_deleted()`.
    GitSignsDeleteVirtLnInLine { GitSignsDeleteLnInline },      -- Used for word diff regions in lines shown by inline `preview_hunk_inline()` or `show_deleted()`.
    GitSignsVirtLnum { GitSignsDeleteVirtLn },                  -- Used for line numbers in inline hunks previews.

    -- Snacks
    SnacksNormal { Normal },
    SnacksNormalNC { NormalNC },
    SnacksWinBar { WinBar },
    SnacksWinBarNC { WinBarNC },

    SnacksInputNormal { NormalFloat },
    SnacksInputBorder { FloatBorder },
    SnacksInputTitle { FloatTitle },
    SnacksInputIcon { SnacksInputBorder },

    -- Neogit

		-- NeogitChangeModified {},
		-- NeogitChangeAdded {},
		-- NeogitChangeDeleted {},
		-- NeogitChangeRenamed {},
		-- NeogitChangeUpdated {},
		-- NeogitChangeCopied {},
		-- NeogitChangeBothModified {},
		-- NeogitChangeNewFile {},

		NeogitHunkHeader { Type },
		NeogitDiffContext { Normal },
		NeogitDiffAdd { DiffAdd, bg = "NONE" },
		NeogitDiffDelete { DiffDelete, bg = "NONE" },
		NeogitDiffHeader { Type },

		NeogitHunkHeaderHighlight { Pmenu, gui = "bold" },
		NeogitDiffContextHighlight { Normal, bg = color0.lighten(5) },
		NeogitDiffAddHighlight { DiffAdd },
		NeogitDiffDeleteHighlight { DiffDelete },
		NeogitDiffHeaderHighlight { PmenuSel, gui = "bold" },

    NeogitCursorLine { PmenuSel },

    MCPHubLink {},
    MCPHubKeymap {},
    MCPHubMuted {},
    MCPHubText {},
    MCPHubCode {},
    MCPHubJsonPunctuation {},
    MCPHubJsonProperty {},
    MCPHubJsonNull {},
    MCPHubJsonBoolean {},
    MCPHubJsonNumber {},
    MCPHubJsonString {},
    MCPHubHeading {},
    MCPHubHeader {},
    MCPHubHeaderShortcut {},
    MCPHubHeaderBtn {},
    MCPHubHeaderBtnShortcut {},
    MCPHubSeamlessBorder {},
    MCPHubButtonActive {},
    MCPHubButtonInactive {},
    MCPHubDiffAdd { DiffAdd },
    MCPHubDiffDelete { DiffDelete },
    MCPHubDiffChange { DiffChange },
    MCPHubTitle {},
    MCPHubInfo {},
    MCPHubSuccess {},
    MCPHubSuccessItalic {},
    MCPHubSuccessFill {},
    MCPHubWarning {},
    MCPHubWarnItalic {},
    MCPHubWarnFill {},
    MCPHubError {},
    MCPHubErrorFill {},

    -- @markup.heading.1.markdown (H1 icons)
    -- RenderMarkdownH1 {},
    -- @markup.heading.2.markdown (H2 icons)
    -- RenderMarkdownH2 {},
    -- @markup.heading.3.markdown (H3 icons)
    -- RenderMarkdownH3 {},
    -- @markup.heading.4.markdown (H4 icons)
    -- RenderMarkdownH4 {},
    -- @markup.heading.5.markdown (H5 icons)
    -- RenderMarkdownH5 {},
    -- @markup.heading.6.markdown (H6 icons)
    -- RenderMarkdownH6 {},
    -- DiffText (H1 background line)
    -- RenderMarkdownH1Bg {},
    -- DiffAdd (H2 background line)
    -- RenderMarkdownH2Bg {},
    -- DiffChange (H3 background line)
    -- RenderMarkdownH3Bg {},
    -- DiffDelete (H4 background line)
    -- RenderMarkdownH4Bg {},
    -- Visual (H5 background line)
    -- RenderMarkdownH5Bg {},
    -- CursorColumn (H6 background line)
    -- RenderMarkdownH6Bg {},
    -- ColorColumn (Code block background)
    RenderMarkdownCode { ColorColumn, bg = "NONE" },
    -- @label (Code info, after language)
    RenderMarkdownCodeInfo { RenderMarkdownCode },
    -- RenderMarkdownCode (Code border background)
    -- RenderMarkdownCodeBorder {},
    -- Normal (Fallback for code language)
    -- RenderMarkdownCodeFallback {},
    -- RenderMarkdownCode (Inline code background)
    -- RenderMarkdownCodeInline {},
    -- @markup.quote (Default for block quote)
    -- RenderMarkdownQuote {},
    -- RenderMarkdownQuote (Level 1 block quote marker)
    -- RenderMarkdownQuote1 {},
    -- RenderMarkdownQuote (Level 2 block quote marker)
    -- RenderMarkdownQuote2 {},
    -- RenderMarkdownQuote (Level 3 block quote marker)
    -- RenderMarkdownQuote3 {},
    -- RenderMarkdownQuote (Level 4 block quote marker)
    -- RenderMarkdownQuote4 {},
    -- RenderMarkdownQuote (Level 5 block quote marker)
    -- RenderMarkdownQuote5 {},
    -- RenderMarkdownQuote (Level 6 block quote marker)
    -- RenderMarkdownQuote6 {},
    -- RenderMarkdownCodeInline (Inline highlights contents)
    -- RenderMarkdownInlineHighlight {},
    -- Normal (List item bullet points)
    -- RenderMarkdownBullet {},
    -- LineNr (Thematic break line)
    -- RenderMarkdownDash {},
    -- SignColumn (Sign column background)
    -- RenderMarkdownSign {},
    -- @markup.math (Latex lines)
    -- RenderMarkdownMath {},
    -- Whitespace (Indent icon)
    -- RenderMarkdownIndent {},
    -- @comment (HTML comment inline text)
    -- RenderMarkdownHtmlComment {},
    -- @markup.link.label.markdown_inline (
    -- RenderMarkdownLink {},
    -- RenderMarkdownLink (WikiLink icon & text)
    -- RenderMarkdownWikiLink {},
    -- @markup.list.unchecked (Unchecked checkbox)
    -- RenderMarkdownUnchecked {},
    -- @markup.list.checked (Checked checkbox)
    -- RenderMarkdownChecked {},
    -- @markup.raw (Todo custom checkbox)
    -- RenderMarkdownTodo {},
    -- @markup.heading (Pipe table heading rows)
    -- RenderMarkdownTableHead {},
    -- Normal (Pipe table body rows)
    -- RenderMarkdownTableRow {},
    -- Conceal (Pipe table inline padding)
    -- RenderMarkdownTableFill {},
    -- DiagnosticOk (Success related callouts)
    -- RenderMarkdownSuccess {},
    -- DiagnosticInfo (Info related callouts)
    -- RenderMarkdownInfo {},
    -- DiagnosticHint (Hint related callouts)
    -- RenderMarkdownHint {},
    -- DiagnosticWarn (Warning related callouts)
    -- RenderMarkdownWarn {},
    -- DiagnosticError (Error related callouts)
    -- RenderMarkdownError {},

    -- LeapMatch { bg = color7, gui = 'underline' },
    -- LeapLabelPrimary {}
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
