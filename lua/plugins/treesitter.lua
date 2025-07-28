return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "c",
          "cpp",
          "html",
          "css",
          "javascript",
          "typescript",
          "python",
          "lua",
        },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  }
}
