-- Set leader key to ","
vim.g.mapleader = ","

-- General settings
vim.opt.number = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.cursorline = true

require("config.lazy")
