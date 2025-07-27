return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "python", "javascript" }, -- choose your languages
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  }
}
