local configs = require("nvim-treesitter.configs")

configs.setup({
    ensure_installed = { "php", "javascript", "html" },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
})