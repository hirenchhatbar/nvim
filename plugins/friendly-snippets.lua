-- https://github.com/rafamadriz/friendly-snippets

return {
    "rafamadriz/friendly-snippets",
    config = function()
        require("luasnip.loaders.from_vscode").lazy_load {
            include = { "php" },
        }
    end,
}