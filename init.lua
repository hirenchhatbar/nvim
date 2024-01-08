local function script_path()
    local str = debug.getinfo(2, 'S').source:sub(2)
    return str:match('(.*' .. '/' .. ')')
end

package.path = package.path .. ';' .. script_path() .. '/?.lua'

require "options.init"
require "keymaps.init"

-- init https://github.com/folke/lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    require "plugins.telescope",
    require "plugins.bufferline",
    require "plugins.lualine",
    require "plugins.comment",
    require "plugins.nvim-lspconfig",
    require "plugins.mason",
    require "plugins.nvim-cmp",
    require "plugins.friendly-snippets",
    require "plugins.mini-pairs",
    require "plugins.mini-surround",
    require "plugins.lsp-signature",
    require "plugins.nvim-treesitter",
    require "plugins.nvim-treesitter-textobjects",
    require "plugins.dashboard-nvim",
    require "plugins.symbols-outline",
    require "plugins.conform",
    require "plugins.toggleterm",
    require "plugins.which-key",
    require "colorschemes.tokyonight",
}, opts)


-- keymaps
-- require "keymaps.?.lua"
