local darcula = require("darcula.colors")

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups

    local syntax = {
        Type =                  { fg = darcula.keyword }, -- int, long, char, etc.
        StorageClass =          { fg = darcula.keyword }, -- static, register, volatile, etc.
        Structure =             { fg = darcula.keyword }, -- struct, union, enum, etc.
        Constant =              { fg = darcula.constant }, -- any constant
        String =                { fg = darcula.string }, -- Any string
        Character =             { fg = darcula.string }, -- any character constant: 'c', '\n'
        Number =                { fg = darcula.number }, -- a number constant: 5
        Boolean =               { fg = darcula.keyword }, -- a boolean constant: TRUE, false
        Float =                 { fg = darcula.number }, -- a floating point constant: 2.3e10
        Statement =             { fg = darcula.keyword }, -- any statement
        Label =                 { fg = darcula.keyword }, -- case, default, etc.
        Operator =              { fg = darcula.fg }, -- sizeof", "+", "*", etc.
        Exception =             { fg = darcula.keyword }, -- try, catch, throw
        PreProc =               { fg = darcula.pre_proc }, -- generic Preprocessor
        Include =               { fg = darcula.pre_proc }, -- preprocessor #include
        Define =                { fg = darcula.pre_proc }, -- preprocessor #define
        Macro =                 { fg = darcula.macro_name }, -- same as Define
        Typedef =               { fg = darcula.keyword }, -- A typedef
        PreCondit =             { fg = darcula.pre_proc }, -- preprocessor #if, #else, #endif, etc.
        Special =               { fg = darcula.keyword }, -- any special symbol
        SpecialChar =           { fg = darcula.keyword }, -- special character in a constant
        Tag =                   { fg = darcula.tag }, -- you can use CTRL-] on this
        Delimiter =             { fg = darcula.keyword }, -- character that needs attention like , or .
        SpecialComment =        { fg = darcula.special_comment, style = 'italic' }, -- special things inside a comment
        Debug =                 { fg = darcula.red }, -- debugging statements
        Underlined =            { fg = darcula.link, style = 'underline' }, -- text that stands out, HTML links
        Ignore =                { fg = darcula.disabled }, -- left blank, hidden
        Error =                 { fg = darcula.error, style = 'bold,underline' }, -- any erroneous construct
        Todo =                  { fg = darcula.todo, style = 'bold,italic,reverse' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
        Conditional =           { fg = darcula.keyword }, -- normal if, then, else, endif, switch, etc.
        Keyword =               { fg = darcula.keyword }, -- normal for, do, while, etc.
        Repeat =                { fg = darcula.keyword }, -- normal any other keyword
        Function =              { fg = darcula.function_name },
        Comment =               { fg = darcula.comment, style = 'italic' },
        Identifier =            { fg = darcula.fg },
        EnumMember =            { fg = darcula.constant, style = 'italic' },

        htmlLink =              { fg = darcula.link, style = "underline" },
        htmlH1 =                { fg = darcula.constant, style = "bold" },
        htmlH2 =                { fg = darcula.constant, style = "bold" },
        htmlH3 =                { fg = darcula.constant, style = "bold" },
        htmlH4 =                { fg = darcula.constant, style = "bold" },
        htmlH5 =                { fg = darcula.constant, style = "bold" },
        markdownH1 =            { fg = darcula.constant, style = "bold" },
        markdownH2 =            { fg = darcula.constant, style = "bold" },
        markdownH3 =            { fg = darcula.constant, style = "bold" },
        markdownH1Delimiter =   { fg = darcula.keyword },
        markdownH2Delimiter =   { fg = darcula.keyword },
        markdownH3Delimiter =   { fg = darcula.keyword },
        markdownUrl =           { fg = darcula.function_name, style = "italic,underline" },
        markdownLink =          { fg = darcula.link, style = "underline" },
        markdownLinkDelimiter = { fg = darcula.string, style = "underline" },
        markdownLinkTextDelimiter = { fg = darcula.link, style = "underline" },

        helpHyperTextJump =     { fg = darcula.number },
        helpCommand =           { fg = darcula.keyword },

        jsonBraces =            { fg = darcula.fg },
        jsonKeyword =           { fg = darcula.constant },
        jsonNoise =             { fg = darcula.keyword },
        jsonKeywordMatch  =     { fg = darcula.keyword },
        jsonBoolean =           { fg = darcula.keyword },
        jsonNull =              { fg = darcula.keyword },
        jsonEscape =            { fg = darcula.keyword },
        jsonStringMatch =       { fg = darcula.string },

        ps1Function =           { link = "@function" },
        ps1Variable =           { fg = darcula.text },

        ["@keyword.import.python"] =        { link = "@keyword" },
        ["@variable.builtin.python"] =      { fg = darcula.python_self },
        ["@variable.parameter.python"] =    { fg = darcula.python_parameter },
        ["@type.builtin.cpp"] =             { link = "@keyword" },
        ["@punctuation.delimiter.cpp"] =    { link = "@keyword" },
        ["@variable.builtin.vim"] =         { link = "@function.builtin" },
        ["@constant.builtin.vim"] =         { link = "PreProc" },
        ["@variable.bash"] =                { fg = darcula.text },
        ["@markup.link.markdown_inline"] =          { fg = darcula.string },
        ["@markup.raw.markdown_inline"] =           { bg = darcula.sidebar },
        ["@markup.heading.1.markdown"] =            { fg = darcula.constant, style = 'bold' },
        ["@markup.heading.2.markdown"] =            { fg = darcula.constant, style = 'bold' },
        ["@markup.heading.3.markdown"] =            { fg = darcula.constant, style = 'bold' },
        ["@markup.heading.4.markdown"] =            { fg = darcula.constant, style = 'bold' },
        ["@markup.heading.5.markdown"] =            { fg = darcula.constant, style = 'bold' },
        ["@markup.heading.6.markdown"] =            { fg = darcula.constant, style = 'bold' },
        ["@markup.heading.1.marker.markdown"] =     { fg = darcula.keyword, style = 'bold' },
        ["@markup.heading.2.marker.markdown"] =     { fg = darcula.keyword, style = 'bold' },
        ["@markup.heading.3.marker.markdown"] =     { fg = darcula.keyword, style = 'bold' },
        ["@markup.heading.4.marker.markdown"] =     { fg = darcula.keyword, style = 'bold' },
        ["@markup.heading.5.marker.markdown"] =     { fg = darcula.keyword, style = 'bold' },
        ["@markup.heading.6.marker.markdown"] =     { fg = darcula.keyword, style = 'bold' },
        ["@label.json"] =                   { fg = darcula.constant },
        ["@punctuation.delimiter.json"] =   { fg = darcula.keyword },
        ["@label.jsonc"] =                  { fg = darcula.constant },
        ["@punctuation.delimiter.jsonc"] =  { fg = darcula.keyword },
        ["@keyword.json5"] =                { fg = darcula.constant },

    }

    return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

    local editor = {
        Normal =                { fg = darcula.fg, bg = darcula.bg },
        NormalFloat =           { fg = darcula.fg, bg = darcula.float_bg }, -- normal text and background color
        ColorColumn =           { fg = darcula.none, bg = darcula.sidebar }, --  used for the columns set with 'colorcolumn'
        Conceal =               { fg = darcula.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor =                { fg = darcula.cursor, bg = darcula.none, style = 'reverse' }, -- the character under the cursor
        CursorIM =              { fg = darcula.cursor, bg = darcula.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
        Directory =             { fg = darcula.comment, bg = darcula.none }, -- directory names (and other special names in listings)
        DiffAdd =               { fg = darcula.none, bg = darcula.diff.add }, -- diff mode: Added line
        DiffChange =            { fg = darcula.none, bg = darcula.diff.change }, --  diff mode: Changed line
        DiffDelete =            { fg = darcula.none, bg = darcula.diff.delete }, -- diff mode: Deleted line
        DiffText =              { fg = darcula.none, bg = darcula.diff.text }, -- diff mode: Changed text within a changed line
        EndOfBuffer =           { fg = darcula.sidebar },
        ErrorMsg =              { fg = darcula.yellow },
        Folded =                { fg = darcula.disabled, bg = darcula.none, style = 'italic' },
        FoldColumn =            { fg = darcula.fold.fold_cl_fg, bg = darcula.fold.fold_cl_bg },
        IncSearch =             { bg = darcula.incsearch },
        LineNr =                { fg = darcula.line_numbers, bg = darcula.gutter },
        CursorLineNr =          { fg = darcula.accent, bg = darcula.gutter },
        MatchParen =            { fg = darcula.match_brace.fg, bg = darcula.match_brace.bg, style = 'bold' },
        ModeMsg =               { fg = darcula.comment, style = 'italic' },
        MoreMsg =               { fg = darcula.hint, style = 'bold' },
        NonText =               { fg = darcula.sidebar },
        Pmenu =                 { fg = darcula.text, bg = darcula.sidebar },
        PmenuSel =              { bg = darcula.active, style = 'bold' },
        PmenuSbar =             { fg = darcula.menu, bg = darcula.menu },
        PmenuThumb =            { fg = darcula.menu_scroll_bar, bg = darcula.menu_scroll_bar },
        Question =              { fg = darcula.keyword },
        QuickFixLine =          { bg = darcula.cursorline, style = 'bold' },
        qfLineNr =              { fg = darcula.line_numbers, bg = darcula.gutter },
        Search =                { bg = darcula.search },
        SpecialKey =            { fg = darcula.keyword },
        SpellBad =              { undercurl = true, sp = darcula.spell_undercurl },
        SpellCap =              { undercurl = true, sp = darcula.spell_undercurl },
        SpellLocal =            { undercurl = true, sp = darcula.spell_undercurl },
        SpellRare =             { undercurl = true, sp = darcula.spell_undercurl },
        StatusLine =            { fg = darcula.fg, bg = darcula.gutter },
        StatusLineNC =          { fg = darcula.text, bg = darcula.gutter },
        StatusLineTerm =        { fg = darcula.fg, bg = darcula.menu },
        StatusLineTermNC =      { fg = darcula.text, bg = darcula.disabled },
        TabLineFill =           { fg = darcula.fg },
        TablineSel =            { fg = darcula.bg, bg = darcula.accent },
        Tabline =               { fg = darcula.fg },
        Title =                 { fg = darcula.pre_proc, style = 'bold' },
        Visual =                { fg = darcula.none, bg = darcula.selection },
        VisualNOS =             { fg = darcula.none, bg = darcula.selection },
        WarningMsg =            { fg = darcula.yellow },
        WildMenu =              { fg = darcula.orange, bg = darcula.none, style = 'bold' },
        CursorColumn =          { fg = darcula.none, bg = darcula.cursorline },
        CursorLine =            { fg = darcula.none, bg = darcula.cursorline },
        ToolbarLine =           { fg = darcula.fg, bg = darcula.bg_alt_2 },
        ToolbarButton =         { fg = darcula.fg, bg = darcula.none, style = 'bold' },
        NormalMode =            { fg = darcula.accent, bg = darcula.none, style = 'reverse' },
        InsertMode =            { fg = darcula.green, bg = darcula.none, style = 'reverse' },
        ReplacelMode =          { fg = darcula.red, bg = darcula.none, style = 'reverse' },
        VisualMode =            { fg = darcula.purple, bg = darcula.none, style = 'reverse' },
        CommandMode =           { fg = darcula.gray, bg = darcula.none, style = 'reverse' },
        Warnings =              { fg = darcula.yellow },
        SignColumn =            { fg = darcula.fg, bg = darcula.gutter },
        healthError =           { fg = darcula.error },
        healthSuccess =         { fg = darcula.green },
        healthWarning =         { fg = darcula.yellow },
        VertSplit =             { fg = darcula.vertsplit.fg, bg = darcula.vertsplit.bg },
        WinSeparator =          { fg = darcula.vertsplit.fg, bg = darcula.vertsplit.bg },
        WinBar =                { fg = darcula.text, bg = darcula.bg, bold = true },
        WinBarNC =              { fg = darcula.comment, bg = darcula.bg },
        FloatBorder =           { fg = darcula.hint, style = 'bold' },

    }

    return editor
end

theme.loadTerminal = function ()

    vim.g.terminal_color_0 = darcula.black
    vim.g.terminal_color_1 = darcula.red
    vim.g.terminal_color_2 = darcula.green
    vim.g.terminal_color_3 = darcula.yellow
    vim.g.terminal_color_4 = darcula.blue
    vim.g.terminal_color_5 = darcula.purple
    vim.g.terminal_color_6 = darcula.paleblue
    vim.g.terminal_color_7 = darcula.gray
    vim.g.terminal_color_8 = darcula.black_lighter
    vim.g.terminal_color_9 = darcula.red_lighter
    vim.g.terminal_color_10 = darcula.green_lighter
    vim.g.terminal_color_11 = darcula.yellow_lighter
    vim.g.terminal_color_12 = darcula.blue_lighter
    vim.g.terminal_color_13 = darcula.purple_lighter
    vim.g.terminal_color_14 = darcula.cyan
    vim.g.terminal_color_15 = darcula.white

end

theme.loadTreeSitter = function ()
    -- TreeSitter highlight groups

    local treesitter = {
        ["@attribute"] =                { fg = darcula.decorator },
        ["@boolean"] =                  { fg = darcula.keyword },    -- For booleans.
        ["@character"] =                { fg = darcula.string },    -- For characters.
        ["@character.special"] =        { fg = darcula.keyword },    -- For special characters.
        ["@constructor"] =              { fg = darcula.function_name }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        ["@constant"] =                 { fg = darcula.constant },    -- For constants
        ["@constant.builtin"] =         { fg = darcula.keyword },    -- For constant that are built in the language: `nil` in Lua.
        ["@constant.macro"] =           { fg = darcula.pre_proc },    -- For constants that are defined by macros: `NULL` in C.
        ["@label"] =                    { fg = darcula.keyword }, -- For labels: `label:` in C and `:label:` in Lua.
        ["@module"] =                   { fg = darcula.identifier },    -- For identifiers referring to modules and namespaces.
        ["@number"] =                   { fg = darcula.number },    -- For all numbers
        ["@number.float"] =             { fg = darcula.number },    -- For floats.
        ["@operator"] =                 { fg = darcula.fg }, -- For any operator: `+`, but also `->` and `*` in C.
        ["@property"] =                 { fg = darcula.constant }, -- Same as `@variable.member`.
        ["@punctuation"] =              { fg = darcula.keyword }, -- For punctutation.
        ["@punctuation.bracket"] =      { fg = darcula.fg }, -- For brackets and parens.
        ["@punctuation.delimiter"] =    { fg = darcula.fg }, -- For delimiters ie: `.`
        ["@punctuation.special"] =      { fg = darcula.keyword }, -- For special punctutation that does not fall in the catagories before.
        ["@string"] =                   { fg = darcula.string },    -- For strings.
        ["@string.documentation"] =     { fg = darcula.special_comment, italic = true },    -- For documentation.
        ["@string.regexp"] =            { fg = darcula.number }, -- For regexes.
        ["@string.escape"] =            { fg = darcula.keyword }, -- For escape characters within a string.
        ["@string.special"] =           { fg = darcula.special_comment },
        ["@string.special.symbol"] =    { fg = darcula.keyword },
        ["@type"] =                     { fg = darcula.identifier },    -- For types.
        ["@type.builtin"] =             { fg = darcula.function_builtin },    -- For builtin types.
        ["@type.qualifier"] =           { fg = darcula.keyword },
        ["@tag"] =                      { fg = darcula.tag },    -- Tags like html tag names.
        ["@markup"] =                   { fg = darcula.text },    -- For strings considered text in a markup language.
        ["@markup.heading"] =           { fg = darcula.pre_proc, style = 'bold' },    -- Text that is part of a title.
        ["@markup.link"] =              { fg = darcula.number },
        ["@markup.link.label"] =        { fg = darcula.link },
        ["@markup.link.url"] =          { fg = darcula.link },    -- Any URI like a link or email.
        ["@markup.list"] =              { fg = darcula.keyword },
        ["@markup.raw"] =               { fg = darcula.string },
        ["@markup.raw.delimiter"] =     { fg = darcula.keyword },
        ["@markup.strong"] =            { bold = true },
        ["@markup.italic"] =            { italic = true },
        ["@markup.strikethrough"] =     { strikethrough = true },
        ["@markup.underline"] =         { fg = darcula.fg, style = 'underline' },
        ["@keyword"] =                  { fg = darcula.keyword }, -- For keywords that don't fall in previous categories.
        ["@keyword.conditional"] =      { fg = darcula.keyword },    -- For keywords related to conditionnals.
        ["@keyword.directive"] =        { fg = darcula.pre_proc },
        ["@keyword.directive.define"] = { fg = darcula.pre_proc },
        ["@keyword.exception"] =        { fg = darcula.keyword },    -- For exception related keywords.
        ["@keyword.operator"] =         { fg = darcula.keyword }, -- For keyword operators like `and` or `or`.
        ["@keyword.function"] =         { fg = darcula.keyword }, -- For keywords used to define a fuction.
        ["@keyword.repeat"] =           { fg = darcula.keyword },    -- For keywords related to loops.
        ["@keyword.import"] =           { fg = darcula.pre_proc },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        ["@function"] =                 { fg = darcula.function_name },    -- For fuction (calls and definitions).
        ["@function.method"] =          { fg = darcula.function_name },    -- For method definitions.
        ["@function.method.call"] =     { fg = darcula.function_name },    -- For method calls.
        ["@function.builtin"] =         { fg = darcula.function_builtin },    -- For builtin functions: `table.insert` in Lua.
        ["@function.macro"] =           { fg = darcula.macro_name },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        ["@variable"] =                 { fg = darcula.fg }, -- Any variable name that does not have another highlight.
        ["@variable.builtin"] =         { fg = darcula.keyword }, -- Variable names that are defined by the languages, like `this` or `self`.
        ["@variable.member"] =          { fg = darcula.constant }, -- For fields.
        ["@variable.parameter"] =       { fg = darcula.fg }, -- For parameters of a function.
        ["@comment"] =                  { fg = darcula.comment, italic = true },
        ["@comment.documentation"] =    { fg = darcula.special_comment, italic = true },
        ["@comment.todo"] =             { fg = darcula.todo, style = 'bold,italic,reverse' }, -- For the keywords TODO FIXME and XXX.
    }

    return treesitter

end

theme.loadLSP = function ()
    -- Lsp highlight groups

    local lsp = {
        -- TODO, use coc.nvim instead

    }

    return lsp

end

theme.loadPlugins = function()
    -- Plugins highlight groups

    local plugins = {

        -- startify
        StartifyBracket =                       { fg = darcula.disabled },
        StartifyHeader =                        { fg = darcula.hint, style = 'bold' },
        StartifyNumber =                        { fg = darcula.number, style = 'bold' },
        StartifySlash =                         { fg = darcula.disabled },
        StartifyFile =                          { fg = darcula.text, style = 'bold' },

        -- Coc
        CocErrorSign =                          { fg = darcula.error, bg = darcula.gutter },
        CocWarningSign =                        { fg = darcula.warning, bg = darcula.gutter },
        CocInfoSign =                           { fg = darcula.info, bg = darcula.gutter },
        CocHintSign =                           { fg = darcula.hint, bg = darcula.gutter },
        CocErrorHighlight =                     { undercurl = true, sp = darcula.error },
        CocWarningHighlight =                   { bg = darcula.warning_bg, undercurl = true, sp = darcula.warning },
        CocInfoHighlight =                      { bg = darcula.warning_bg },
        CocHintHighlight =                      { bg = darcula.warning_bg },
        CocErrorVirtualText =                   { fg = darcula.error, bg = darcula.gutter },
        CocWarningVirtualText =                 { fg = darcula.warning, bg = darcula.gutter },
        CocInfoVirtualText =                    { fg = darcula.hint, bg = darcula.gutter },
        CocHintVirtualText =                    { fg = darcula.hint, bg = darcula.gutter },
        CocHighlightText =                      { bg = darcula.lsp_highlight.hl_bg_read }, -- used for highlighting "text" references
        CocHighlightRead =                      { bg = darcula.lsp_highlight.hl_bg_read }, -- used for highlighting "read" references
        CocHighlightWrite =                     { bg = darcula.lsp_highlight.hl_bg_write }, -- used for highlighting "write" references
        CocMenuSel =                            { bg = darcula.active, style = 'bold' },
        CocInlayHint =                          { fg = darcula.inlay_hint.fg, bg = darcula.inlay_hint.bg },

        CocSemType =                            { link = "@type" },
        CocSemTypeFunction =                    { link = "@function" },
        CocSemTypeMethod =                      { link = "@function" },
        CocSemTypeParameter =                   { link = "@variable.parameter" },
        CocSemTypeProperty =                    { link = "@property" },
        CocSemTypeClass =                       { link = "@type" },
        CocSemTypeEnum =                        { link = "@type" },
        CocSemTypeEnumMember =                  { link = "EnumMember" },
        CocSemTypeMacro =                       { link = "@function.macro" },
        CocSemTypeNamespace =                   { link = "@type" },
        CocSemTypeVariable =                    { link = "@variable" },

        CocSemModDefaultLibrary =               { link = "@function.builtin" },
        CocSemTypeModFunctionDefaultLibrary =   { link = "@function.builtin" },
        CocSemTypeModMethodDefaultLibrary =     { link = "@function.builtin" },
        CocSemTypeModPropertyDefaultLibrary =   { link = "@function.builtin" },
        CocSemTypeModClassDefaultLibrary =      { link = "@function.builtin" },
        CocSemTypeModInterfaceDefaultLibrary =  { link = "@function.builtin" },
        CocSemTypeModEnumDefaultLibrary =       { link = "@function.builtin" },
        CocSemTypeModEnumMemberDefaultLibrary = { fg = darcula.function_builtin, italic = true },
        CocSemTypeModNamespaceDefaultLibrary =  { link = "@function.builtin" },
        CocSemTypeModVariableDefaultLibrary =   { link = "@function.builtin" },

        -- Diff
        diffAdded =                             { fg = darcula.green },
        diffRemoved =                           { fg = darcula.red },
        diffChanged =                           { fg = darcula.yellow },
        diffOldFile =                           { style = "bold" },
        diffNewFile =                           { style = "bold" },
        diffFile =                              { style = "bold" },
        diffLine =                              { fg = darcula.comment },
        diffIndexLine =                         { fg = darcula.comment },

        -- GitGutter
        GitGutterAdd =                          { fg = darcula.git.add, bg = darcula.gutter }, -- diff mode: Added line |diff.txt|
        GitGutterChange =                       { fg = darcula.git.change, bg = darcula.gutter }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete =                       { fg = darcula.git.delete, bg = darcula.gutter }, -- diff mode: Deleted line |diff.txt|

        -- GitSigns
        GitSignsAdd =                           { fg = darcula.git.add, bg = darcula.gutter }, -- diff mode: Added line |diff.txt|
        GitSignsAddNr =                         { fg = darcula.git.add_fg, bg = darcula.gutter }, -- diff mode: Added line |diff.txt|
        GitSignsAddLn =                         { fg = darcula.git.none, bg = darcula.git.add }, -- diff mode: Added line |diff.txt|
        GitSignsChange =                        { fg = darcula.git.change, bg = darcula.gutter }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr =                      { fg = darcula.git.change_fg, bg = darcula.gutter }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn =                      { fg = darcula.git.none, bg = darcula.git.change }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete =                        { fg = darcula.git.delete, bg = darcula.gutter }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr =                      { fg = darcula.git.delete_fg, bg = darcula.gutter }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn =                      { fg = darcula.git.none, bg = darcula.git.delete }, -- diff mode: Deleted line |diff.txt|
        GitSignsCurrentLineBlame =              { fg = darcula.disabled, style = "bold,italic" },

        -- Telescope
        -- TelescopePromptBorder =                 { fg = darcula.hint },
        -- TelescopeResultsBorder =                { fg = darcula.hint },
        -- TelescopePreviewBorder =                { fg = darcula.hint },
        TelescopeBorder =                       { fg = darcula.hint, bg = darcula.float_bg, style = "bold" },
        TelescopePromptPrefix =                 { fg = darcula.special_comment },
        TelescopeSelectionCaret =               { fg = darcula.special_comment, bg = darcula.selection },
        TelescopeSelection =                    { bg = darcula.selection, style = "bold" },
        TelescopeMatching =                     { fg = darcula.keyword },
        TelescopeNormal =                       { fg = darcula.fg, bg = darcula.float_bg },

        -- WhichKey
        -- WhichKey =                              { fg = darcula.accent , style = 'bold'},
        -- WhichKeyGroup =                         { fg = darcula.text },
        -- WhichKeyDesc =                          { fg = darcula.blue, style = 'italic' },
        WhichKeySeparator =                     { fg = darcula.number },
        -- WhichKeyFloating =                      { bg = darcula.float },
        -- WhichKeyFloat =                         { bg = darcula.float },

        -- Sneak
        Sneak =                                 { fg = darcula.bg, bg = darcula.accent },
        SneakScope =                            { bg = darcula.selection },

        -- Nvim dap
        DapBreakpoint =                         { fg = darcula.red },
        DapStopped =                            { fg = darcula.green },

        -- Scrollbar
        ScrollbarHandle =                       { bg = darcula.scrollbar },
        ScrollbarCursor =                       { fg = darcula.bg, style = "bold" },
        ScrollbarCursorHandle =                 { fg = darcula.bg, bg = darcula.scrollbar },
        ScrollbarError =                        { fg = darcula.error, style = "bold" },
        ScrollbarErrorHandle =                  { fg = darcula.error, bg = darcula.scrollbar },
        ScrollbarHint =                         { fg = darcula.hint, style = "bold" },
        ScrollbarHintHandle =                   { fg = darcula.hint, bg = darcula.scrollbar },
        ScrollbarInfo =                         { fg = darcula.info, style = "bold" },
        ScrollbarInfoHandle =                   { fg = darcula.info, bg = darcula.scrollbar },
        ScrollbarWarn =                         { fg = darcula.warning, style = "bold" },
        ScrollbarWarnHandle =                   { fg = darcula.warning, bg = darcula.scrollbar },
        ScrollbarSearch =                       { fg = darcula.search, style = "bold" },
        ScrollbarSearchHandle =                 { fg = darcula.search, bg = darcula.scrollbar },
        ScrollbarMisc =                         { bg = darcula.scrollbar, style = "bold" },
        ScrollbarMiscHandle =                   { bg = darcula.scrollbar },
        ScrollbarGitAdd =                       { fg = darcula.diff.add, bg = darcula.diff.add },
        ScrollbarGitAddHandle =                 { fg = darcula.scrollbar, bg = darcula.scrollbar },
        ScrollbarGitChange =                    { fg = darcula.diff.change, bg = darcula.diff.change },
        ScrollbarGitChangeHandle =              { fg = darcula.scrollbar, bg = darcula.scrollbar },
        ScrollbarGitDelete =                    { fg = darcula.git.delete },
        ScrollbarGitDeleteHandle =              { fg = darcula.git.delete, bg = darcula.scrollbar },

        -- Nvim Hlslens
        HlSearchNear =                          { fg = darcula.text, bg = darcula.incsearch, style = "bold" },
        HlSearchLens =                          { fg = darcula.text, bg = darcula.search, style = "reverse" },
        HlSearchLensNear =                      { fg = darcula.text, bg = darcula.incsearch, style = "bold" },
        HlSearchFloat =                         { bg = darcula.incsearch },

        -- vim-trailing-whitespace
        ExtraWhitespace =                       { bg = darcula.diff.delete },

        -- lualine
        LualineGitAdd =                         { fg = darcula.git.add_fg, bg = darcula.statusline.c_bg },
        LualineGitChange =                      { fg = darcula.git.change_fg, bg = darcula.statusline.c_bg },
        LualineGitDelete =                      { fg = darcula.git.delete, bg = darcula.statusline.c_bg },

        -- DropBar
        DropBarCurrentContext =                 { bg = darcula.active },
        DropBarHover =                          { bg = darcula.cursorline },
        DropBarMenuHoverEntry =                 { bg = darcula.menu },
        DropBarPreview =                        { bg = darcula.cursorline },

        -- Nvim Surround
        NvimSurroundHighlight =                 { link = "PmenuSel" },

    }

    return plugins

end

theme.postLoad = function ()
    -- Groups loaded after async highlighting

    local groups = {
        -- NvimTree
        NvimTreeNormal =                        { fg = darcula.fg, bg = darcula.sidebar },
        NvimTreeRootFolder =                    { fg = darcula.keyword, style = "bold,underline" },
        NvimTreeGitDirty =                      { fg = darcula.git.dirty_file },
        NvimTreeGitNew =                        { fg = darcula.git.new_file },
        NvimTreeGitStaged =                     { fg = darcula.git.dirty_file },
        NvimTreeImageFile =                     { fg = darcula.purple },
        NvimTreeExecFile =                      { fg = darcula.green },
        NvimTreeSpecialFile =                   { fg = darcula.yellow , style = "bold,underline" },
        NvimTreeFolderName=                     { fg = darcula.fg, style = "bold" },
        NvimTreeOpenedFolderName=               { fg = darcula.fg, style = "bold,italic" },
        NvimTreeEmptyFolderName=                { fg = darcula.fg },
        NvimTreeFolderIcon=                     { fg = darcula.comment },
        -- NvimTreeIndentMarker =                  { fg = darcula.disabled },
        NvimTreeLspDiagnosticsError =           { fg = darcula.error },
        NvimTreeLspDiagnosticsWarning =         { fg = darcula.warning },
        NvimTreeLspDiagnosticsInformation =     { fg = darcula.info },
        NvimTreeLspDiagnosticsHint =            { fg = darcula.hint },
        NvimTreeModifiedIcon =                  { fg = darcula.string },

        -- IndentBlankline
        IblIndent =                             { fg = darcula.statusline.c_bg },
        IblWhitespace =                         { fg = darcula.fg },
        IblScope =                              { fg = darcula.line_numbers },
    }

    return groups

end

return theme
