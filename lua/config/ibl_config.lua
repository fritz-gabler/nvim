
local highlight = {
  "IndBlue1", "IndBlue2", "IndBlue3", 
  "IndBlue4", "IndBlue5", "IndBlue6"
}

local hooks = require "ibl.hooks"
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "IndBlue1", { fg = "#9290C3" }) -- lightest blue
  vim.api.nvim_set_hl(0, "IndBlue2", { fg = "#535C91" })
  vim.api.nvim_set_hl(0, "IndBlue3", { fg = "#1B1A55" })
  vim.api.nvim_set_hl(0, "IndBlue4", { fg = "#070F2B" })
  vim.api.nvim_set_hl(0, "IndBlue5", { fg = "#333446" })
  vim.api.nvim_set_hl(0, "IndBlue6", { fg = "#393E46" }) -- darkest blue
end)

require("ibl").setup({
  indent = { char = "▏", highlight = highlight }
})

