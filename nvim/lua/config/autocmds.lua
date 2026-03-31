vim.api.nvim_create_autocmd("OptionSet", {
  pattern = "background",
  callback = function()
    if vim.o.background == "light" then
      vim.cmd.colorscheme("catppuccin-latte")
    else
      vim.cmd.colorscheme("catppuccin-frappe")
    end
  end,
})
