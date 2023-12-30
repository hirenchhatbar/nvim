-- https://github.com/williamboman/mason-lspconfig.nvim

return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
    },
    config = function()
        require("mason-lspconfig").setup {
            ensure_installed = { "intelephense" },
        }
    end,
}