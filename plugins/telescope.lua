-- https://github.com/nvim-telescope/telescope.nvim

return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
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
    end,
}