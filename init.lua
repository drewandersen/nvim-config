-- Set leader key to ","
vim.g.mapleader = ","

-- set some keybinds
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>b", ":GoBuild<CR>", opts)        -- Run GoBuild
vim.keymap.set("n", "<leader>r", ":GoReferrers<CR>", opts)    -- Run GoReferrers
vim.keymap.set("n", "<leader>i", ":GoImplements<CR>", opts)   -- Run GoImplements

-- General settings
vim.opt.number = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.cursorline = true
vim.o.splitbelow = true
vim.o.splitright = true

-- Clipboard access
vim.opt.clipboard = "unnamedplus"

-- Autofill skeletons
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.sh",
  callback = function()
    vim.api.nvim_buf_set_lines(0, 0, 0, false, {
      "#!/usr/bin/env bash",
      ""
    })
    vim.cmd("normal! G")  -- move cursor to the end
  end,
})

require("config.lazy")
