-- https://github.com/folke/which-key.nvim

return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    config = function()
        local builtin = require('telescope.builtin')

        local wk = require("which-key")

        wk.register({
          f = {
            name = "[f]ile", -- optional group name
            f = { "<cmd>Telescope find_files no_ignore=true hidden=true<cr>", "[f]ind file" },
            g = { builtin.live_grep, "find [g]rep" },
            b = { builtin.buffers, "find [b]uffers" },
            h = { builtin.help_tags, "find [h]elp" },
            c = { "<cmd>bdelete<cr>", "[c]lose file without saving" },
          },
          s = {
            name = "[s]earch", -- optional group name
            t = { "<cmd>Telescope treesitter<cr>", "[t]reesitter" },
            k = { "<cmd>Telescope keymaps<cr>", "keymap[s]" },
            h = { "<cmd>Telescope man_pages<cr>", "[h]elp / man pages" },
            s = { "<cmd>Telescope lsp_document_symbols<cr>", "[s]ymbols" },
          },
          q = {
            name = "[q]uit", -- optional group name
            q = { "<cmd>quit<cr>", "[q]uit" },
            a = { "<cmd>quitall<cr>", "quit [a]ll" },
            x = { "<cmd>q!<cr>", "quit without saving" },
          },
        }, { prefix = "<leader>" })
    end,
}