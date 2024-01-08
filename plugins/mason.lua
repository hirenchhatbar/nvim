-- https://github.com/williamboman/mason.nvim

return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        -- import mason
        local mason = require("mason")

        -- import mason-lspconfig
        local mason_lspconfig = require("mason-lspconfig")

        local mason_tool_installer = require("mason-tool-installer")

        -- enable mason and configure icons
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            -- list of servers for mason to install
            ensure_installed = {
                "intelephense",
                "html",
                "cssls",
                "lua_ls",
                "gopls",
            },
            -- auto-install configured servers (with lspconfig)
            automatic_installation = true, -- not the same as ensure_installed
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "prettier", -- prettier formatter
                "stylua",   -- lua formatter
                "eslint_d", -- js linter
                "css-lsp",
                "eslint_d",
                "gofumpt",
                "goimports",
                "gopls",
                "html-lsp",
                "impl",
                "intelephense",
                "lua-language-server",
                "php-cs-fixer",
                "phpcs",
                "prettier",
                "stylua",
            },
        })
    end,
}
