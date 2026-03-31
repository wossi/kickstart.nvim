return {
  cmd = { 'terraform-lsp', 'serve', '-log-file', vim.fs.dirname(require('vim.lsp.log').get_filename()) .. "/terraform-ls.log" },
  filetypes = { 'terraform', 'hcl', 'opentofu', 'opentofu-vars', 'tf', 'tofu' },
  root_markers = { '.terraform', '.git' },
}
