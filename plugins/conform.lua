return {
    'stevearc/conform.nvim',
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup {
            {
                -- Map of filetype to formatters
                formatters_by_ft = {
                    javascript = { "prettier" },
                    typescript = { "prettier" },
                    javascriptreact = { "prettier" },
                    typescriptreact = { "prettier" },
                    svelte = { "prettier" },
                    css = { "prettier" },
                    html = { "prettier" },
                    json = { "prettier" },
                    yaml = { "prettier" },
                    markdown = { "prettier" },
                    graphql = { "prettier" },
                    lua = { "stylua" },
                    php = { "php_cs_fixer" },
                    -- Conform will run multiple formatters sequentially
                    go = { "goimports", "gofmt" },
                    -- Use a sub-list to run only the first available formatter
                    -- javascript = { { "prettierd", "prettier" } },
                    -- Use the "*" filetype to run formatters on all filetypes.
                    ["*"] = { "codespell" },
                    -- Use the "_" filetype to run formatters on filetypes that don't
                    -- have other formatters configured.
                    ["_"] = { "trim_whitespace" },
                },
            },
            format_on_save = {
                -- These options will be passed to conform.format()
                timeout_ms = 500,
                lsp_fallback = true,
                async = false,
            },
        }

        vim.keymap.set({ "n", "v" }, "<leader>cf", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            })
        end, { desc = "Format file or range (in visual mode)" })
    end,
}
