vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.g.mapleader = " "

vim.cmd("set number")
vim.cmd("set relativenumber")

local opts = {}
require("config.lazy").setup("plugins")
