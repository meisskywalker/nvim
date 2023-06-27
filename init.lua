-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("plugin-setup")
require("core.keymaps")
require("core.options")

require("plugins.lsp")
require("plugins.nvim-cmp")
require("plugins.telescope")
require("plugins.treesitter")