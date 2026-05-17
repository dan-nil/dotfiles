vim.api.nvim_create_autocmd("OptionSet", {
  pattern = "background",
  callback = function()
    if vim.o.background == "light" then
      require("onedark").setup({ style = "light" })
    else
      require("onedark").setup({ style = "dark" })
    end
    require("onedark").load()
  end,
})
