return {
    "simrat39/symbols-outline.nvim",
    config = function()
        require("symbols-outline").setup {
            auto_close = true
        }
    end,
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols outline" } },
}