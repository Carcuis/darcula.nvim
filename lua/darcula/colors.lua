local darcula = {

	white =             '#f2f2f2',
	gray =              '#cccccc',
	black =             '#0c0c0c',
	red =               '#c50f1f',
	green =             '#13a10e',
	yellow =            '#c19c00',
	paleblue =          '#3a96dd',
	cyan =              '#61d6d6',
	blue =              '#0037da',
	purple =            '#881798',
	black_lighter =     '#767676',
	red_lighter =       '#e74856',
	green_lighter =     '#16c60c',
	yellow_lighter =    '#f9f1a5',
	blue_lighter =      '#3b78ff',
	purple_lighter =    '#b4009e',
    dark_green =        '#364135',

	bg =                '#2b2b2b',
	bg_alt_1 =          '#303030',
	bg_alt_2 =          '#3a3a3a',
	fg =                '#a9b7c6',
	text =              '#bbbbbb',
    string =            '#6a8759',
	comment =           '#808080',
    special_comment =   '#629755',
	selection =         '#214283',
	menu =              '#46484a',
    menu_scroll_bar =   '#616263',
	active =            '#113a5c',
	border =            '#414863',
	line_numbers =      '#606366',
    search =            '#32593d',
	incsearch =         '#155221',
	highlight =         '#155221',
	disabled =          '#606060',
	cursor =            '#ffffff',
    cursorline =        '#323232',
	accent =            '#a9b7c6',

    tag =               '#e8bf6a',
    scrollbar =         '#565656',
    sidebar =           '#3c3f41',
    gutter =            '#313335',

	error =             '#bc3f3c',
    warning =           '#be9117',
    info =              '#756d56',
    hint =              '#5896A6',
	link =              '#287bde',

    constant =          '#9876aa',
    keyword =           '#cc7832',
    number =            '#6897bb',
    pre_proc =          '#bab429',
    macro_name =        '#908b25',
    todo =              '#a8c023',
    function_name =     '#ffc66d',
    function_builtin =  '#8888c6',
    identifier =        '#b5b6e3',

    match_brace = {
        fg =    '#ffef28',
        bg =    '#3b514d',
    },

    statusline = {
        a_bg =          '#4e5254',
        b_bg =          '#2f2f2f',
        c_bg =          '#3c3f41',
    },

    lsp_highlight = {
        hl_bg_read  =   '#344134',
        hl_bg_write =   '#40332B',
    },

    git = {
        dirty_file =    '#5896a6',
        new_file =      '#d1675a',
        add =           '#384c38',
        change =        '#374752',
        delete =        '#656e76',
        add_fg =        '#88de88',
        change_fg =     '#49a8e7',
        delete_fg =     '#cf5344'
    },

    diff = {
        add =           '#294436',
        text =          '#385570',
        delete =        '#484a4a',
        change =        '#303c47',
    },

    fold = {
        fold_cl_fg =    '#8c8c8c',
        fold_cl_bg =    '#3a3a3a',
    },

    vertsplit = {
        fg =            '#313335',
        bg =            '#313335',
    },

	none =              'NONE'
}

if vim.g.darcula_transparent == 1 then
    darcula.bg =                'NONE'
    darcula.sidebar =           'NONE'
    darcula.gutter =            'NONE'
    darcula.vertsplit.fg =      '#3c3f41'
    darcula.vertsplit.bg =      'NONE'
    darcula.fold.fold_cl_bg =   'NONE'
end

return darcula
