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
            name = "File/Find", -- optional group name
            f = { "<cmd>Telescope find_files no_ignore=true hidden=true<cr>", "Find file" },
            r = { "<cmd>Telescope oldfiles<cr>", "Recent file" },
            g = { builtin.live_grep, "Find grep" },
            b = { builtin.buffers, "Find buffers" },
            h = { builtin.help_tags, "Find help" },
            w = { "<cmd>write<cr>", "Write(save) file" },
          },
          s = {
            name = "Search", -- optional group name
            t = { "<cmd>Telescope treesitter<cr>", "Treesitter" },
            k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
            h = { "<cmd>Telescope man_pages<cr>", "Help / man pages" },
            s = { "<cmd>Telescope lsp_document_symbols<cr>", "Symbols" },
          },
          b = {
            name = "Buffer", -- optional group name
            h = { "<cmd>bfirst<cr>", "First buffer" },
            j = { "<cmd>bnext<cr>", "Next buffer" },
            k = { "<cmd>bprevious<cr>", "Previous buffer" },
            l = { "<cmd>blast<cr>", "Previous buffer" },
            d = { "<cmd>bdelete<cr>", "Delete buffer" },
            a = { "<cmd>badd<cr>", "Add buffer" },
          },
          q = {
            name = "Quit", -- optional group name
            q = { "<cmd>quit<cr>", "Quit" },
            a = { "<cmd>quitall<cr>", "Quit all" },
            x = { "<cmd>q!<cr>", "Quit without saving" },
          },
        }, { prefix = "<leader>" })
    end,
}
