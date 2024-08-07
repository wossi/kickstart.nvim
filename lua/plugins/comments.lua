return {
  {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      signs = true,
      keywords = {
        ToDo = { icon = " ", color = "info" },
        Todo = { icon = " ", color = "info" },
        todo = { icon = " ", color = "info" },
      },
      vim.keymap.set("n", "<leader>tn", function() require("todo-comments").jump_next() end, { desc = "Next todo comment" }),
      vim.keymap.set("n", "<leader>tp", function() require("todo-comments").jump_prev() end, { desc = "Previous todo comment" }),
    },
  },
  {
    "numToStr/Comment.nvim",
    opts = {},
  },
}
