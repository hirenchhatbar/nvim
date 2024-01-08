-- https://github.com/nvim-telescope/telescope.nvim

return {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.5',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup{
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
                path_display = { "truncate " },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-j>"] = actions.move_selection_next, -- move to next result
                    },
                },
            },
        }

        telescope.load_extension("fzf")
    end,
}
