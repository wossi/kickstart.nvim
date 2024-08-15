return {
  {
    "tigion/nvim-asciidoc-preview",
    ft = { "asciidoc" },
    build = "cd server && npm install",
    config = function()
      require("asciidoc-preview").setup({
        server = {
          converter = "js",
        },
      })
      vim.keymap.set("n", "<leader>dp", ":AsciiDocPreview<CR>",
        { buffer = true, silent = true, desc = "AsciiDoc Preview" })
    end,
  },
}
