vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if require("lazy.status").has_updates() then
      vim.cmd("Lazy update")
    end
  end,
})
