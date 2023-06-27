return {
  'jay-babu/mason-null-ls.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'williamboman/mason.nvim',
    'jose-elias-alvarez/null-ls.nvim',
  },
  config = function()
    local null_ls = require 'null-ls'
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    local formatting = null_ls.builtins.formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    local diagnostics = null_ls.builtins.diagnostics
    null_ls.setup {
      sources = {
        formatting.stylua,
        formatting.black.with { extra_args = { '--fast' } },
        formatting.prettierd.with { extra_args = { '--single-quote', '--jsx-single-quote' } },
        -- diagnostics.eslint_d,
      },
    }
    require('mason-null-ls').setup {
      ensure_installed = {},
      automatic_installation = true,
    }
  end,
}
