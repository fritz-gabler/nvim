local highlight = {
  "IndBlue1", "IndBlue2", "IndBlue3", 
  "IndBlue4", "IndBlue5", "IndBlue6"
}

local hooks = require "ibl.hooks"
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "IndBlue1", { fg = "#7da4c2" }) -- lightest blue
  vim.api.nvim_set_hl(0, "IndBlue2", { fg = "#6293b6" })
  vim.api.nvim_set_hl(0, "IndBlue3", { fg = "#4d7ba6" })
  vim.api.nvim_set_hl(0, "IndBlue4", { fg = "#3c618a" })
  vim.api.nvim_set_hl(0, "IndBlue5", { fg = "#27416a" })
  vim.api.nvim_set_hl(0, "IndBlue6", { fg = "#18253a" }) -- darkest blue
end)

require("ibl").setup({
  indent = { char = "▏", highlight = highlight }
})

