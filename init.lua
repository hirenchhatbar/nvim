local function script_path()
  local str = debug.getinfo(2, 'S').source:sub(2)
  return str:match('(.*' .. '/' .. ')')
end

package.path = package.path .. ';' .. script_path() ..'/?.lua'


vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.termguicolors = true


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
    require "plugins.which-key",
    require "plugins.telescope",
    require "plugins.bufferline",
    require "plugins.lualine",
    require "plugins.mason",
    require "plugins.comment",
    require "colorschemes.tokyonight",
}, opts)


-- keymaps
-- require "keymaps.?.lua"


-- plugins.init
require "plugins.init.bufferline"
require "plugins.init.lualine"
require "plugins.init.mason"
require "plugins.init.comment"
require "plugins.init.which-key"
require "plugins.init.telescope"


-- colorschemes.init
require "colorschemes.init.tokyonight"