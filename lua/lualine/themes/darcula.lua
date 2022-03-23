local colors = require('darcula.colors')

local darcula = {
    normal = {
        a = { fg = colors.keyword, bg = colors.statusline.a_bg, gui = 'bold' },
        b = { fg = colors.number, bg = colors.statusline.b_bg },
        c = { fg = colors.text, bg = colors.statusline.c_bg }
    },

    insert = {
        a = { fg = colors.text, bg = colors.git.add, gui = 'bold' },
        b = { fg = colors.number, bg = colors.statusline.b_bg },
    },

    visual = {
        a = { fg = colors.text, bg = colors.selection, gui = 'bold' },
        b = { fg = colors.number, bg = colors.statusline.b_bg },
    },

    replace = {
        a = { fg = colors.bg_alt_1, bg = colors.keyword, gui = 'bold' },
        b = { fg = colors.number, bg = colors.statusline.b_bg },
    },

    command = {
        a = { fg = colors.keyword, bg = colors.statusline.a_bg, gui = 'bold' },
        b = { fg = colors.number, bg = colors.statusline.b_bg },
    },

    inactive = {
        a = { fg = colors.disabled, bg = colors.bg_alt_1, gui = 'bold' },
        b = { fg = colors.number, bg = colors.statusline.b_bg },
        c = { fg = colors.disabled, bg = colors.bg_alt_2 }
    },
}

return darcula
