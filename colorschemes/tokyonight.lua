-- https://github.com/folke/tokyonight.nvim

return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        vim.cmd[[colorscheme tokyonight-moon]]
    end,
}