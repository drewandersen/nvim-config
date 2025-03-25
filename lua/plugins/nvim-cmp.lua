return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "L3MON4D3/LuaSnip",
  },
  config = function()
    local cmp = require("cmp")
    local context = require("cmp.config.context")

    cmp.setup({
      enabled = function()
        -- Disable completion in comments
        if context.in_treesitter_capture("comment") or context.in_syntax_group("Comment") then
          return false
        end

        -- Disable completion in markdown files
        if vim.bo.filetype == "markdown" then
          return false
        end

        -- Disable completion in strings
        if context.in_treesitter_capture("string") or context.in_syntax_group("String") then
          return false
        end

        return true
      end,

      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "buffer" },
      }),
    })
  end,
}
