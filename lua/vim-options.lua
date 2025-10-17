vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10

vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.incsearch = true

vim.opt.colorcolumn = "120"
vim.opt.cursorline = true
vim.opt.termguicolors = true

vim.g.mapleader = " "

-- vim.keymap.set("i", "\"", "\"\"<left>")
-- vim.keymap.set("i", "'", "''<left>")
-- vim.keymap.set("i", "(", "()<left>")
-- vim.keymap.set("i", "[", "[]<left>")
-- vim.keymap.set("i", "{", "{}<left>")
-- vim.keymap.set("i", "<", "<><left>")
vim.keymap.set("n", "<ESC>", vim.cmd.nohl)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- set up diagnostics
vim.diagnostic.config({
  virtual_lines = true,
  virtual_text = false
})
vim.keymap.set('n', '<leader>td', function()
  local new_config = not vim.diagnostic.config().virtual_lines
  vim.diagnostic.config({ virtual_lines = new_config })
end, { desc = 'Toggle diagnostic virtual_lines' })

vim.lsp.set_log_level("off") -- log file is getting pretty huge...

vim.filetype.add({
  extension = {
    tofu = 'terraform'
  },
})
