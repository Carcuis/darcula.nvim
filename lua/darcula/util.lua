local util = {}
local darcula = require('darcula.theme')

-- Go trough the table and highlight the group with the color values
util.highlight = function (group, color)
    if color.style then
        if type(color.style) == "table" then
            color = vim.tbl_extend("force", color, color.style)
        elseif color.style:lower() ~= "none" then
            for s in string.gmatch(color.style, "([^,]+)") do
                color[s] = true
            end
        end
        color.style = nil
    end
    vim.api.nvim_set_hl(0, group, color)
end

-- Load the theme
function util.load()
    -- Set the theme environment
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "darcula"

    -- Load plugins, treesitter and lsp async
    local async
    async = vim.loop.new_async(vim.schedule_wrap(function ()
        darcula.loadTerminal()

        -- imort tables for plugins, treesitter and lsp
        local plugins = darcula.loadPlugins()
        local treesitter = darcula.loadTreeSitter()
        local lsp = darcula.loadLSP()

        -- loop trough the plugins table and highlight every member
        for group, colors in pairs(plugins) do
            util.highlight(group, colors)
        end

        -- loop trough the treesitter table and highlight every member
        for group, colors in pairs(treesitter) do
            util.highlight(group, colors)
        end

        -- loop trough the lsp table and highlight every member
        for group, colors in pairs(lsp) do
            util.highlight(group, colors)
        end

        async:close()

    end))

    -- load the most importaint parts of the theme
    local editor = darcula.loadEditor()
    local syntax = darcula.loadSyntax()

    -- load editor highlights
    for group, colors in pairs(editor) do
        util.highlight(group, colors)
    end

    -- load syntax highlights
    for group, colors in pairs(syntax) do
        util.highlight(group, colors)
    end

    -- load the rest later ( lsp, treesitter, plugins )
    async:send()

    -- load highlights that conflict with async loading
    local post_load = darcula.postLoad()
    for group, colors in pairs(post_load) do
        util.highlight(group, colors)
    end
end

return util
