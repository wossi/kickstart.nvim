return {
  {
    'nvimtools/none-ls.nvim',
    dependencies = {
      'nvimtools/none-ls-extras.nvim',
    },
    enabled = true,
    config = function()
      local null_ls = require 'null-ls'
      null_ls.setup {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.diagnostic.tflint,
      }
      vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
    end,
  },
}
