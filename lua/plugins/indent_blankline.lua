return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      -- Require your ibl configuration (see highlights.lua below)
      require("config.ibl_config")
    end,
  },
}

