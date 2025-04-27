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
        Debug =                 { fg = darcula.debug.break_point }, -- debugging statements
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

        DiagnosticError =       { fg = darcula.error },
        DiagnosticWarn =        { fg = darcula.warning },
        DiagnosticInfo =        { fg = darcula.info },
        DiagnosticHint =        { fg = darcula.hint },
        DiagnosticOk =          { fg = darcula.green },

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
        ps1Type =               { fg = darcula.syntax.powershell.type },
        ps1Variable =           { fg = darcula.text },

        zshFunction =           { fg = darcula.function_name },
        zshVariableDef =        { fg = darcula.text },

        ["@keyword.import.python"] =        { link = "@keyword" },
        ["@variable.builtin.python"] =      { fg = darcula.syntax.python.self },
        ["@variable.parameter.python"] =    { fg = darcula.syntax.python.parameter },
        ["@type.builtin.cpp"] =             { link = "@keyword" },
        ["@punctuation.delimiter.cpp"] =    { link = "@keyword" },
        ["@variable.builtin.vim"] =         { link = "@function.builtin" },
        ["@constant.builtin.vim"] =         { link = "PreProc" },
        ["@variable.bash"] =                { fg = darcula.text },
        ["@variable.cmake"] =               { fg = darcula.text },
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
        ["@variable.powershell"] =          { fg = darcula.text },
        ["@variable.parameter.powershell"] = { fg = darcula.text },
        ["@variable.parameter.vimdoc"] =    { fg = darcula.keyword },
        ["@operator.regex"] =               { fg = darcula.lsp.operator },
        ["@punctuation.bracket.regex"] =    { fg = darcula.number },
        ["@punctuation.delimiter.regex"] =  { fg = darcula.keyword },
        ["@string.escape.regex"] =          { fg = darcula.function_builtin },
        ["@string.regexp.regex"] =          { fg = darcula.keyword },
        ["@variable.builtin.regex"] =       { fg = darcula.function_builtin },
        ["@markup.heading.git_config"] =    { link = "@type" },
        ["@punctuation.bracket.gitignore"] =        { link = "@punctuation.bracket.regex" },
        ["@punctuation.delimiter.gitignore"] =      { fg = darcula.keyword },

    }

    return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

    local editor = {
        Normal =                { fg = darcula.fg, bg = darcula.bg },
        NormalFloat =           { fg = darcula.fg, bg = darcula.float_bg }, -- normal text and background color
        FloatBorder =           { fg = darcula.virt_column, bg = darcula.float_bg, bold = true },
        FloatTitle =            { fg = darcula.keyword, bg = darcula.float_bg, bold = true },
        FloatFooter =           { fg = darcula.keyword, bg = darcula.float_bg, bold = true },
        ColorColumn =           { fg = darcula.none, bg = darcula.sidebar }, --  used for the columns set with 'colorcolumn'
        Conceal =               { fg = darcula.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
        CurSearch =             { bg = darcula.incsearch, bold = true },
        Cursor =                { fg = darcula.cursor, bg = darcula.none, style = 'reverse' }, -- the character under the cursor
        CursorIM =              { fg = darcula.cursor, bg = darcula.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
        Directory =             { fg = darcula.comment, bg = darcula.none }, -- directory names (and other special names in listings)
        DiffAdd =               { bg = darcula.diff.add }, -- diff mode: Added line
        DiffChange =            { bg = darcula.diff.change }, --  diff mode: Changed line
        DiffDelete =            { bg = darcula.diff.delete }, -- diff mode: Deleted line
        DiffText =              { bg = darcula.diff.text }, -- diff mode: Changed text within a changed line
        Added =                 { fg = darcula.git.add_fg, bg = darcula.diff.add },
        Changed =               { fg = darcula.git.change_fg, bg = darcula.diff.change },
        Removed =               { fg = darcula.git.delete_fg, bg = darcula.diff.delete },
        EndOfBuffer =           { fg = darcula.sidebar },
        ErrorMsg =              { fg = darcula.warning },
        Folded =                { fg = darcula.disabled, bg = darcula.none, style = 'italic' },
        FoldColumn =            { fg = darcula.line_numbers, bg = darcula.gutter },
        IncSearch =             { bg = darcula.incsearch },
        LineNr =                { fg = darcula.line_numbers, bg = darcula.gutter },
        CursorLineNr =          { fg = darcula.fg, bg = darcula.gutter },
        MatchParen =            { fg = darcula.match_brace.fg, bg = darcula.match_brace.bg, style = 'bold' },
        ModeMsg =               { fg = darcula.comment, style = 'italic' },
        MoreMsg =               { fg = darcula.hint, style = 'bold' },
        NonText =               { fg = darcula.sidebar },
        Pmenu =                 { fg = darcula.text, bg = darcula.sidebar },
        PmenuSel =              { bg = darcula.active, style = 'bold' },
        PmenuSbar =             { fg = darcula.menu, bg = darcula.menu },
        PmenuThumb =            { fg = darcula.menu_scroll_bar, bg = darcula.menu_scroll_bar },
        Question =              { fg = darcula.keyword },
        QuickFixLine =          { bg = darcula.active, style = 'bold' },
        qfLineNr =              { fg = darcula.line_numbers, bg = darcula.gutter },
        qfSeparator =           { fg = darcula.vertsplit.fg, bg = darcula.vertsplit.bg },
        Search =                { bg = darcula.search },
        SpecialKey =            { fg = darcula.keyword },
        SpellBad =              { undercurl = true, sp = darcula.spell_undercurl },
        SpellCap =              { undercurl = true, sp = darcula.spell_undercurl },
        SpellLocal =            { undercurl = true, sp = darcula.spell_undercurl },
        SpellRare =             { undercurl = true, sp = darcula.spell_undercurl },
        StatusLine =            { fg = darcula.text, bg = darcula.gutter },
        StatusLineNC =          { fg = darcula.comment, bg = darcula.gutter },
        StatusLineTerm =        { link = "StatusLine" },
        StatusLineTermNC =      { link = "StatusLineNC" },
        TabLineFill =           { fg = darcula.fg },
        TablineSel =            { fg = darcula.bg, bg = darcula.fg },
        Tabline =               { fg = darcula.fg },
        TermCursor =            { fg = darcula.cursor, style = 'reverse' },
        Title =                 { fg = darcula.pre_proc, style = 'bold' },
        Visual =                { fg = darcula.none, bg = darcula.selection },
        VisualNOS =             { fg = darcula.none, bg = darcula.selection },
        WarningMsg =            { fg = darcula.warning },
        WildMenu =              { fg = darcula.orange, bg = darcula.none, style = 'bold' },
        CursorColumn =          { fg = darcula.none, bg = darcula.cursorline },
        CursorLine =            { fg = darcula.none, bg = darcula.cursorline },
        ToolbarLine =           { fg = darcula.fg, bg = darcula.bg_alt_2 },
        ToolbarButton =         { fg = darcula.fg, bg = darcula.none, style = 'bold' },
        Warnings =              { fg = darcula.warning },
        SignColumn =            { fg = darcula.fg, bg = darcula.gutter },
        healthError =           { fg = darcula.error },
        healthSuccess =         { fg = darcula.green },
        healthWarning =         { fg = darcula.warning },
        VertSplit =             { fg = darcula.vertsplit.fg, bg = darcula.vertsplit.bg },
        WinSeparator =          { fg = darcula.vertsplit.fg, bg = darcula.vertsplit.bg },
        WinBar =                { fg = darcula.text, bg = darcula.bg, bold = true },
        WinBarNC =              { fg = darcula.comment, bg = darcula.bg },

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
    vim.g.terminal_color_6 = darcula.cyan
    vim.g.terminal_color_7 = darcula.gray
    vim.g.terminal_color_8 = darcula.black_lighter
    vim.g.terminal_color_9 = darcula.red_lighter
    vim.g.terminal_color_10 = darcula.green_lighter
    vim.g.terminal_color_11 = darcula.yellow_lighter
    vim.g.terminal_color_12 = darcula.blue_lighter
    vim.g.terminal_color_13 = darcula.purple_lighter
    vim.g.terminal_color_14 = darcula.cyan_lighter
    vim.g.terminal_color_15 = darcula.white

end

theme.loadTreeSitter = function ()
    -- TreeSitter highlight groups

    local treesitter = {
        ["@attribute"] =                { fg = darcula.decorator },
        ["@attribute.builtin"] =        { fg = darcula.decorator },
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
        ["@punctuation"] =              { fg = darcula.keyword }, -- For punctuation.
        ["@punctuation.bracket"] =      { fg = darcula.fg }, -- For brackets and parens.
        ["@punctuation.delimiter"] =    { fg = darcula.fg }, -- For delimiters ie: `.`
        ["@punctuation.special"] =      { fg = darcula.keyword }, -- For special punctuation that does not fall in the catagories before.
        ["@string"] =                   { fg = darcula.string },    -- For strings.
        ["@string.documentation"] =     { fg = darcula.special_comment, italic = true },    -- For documentation.
        ["@string.regexp"] =            { fg = darcula.text }, -- For regexes.
        ["@string.escape"] =            { fg = darcula.keyword }, -- For escape characters within a string.
        ["@string.special"] =           { fg = darcula.special_comment },
        ["@string.special.path"] =      { fg = darcula.text },
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
        ["@comment.error"] =            { fg = darcula.error, style = 'bold,italic,reverse' }, -- For the keywords ERROR FIXME and DEPRECATED.
        ["@comment.warning"] =          { fg = darcula.warning, style = 'bold,italic,reverse' }, -- For the keywords WARNING FIX and HACK.
        ["@comment.todo"] =             { fg = darcula.todo, style = 'bold,italic,reverse' }, -- For the keywords TODO and WIP.
        ["@comment.note"] =             { fg = darcula.info, style = 'bold,italic,reverse' }, -- For the keywords NOTE INFO and XXX.
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

        -- highlighted yank
        HighlightedyankRegion =                 { bg = darcula.diff.add },

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
        CocInfoVirtualText =                    { fg = darcula.info, bg = darcula.gutter },
        CocHintVirtualText =                    { fg = darcula.hint, bg = darcula.gutter },
        CocErrorFloat =                         { fg = darcula.error },
        CocWarningFloat =                       { fg = darcula.warning },
        CocInfoFloat =                          { fg = darcula.info },
        CocHintFloat =                          { fg = darcula.hint },
        CocHighlightText =                      { bg = darcula.lsp.read }, -- used for highlighting "text" references
        CocHighlightRead =                      { bg = darcula.lsp.read }, -- used for highlighting "read" references
        CocHighlightWrite =                     { bg = darcula.lsp.write }, -- used for highlighting "write" references
        CocMenuSel =                            { bg = darcula.active, style = 'bold' },
        CocInlayHint =                          { fg = darcula.inlay_hint.fg, bg = darcula.inlay_hint.bg },

        -- Custom highlight, not original coc.nvim
        CocNotification =                       { fg = darcula.disabled, bg = vim.g.darcula_transparent == 0 and darcula.bg or darcula.float_bg },
        CocErrorLualine =                       { fg = darcula.error, bg = darcula.float_bg },
        CocWarningLualine =                     { fg = darcula.warning, bg = darcula.float_bg },
        CocInfoLualine =                        { fg = darcula.info, bg = darcula.float_bg },
        CocHintLualine =                        { fg = darcula.hint, bg = darcula.float_bg },

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
        CocSemTypeOperator =                    { fg = darcula.lsp.operator },

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

        -- GitGutter
        GitGutterAdd =                          { fg = darcula.git.add, bg = darcula.gutter },
        GitGutterChange =                       { fg = darcula.git.change, bg = darcula.gutter },
        GitGutterDelete =                       { fg = darcula.git.delete, bg = darcula.gutter },

        -- GitSigns
        GitSignsAdd =                           { fg = darcula.git.add, bg = darcula.gutter },
        GitSignsAddNr =                         { fg = darcula.git.add_fg, bg = darcula.gutter },
        GitSignsAddLn =                         { bg = darcula.git.add },
        GitSignsAddPreview =                    { fg = darcula.git.add_fg, bg = darcula.diff.add },
        GitSignsAddInline =                     { reverse = true },
        GitSignsChange =                        { fg = darcula.git.change, bg = darcula.gutter },
        GitSignsChangeNr =                      { fg = darcula.git.change_fg, bg = darcula.gutter },
        GitSignsChangeLn =                      { bg = darcula.git.change },
        GitSignsDelete =                        { fg = darcula.git.delete, bg = darcula.gutter },
        GitSignsDeleteNr =                      { fg = darcula.git.delete, bg = darcula.gutter },
        GitSignsDeleteLn =                      { bg = darcula.git.delete },
        GitSignsDeletePreview =                 { fg = darcula.git.delete_fg, bg = darcula.diff.delete },
        GitSignsDeleteInline =                  { fg = darcula.bg, bg = darcula.git.delete },
        GitSignsCurrentLineBlame =              { fg = darcula.disabled, style = "bold,italic" },
        GitSignsStagedAdd =                     { fg = darcula.diff.add, bg = darcula.gutter },
        GitSignsStagedAddNr =                   { fg = darcula.git.add_fg, bg = darcula.gutter },
        GitSignsStagedAddLn =                   { bg = darcula.diff.add },
        GitSignsStagedChange =                  { fg = darcula.diff.change, bg = darcula.gutter },
        GitSignsStagedChangeNr =                { fg = darcula.git.change_fg, bg = darcula.gutter },
        GitSignsStagedChangeLn =                { bg = darcula.diff.change },
        GitSignsStagedChangeDelete =            { link = "GitSignsStagedChange" },
        GitSignsStagedChangeDeleteNr =          { link = "GitSignsStagedChangeNr" },
        GitSignsStagedChangeDeleteLn =          { link = "GitSignsStagedChangeLn" },
        GitSignsStagedDelete =                  { fg = darcula.diff.delete, bg = darcula.gutter },
        GitSignsStagedDeleteNr =                { fg = darcula.git.delete, bg = darcula.gutter },
        GitSignsStagedDeleteLn =                { bg = darcula.diff.delete },

        -- Telescope
        TelescopeTitle =                        { fg = darcula.keyword, bold = true },
        TelescopeBorder =                       { fg = darcula.cursorline, bg = darcula.float_bg, bold = true },
        TelescopePromptCounter =                { fg = darcula.disabled },
        TelescopePromptPrefix =                 { fg = darcula.green },
        TelescopeSelectionCaret =               { fg = darcula.special_comment, bg = darcula.selection },
        TelescopeSelection =                    { bg = darcula.selection, bold = true },
        TelescopeMatching =                     { fg = darcula.keyword },
        TelescopeNormal =                       { fg = darcula.fg, bg = darcula.float_bg },

        -- WhichKey
        -- WhichKey =                              { fg = darcula.fg , style = 'bold'},
        -- WhichKeyGroup =                         { fg = darcula.text },
        -- WhichKeyDesc =                          { fg = darcula.blue, style = 'italic' },
        WhichKeySeparator =                     { fg = darcula.number },
        -- WhichKeyFloating =                      { bg = darcula.float },
        -- WhichKeyFloat =                         { bg = darcula.float },

        -- Scrollbar
        ScrollbarHandle =                       { bg = darcula.scrollbar },
        ScrollbarCursor =                       { fg = darcula.inlay_hint.fg, bg = darcula.scrollbar },
        ScrollbarCursorHandle =                 { fg = darcula.inlay_hint.fg, bg = darcula.scrollbar },
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

        -- vim-trailing-whitespace
        ExtraWhitespace =                       { bg = darcula.diff.delete },

        -- lualine
        LualineGitAdd =                         { fg = darcula.git.add_fg, bg = darcula.statusline.c_bg },
        LualineGitChange =                      { fg = darcula.git.change_fg, bg = darcula.statusline.c_bg },
        LualineGitDelete =                      { fg = darcula.git.delete, bg = darcula.statusline.c_bg },

        -- virt-column
        VirtColumn =                            { fg = darcula.virt_column },

        -- DropBar
        DropBarCurrentContext =                 { bg = darcula.active },
        DropBarHover =                          { bg = darcula.cursorline },
        DropBarMenuHoverEntry =                 { bg = darcula.menu },
        DropBarMenuHoverIcon =                  { bg = darcula.active },
        DropBarMenuHoverSymbol =                { bold = true },
        DropBarPreview =                        { bg = darcula.cursorline },

        -- Nvim Surround
        NvimSurroundHighlight =                 { link = "PmenuSel" },

        -- Toggle Term (custom, not original)
        ToggleTermNormal =                      { bg = darcula.terminal_bg },
        ToggleTermNormalFloat =                 { bg = darcula.terminal_bg },
        ToggleTermFloatBorder =                 { fg = darcula.virt_column, bg = darcula.terminal_bg, bold = true },

        -- Nvim Treesitter Context
        TreesitterContext =                     { link = "NormalFloat" },
        TreesitterContextLineNumber =           { fg = darcula.line_numbers, bg = darcula.float_bg },

        -- Nvim Notify
        NotifyBackground =                      { bg = vim.g.darcula_transparent == 0 and darcula.bg or darcula.float_bg },
        NotifyERRORBorder =                     { fg = darcula.virt_column, bg = vim.g.darcula_transparent == 0 and darcula.bg or darcula.float_bg },
        NotifyWARNBorder =                      { fg = darcula.virt_column, bg = vim.g.darcula_transparent == 0 and darcula.bg or darcula.float_bg },
        NotifyINFOBorder =                      { fg = darcula.virt_column, bg = vim.g.darcula_transparent == 0 and darcula.bg or darcula.float_bg },
        NotifyDEBUGBorder =                     { fg = darcula.virt_column, bg = vim.g.darcula_transparent == 0 and darcula.bg or darcula.float_bg },
        NotifyTRACEBorder =                     { fg = darcula.virt_column, bg = vim.g.darcula_transparent == 0 and darcula.bg or darcula.float_bg },
        NotifyERRORBody =                       vim.g.darcula_transparent == 1 and { bg = darcula.float_bg } or nil,
        NotifyWARNBody =                        vim.g.darcula_transparent == 1 and { bg = darcula.float_bg } or nil,
        NotifyINFOBody =                        vim.g.darcula_transparent == 1 and { bg = darcula.float_bg } or nil,
        NotifyDEBUGBody =                       vim.g.darcula_transparent == 1 and { bg = darcula.float_bg } or nil,
        NotifyTRACEBody =                       vim.g.darcula_transparent == 1 and { bg = darcula.float_bg } or nil,

        -- Bufferline
        BufferLineIndicatorSelected =           vim.g.transparent_background == 1 and { fg = darcula.disabled } or nil,
        BufferLineSeparator =                   vim.g.transparent_background == 1 and { fg = darcula.vertsplit.fg } or nil,
        BufferLineTabSeparator =                vim.g.transparent_background == 1 and { fg = darcula.vertsplit.fg } or nil,
        BufferLineTabSeparatorSelected =        vim.g.transparent_background == 1 and { fg = darcula.disabled } or nil,

        -- Diffview
        DiffviewNormal =                        { bg = darcula.sidebar },
        DiffviewNonText =                       { fg = darcula.comment },
        DiffviewFilePanelCounter =              { fg = darcula.comment, style = "bold" },
        DiffviewFilePanelInsertions =           { fg = darcula.git.add_fg },
        DiffviewFilePanelDeletions =            { fg = darcula.git.delete },
        DiffviewFolderName =                    { fg = darcula.comment, style = "bold" },
        DiffviewFolderSign =                    { fg = darcula.comment },
        DiffviewStatusAdded =                   { fg = darcula.git.add_fg },
        DiffviewStatusUntracked =               { fg = darcula.git.new_file },
        DiffviewStatusModified =                { fg = darcula.git.change_fg },
        DiffviewStatusRenamed =                 { fg = darcula.git.change_fg },
        DiffviewStatusCopied =                  { fg = darcula.git.change_fg },
        DiffviewStatusTypeChanged =             { fg = darcula.git.change_fg },
        DiffviewStatusUnmerged =                { fg = darcula.git.change_fg },
        DiffviewStatusDeleted =                 { fg = darcula.git.delete },
        DiffviewDiffDeleteDim =                 { fg = darcula.comment, bg = darcula.bg_alt_1 },

        -- Nvim Dap (custom, not original)
        DapBreakpoint =                         { fg = darcula.debug.break_point, bg = darcula.gutter },
        DapBreakpointLine =                     { bg = darcula.debug.break_line },
        DapBreakpointRejected =                 { fg = darcula.debug.bp_rejected, bg = darcula.gutter },
        DapBreakpointRejectedLine =             { bg = darcula.debug.break_line },
        DapLogPoint =                           { fg = darcula.debug.log_point, bg = darcula.gutter},
        DapLogPointLine =                       { bg = darcula.debug.break_line },
        DapStopped =                            { fg = darcula.debug.stop_sign, bg = darcula.gutter },
        DapStoppedLine =                        { bg = darcula.debug.stop_line },

        -- markdown.nvim
        RenderMarkdownBullet =                  { link = "@markup.list" },
        RenderMarkdownCode =                    { bg = darcula.bg_alt_1 },
        RenderMarkdownCodeInline =              { link = "@markup.raw.markdown_inline" },
        RenderMarkdownDash =                    { fg = darcula.virt_column },
        RenderMarkdownQuote =                   { fg = darcula.comment },
        RenderMarkdownTableHead =               { fg = darcula.keyword },
        RenderMarkdownTableRow =                { fg = darcula.comment },
        RenderMarkdownTodo =                    { fg = darcula.keyword },

        -- Dap-breakpoints
        DapBreakpointVirt =                     { fg = darcula.debug.break_point },
        DapBreakpointVirtPrefix =               { fg = darcula.debug.break_point },
        DapLogPointVirt =                       { fg = darcula.string },
        DapLogPointVirtPrefix =                 { fg = darcula.string },
        DapConditionalPointVirt =               { fg = darcula.info },
        DapConditionalPointVirtPrefix =         { fg = darcula.info },
        DapHitConditionPointVirt =              { fg = darcula.hint },
        DapHitConditionPointVirtPrefix =        { fg = darcula.hint },

        -- Helpview
        HelpviewMentionlink =                   { fg = darcula.hint, bg = darcula.bg_alt_1 },

        -- Quicker
        qfSeparatorLeft =                       { fg = darcula.vertsplit.fg },
        qfSeparatorRight =                      { fg = darcula.vertsplit.fg },
        QuickFixHeaderHard =                    { fg = darcula.black_lighter },
        QuickFixHeaderSoft =                    { fg = darcula.black_lighter },

        -- Grug Far
        GrugFarInputLabel =                     { fg = darcula.keyword },
        GrugFarResultsNumberLabel =             { fg = darcula.comment },

        -- CsvView
        CsvViewDelimiter =                      { fg = darcula.disabled },
        CsvViewStickyHeaderSeparator =          { fg = darcula.disabled, bg = darcula.gutter },
        CsvViewHeaderLine =                     { bg = darcula.gutter },

    }

    return plugins

end

theme.preLoad = function()
    -- Groups loaded before async highlighting

    local groups = {
        -- startify
        StartifyBracket =                       { fg = darcula.disabled },
        StartifyHeader =                        { fg = darcula.hint, style = 'bold' },
        StartifyNumber =                        { fg = darcula.number, style = 'bold' },
        StartifySlash =                         { fg = darcula.disabled },
        StartifyFile =                          { fg = darcula.text, style = 'bold' },
    }

    return groups

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
