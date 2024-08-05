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
    },
  },
  {
    "numToStr/Comment.nvim",
    opts = {},
  },
}
