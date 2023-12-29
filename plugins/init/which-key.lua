local builtin = require('telescope.builtin')

local wk = require("which-key")

wk.register({
  f = {
    name = "File", -- optional group name
    f = { "<cmd>Telescope find_files no_ignore=true hidden=true<cr>", "Find file" },
    g = { builtin.live_grep, "Find grep" },
    b = { builtin.buffers, "Find buffers" },
    h = { builtin.help_tags, "Find help" },
    c = { "<cmd>bdelete<cr>", "Close file without saving" },
  },
  q = {
    name = "Quit", -- optional group name
    q = { "<cmd>quit<cr>", "Quit" },
    a = { "<cmd>quitall<cr>", "Quit all" },
    x = { "<cmd>q!<cr>", "Quit without saving" },
  },
}, { prefix = "<leader>" })