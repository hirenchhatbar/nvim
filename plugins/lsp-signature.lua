-- https://github.com/ray-x/lsp_signature.nvim

return {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
    config = function()
        require('lsp_signature').setup {
            handler_opts = {
                border = "rounded"   -- double, rounded, single, shadow, none, or a table of borders
            },
        }
    end,
}