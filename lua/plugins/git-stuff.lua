-- Adds git related signs to the gutter, as well as utilities for managing changes
-- NOTE: gitsigns is already included in init.lua but contains only the base
-- config. This will add also the recommended keymaps.

return {
  {
    "tpope/vim-fugitive"
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require("gitsigns").setup()
      signs = {
        add = { text = "+" },
      }
      signs_staged = {
        add = { text = "+" },
      }
      vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {})
    end
  },
}

