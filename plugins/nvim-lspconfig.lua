-- https://github.com/neovim/nvim-lspconfig

return {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local lspconfig = require('lspconfig')

        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        lspconfig.intelephense.setup {
            capabilities = capabilities
        }
    end,
}