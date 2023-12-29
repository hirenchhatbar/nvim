require('telescope').setup{
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
            '--no-ignore', -- **This is the added flag**
            '--hidden' -- **Also this flag. The combination of the two is the same as `-uu`**
        },
    },
}