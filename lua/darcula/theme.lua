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

        ["@include.python"] =   { link = "@keyword" },
        ["@type.cpp"] =         { link = "@keyword" },
        ["@punctuation.delimiter.cpp"] =    { link = "@keyword" },
        ["@variable.builtin.vim"] =         { link = "@function.builtin" },
        ["@constant.builtin.vim"] =         { link = "PreProc" },
        ["@variable.bash"] =    { fg = darcula.text },

    }

    return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

    local editor = {
        Normal =                { fg = darcula.fg, bg = darcula.bg },
        NormalFloat =           { fg = darcula.fg, bg = darcula.float_bg }, -- normal text and background color
        ColorColumn =           { fg = darcula.none, bg = darcula.active }, --  used for the columns set with 'colorcolumn'
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
        QuickFixLine =          { fg = darcula.highlight, bg = darcula.white, style = 'reverse' },
        qfLineNr =              { fg = darcula.highlight, bg = darcula.white, style = 'reverse' },
        Search =                { bg = darcula.search },
        SpecialKey =            { fg = darcula.keyword },
        SpellBad =              { fg = darcula.red, bg = darcula.none, style = 'italic,undercurl' },
        SpellCap =              { fg = darcula.blue, bg = darcula.none, style = 'italic,undercurl' },
        SpellLocal =            { fg = darcula.cyan, bg = darcula.none, style = 'italic,undercurl' },
        SpellRare =             { fg = darcula.purple, bg = darcula.none, style = 'italic,undercurl' },
        StatusLine =            { fg = darcula.fg, bg = darcula.menu },
        StatusLineNC =          { fg = darcula.text, bg = darcula.menu },
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
        -- TSAnnotation =               { fg = darcula.pre_proc },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        -- TSAttribute =                { fg = darcula.pre_proc },    -- (unstable) TODO: docs
        ["@boolean"] =                  { fg = darcula.keyword },    -- For booleans.
        ["@character"] =                { fg = darcula.string },    -- For characters.
        ["@constructor"] =              { fg = darcula.function_name }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        ["@constant"] =                 { fg = darcula.constant },    -- For constants
        ["@constant.builtin"] =         { fg = darcula.keyword },    -- For constant that are built in the language: `nil` in Lua.
        ["@constant.macro"] =           { fg = darcula.pre_proc },    -- For constants that are defined by macros: `NULL` in C.
        -- TSError =                    { fg = darcula.error },    -- For syntax/parser errors.
        -- TSException =                { fg = darcula.keyword },    -- For exception related keywords.
        ["@field"] =                    { fg = darcula.constant }, -- For fields.
        -- TSFloat =                    { fg = darcula.number },    -- For floats.
        ["@include"] =                  { fg = darcula.pre_proc },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        ["@label"] =                    { fg = darcula.keyword }, -- For labels: `label:` in C and `:label:` in Lua.
        ["@namespace"] =                { fg = darcula.identifier },    -- For identifiers referring to modules and namespaces.
        -- TSNone =                     { },    -- TODO: docs
        -- TSNumber =                   { fg = darcula.number },    -- For all numbers
        -- TSOperator =                 { fg = darcula.fg }, -- For any operator: `+`, but also `->` and `*` in C.
        -- TSParameter =                { fg = darcula.fg }, -- For parameters of a function.
        -- TSParameterReference=        { fg = darcula.paleblue },    -- For references to parameters of a function.
        ["@property"] =                 { fg = darcula.constant }, -- Same as `TSField`.
        ["@punctuation"] =              { fg = darcula.keyword }, -- For punctutation.
        ["@punctuation.bracket"] =      { fg = darcula.fg }, -- For brackets and parens.
        ["@punctuation.delimiter"] =    { fg = darcula.fg }, -- For delimiters ie: `.`
        ["@punctuation.special"] =      { fg = darcula.keyword }, -- For special punctutation that does not fall in the catagories before.
        ["@string"] =                   { fg = darcula.string },    -- For strings.
        ["@string.regex"] =             { fg = darcula.number }, -- For regexes.
        ["@string.escape"] =            { fg = darcula.keyword }, -- For escape characters within a string.
        ["@string.special"] =           { fg = darcula.special_comment },
        -- TSSymbol =                   { fg = darcula.yellow },    -- For identifiers referring to symbols or atoms.
        ["@type"] =                     { fg = darcula.identifier },    -- For types.
        -- TSTypeBuiltin =              { fg = darcula.function_builtin },    -- For builtin types.
        -- ["@tag"] =                   { fg = darcula.tag },    -- Tags like html tag names.
        -- TSTagDelimiter =             { fg = darcula.yellow },    -- Tag delimiter like `<` `>` `/`
        ["@text"] =                     { fg = darcula.text },    -- For strings considered text in a markup language.
        ["@text.reference"] =           { fg = darcula.number }, -- FIXME
        ["@text.underline"] =           { fg = darcula.fg, style = 'underline' },    -- For text to be represented with an underline.
        ["@text.title"] =               { fg = darcula.pre_proc, style = 'bold' },    -- Text that is part of a title.
        ["@text.url"] =                 { fg = darcula.link },    -- Any URI like a link or email.
        ["@text.literal"] =             { fg = darcula.string },
        -- TSEmphasis =                 { fg = darcula.paleblue },    -- For text to be represented with emphasis.
        -- TSStrike =                   { },    -- For strikethrough text.
        -- TSLiteral =                  { fg = darcula.fg },    -- Literal text.
        ["@conditional"] =              { fg = darcula.keyword },    -- For keywords related to conditionnals.
        ["@keyword"] =                  { fg = darcula.keyword }, -- For keywords that don't fall in previous categories.
        ["@keyword.operator"] =         { fg = darcula.keyword }, -- For keyword operators like `and` or `or`.
        ["@keyword.function"] =         { fg = darcula.keyword }, -- For keywords used to define a fuction.
        ["@repeat"] =                   { fg = darcula.keyword },    -- For keywords related to loops.
        ["@method"] =                   { fg = darcula.function_name },    -- For method calls and definitions.
        ["@function"] =                 { fg = darcula.function_name },    -- For fuction (calls and definitions).
        ["@function.builtin"] =         { fg = darcula.function_builtin },    -- For builtin functions: `table.insert` in Lua.
        ["@function.macro"] =           { fg = darcula.macro_name },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        ["@variable"] =                 { fg = darcula.fg }, -- Any variable name that does not have another highlight.
        ["@variable.builtin"] =         { fg = darcula.keyword }, -- Variable names that are defined by the languages, like `this` or `self`.
        ["@comment"] =                  { fg = darcula.comment, style = 'italic' },
    }

    return treesitter

