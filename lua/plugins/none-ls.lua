return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
    enabled = true,
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.black,
          null_ls.builtins.formatting.isort,
          null_ls.builtins.diagnostics.tfsec,
          null_ls.builtins.diagnostics.trivy,
          null_ls.builtins.code_actions.gomodifytags,
          null_ls.builtins.formatting.goimports_reviser,
          null_ls.builtins.diagnostics.golangci_lint,
        },
      })
      vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
    end,
  },
}
