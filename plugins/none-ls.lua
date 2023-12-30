return {
    "nvimtools/none-ls.nvim", -- configure formatters & linters
    lazy = true,
    event = { "BufReadPre", "BufNewFile" }, -- to enable uncomment this
    dependencies = {
      "jay-babu/mason-null-ls.nvim",
    },
    config = function()
        local mason_null_ls = require("mason-null-ls")

        local null_ls = require("null-ls")

        mason_null_ls.setup({
            ensure_installed = {
              "stylua", -- lua formatter
            },
        })

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.completion.spell,
            },
        })
    end,
}