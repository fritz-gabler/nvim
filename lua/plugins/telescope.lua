return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Telescope", -- Optional: lazy-load on :Telescope
    opts = {
      defaults = {
        file_ignore_patterns = { "%.o" },
        winblend = 20, -- Add your winblend setting here!
      },
    },
    config = function(_, opts)
      require("telescope").setup(opts)
    end,
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
              -- even more opts
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  },
}