end

theme.loadLSP = function ()
    -- Lsp highlight groups

    local lsp = {
        LspDiagnosticsDefaultError =            { fg = darcula.error }, -- used for "Error" diagnostic virtual text
        LspDiagnosticsSignError =               { fg = darcula.error }, -- used for "Error" diagnostic signs in sign column
        LspDiagnosticsFloatingError =           { fg = darcula.error }, -- used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextError =        { fg = darcula.error }, -- Virtual text "Error"
        LspDiagnosticsUnderlineError =          { style = 'undercurl', sp = darcula.error }, -- used to underline "Error" diagnostics.
        LspDiagnosticsDefaultWarning =          { fg = darcula.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning =             { fg = darcula.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsFloatingWarning =         { fg = darcula.yellow}, -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextWarning =      { fg = darcula.yellow}, -- Virtual text "Warning"
        LspDiagnosticsUnderlineWarning =        { style = 'undercurl', sp = darcula.yellow }, -- used to underline "Warning" diagnostics.
        LspDiagnosticsDefaultInformation =      { fg = darcula.paleblue }, -- used for "Information" diagnostic virtual text
        LspDiagnosticsSignInformation =         { fg = darcula.paleblue }, -- used for "Information" diagnostic signs in sign column
        LspDiagnosticsFloatingInformation =     { fg = darcula.paleblue }, -- used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextInformation =  { fg = darcula.paleblue }, -- Virtual text "Information"
        LspDiagnosticsUnderlineInformation =    { style = 'undercurl', sp = darcula.paleblue }, -- used to underline "Information" diagnostics.
        LspDiagnosticsDefaultHint =             { fg = darcula.purple  }, -- used for "Hint" diagnostic virtual text
        LspDiagnosticsSignHint =                { fg = darcula.purple  }, -- used for "Hint" diagnostic signs in sign column
        LspDiagnosticsFloatingHint =            { fg = darcula.purple  }, -- used for "Hint" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextHint =         { fg = darcula.purple  }, -- Virtual text "Hint"
        LspDiagnosticsUnderlineHint =           { style = 'undercurl', sp = darcula.paleblue }, -- used to underline "Hint" diagnostics.
        LspReferenceText =                      { bg = darcula.lsp_highlight.hl_bg_read }, -- used for highlighting "text" references
        LspReferenceRead =                      { bg = darcula.lsp_highlight.hl_bg_read }, -- used for highlighting "read" references
        LspReferenceWrite =                     { bg = darcula.lsp_highlight.hl_bg_write }, -- used for highlighting "write" references
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
        CocErrorVirtualText =                   { fg = darcula.error, bg = darcula.gutter },
        CocWarningVirtualText =                 { fg = darcula.warning, bg = darcula.gutter },
        CocInfoVirtualText =                    { fg = darcula.hint, bg = darcula.gutter },
        CocHintVirtualText =                    { fg = darcula.hint, bg = darcula.gutter },
        CocHighlightText =                      { bg = darcula.lsp_highlight.hl_bg_read }, -- used for highlighting "text" references
        CocHighlightRead =                      { bg = darcula.lsp_highlight.hl_bg_read }, -- used for highlighting "read" references
        CocHighlightWrite =                     { bg = darcula.lsp_highlight.hl_bg_write }, -- used for highlighting "write" references
        CocMenuSel =                            { bg = darcula.active, style = 'bold' },
        CocInlayHint =                          { fg = darcula.inlay_hint.fg, bg = darcula.inlay_hint.bg },
        CocSemProperty =                        { link = "@constant" },
        CocSemClass =                           { link = "@type" },
        CocSemEnum =                            { link = "@type" },
        CocSemEnumMember =                      { link = "EnumMember" },
        CocSemMacro =                           { link = "@function.macro" },
        CocSemType =                            { link = "@type" },
        CocSemDefaultLibrary =                  { link = "@function.builtin" },
        CocSemDefaultLibraryClass =             { link = "@type" },
        CocSemDefaultLibraryInterface =         { link = "@type" },
        CocSemDefaultLibraryEnum =              { link = "@type" },
        CocSemDefaultLibraryType =              { link = "@type" },
        CocSemDefaultLibraryNamespace =         { link = "@type" },
        -- CocSemDeclaration =                     { link = "TSTypeDeclaration" },
        CocSemDeclarationClass =                { link = "@type" },
        CocSemDeclarationInterface =            { link = "@type" },
        CocSemDeclarationEnum =                 { link = "@type" },
        CocSemDeclarationType =                 { link = "@type" },
        CocSemDeclarationNamespace =            { link = "@type" },

        -- Dashboard
        DashboardShortCut =                     { fg = darcula.blue },
        DashboardHeader =                       { fg = darcula.red },
        DashboardCenter =                       { fg = darcula.cyan },
        DashboardFooter =                       { fg = darcula.green, style = "italic" },

        -- LspTrouble
        LspTroubleText =                        { fg = darcula.text },
        LspTroubleCount =                       { fg = darcula.purple, bg = darcula.active },
        LspTroubleNormal =                      { fg = darcula.fg, bg = darcula.sidebar },

        -- Diff
        diffAdded =                             { fg = darcula.green },
        diffRemoved =                           { fg = darcula.red },
        diffChanged =                           { fg = darcula.yellow },
        diffOldFile =                           { style = "bold" },
        diffNewFile =                           { style = "bold" },
        diffFile =                              { style = "bold" },
        diffLine =                              { fg = darcula.comment },
        diffIndexLine =                         { fg = darcula.comment },

        -- Neogit
        NeogitBranch =                          { fg = darcula.paleblue },
        NeogitRemote =                          { fg = darcula.purple },
        NeogitHunkHeader =                      { fg = darcula.fg, bg = darcula.highlight },
        NeogitHunkHeaderHighlight =             { fg = darcula.blue, bg = darcula.menu },
        NeogitDiffContextHighlight =            { fg = darcula.text, bg = darcula.menu },
        NeogitDiffDeleteHighlight =             { fg = darcula.red },
        NeogitDiffAddHighlight =                { fg = darcula.green },

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
        GitSignsCurrentLineBlame =              { fg = darcula.git.add_fg },

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

        -- IndentBlankline
        IndentBlanklineChar =                   { fg = darcula.statusline.c_bg },

        -- Nvim Hlslens
        HlSearchNear =                          { fg = darcula.text, bg = darcula.incsearch, style = "bold" },
        HlSearchLens =                          { fg = darcula.text, bg = darcula.search, style = "reverse" },
        HlSearchLensNear =                      { fg = darcula.text, bg = darcula.incsearch, style = "bold" },
        HlSearchFloat =                         { bg = darcula.incsearch },

        -- vim-trailing-whitespace
        ExtraWhitespace =                       { bg = darcula.diff.delete },

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
        NvimTreeFolderIcon=                     { fg = darcula.accent },
        -- NvimTreeIndentMarker =                  { fg = darcula.disabled },
        NvimTreeLspDiagnosticsError =           { fg = darcula.error },
        NvimTreeLspDiagnosticsWarning =         { fg = darcula.warning },
        NvimTreeLspDiagnosticsInformation =     { fg = darcula.info },
        NvimTreeLspDiagnosticsHint =            { fg = darcula.hint },

    }

    return groups

end

return theme
