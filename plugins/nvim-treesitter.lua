-- https://github.com/nvim-treesitter/nvim-treesitter

return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "php", "javascript", "html", "lua", "go", "gomod", "gowork", "gosum" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<c-space>",
                    node_incremental = "<c-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
        })
    end,
    keys = {
        { "<c-space>", desc = "Increment selection" },
        { "<bs>", desc = "Decrement selection", mode = "x" },
    },
}
