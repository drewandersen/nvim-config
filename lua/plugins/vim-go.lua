return {
  "fatih/vim-go",
  build = ":GoUpdateBinaries", -- Automatically install/update binaries after installation
  config = function()
	  vim.g.go_fmt_command = "gopls"
	  vim.g.go_def_mode = "gopls"
	  vim.g.go_info_mode = "gopls"
  end,
}
