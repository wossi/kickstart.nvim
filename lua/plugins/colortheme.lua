return { 
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000, 
  config = function()
    vim.cmd.colorscheme "catppuccin-mocha"
    default_integration = true
  end
}
