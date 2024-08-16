return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-python",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-python")
        },
      })
      vim.keymap.set("n", "<leader>rtt", function() require("neotest").run.run() end, { desc = "[R]un Unit [TT]est" })
      vim.keymap.set("n", "<leader>rtf", function() require("neotest").run.run() end, { desc = "[R]un Unit [T]est [F]ile" })
      vim.keymap.set("n", "<leader>stt", function() require("neotest").run.stop() end, { desc = "[S]top [T]est" })
      vim.keymap.set("n", "<leader>to", function() require("neotest").summary.toggle() end, { desc = "[T]oggle [S]ummary" })
    end,
  },
}
