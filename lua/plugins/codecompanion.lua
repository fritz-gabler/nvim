return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      adapters = {
        openrouter_claude = function()
          return require("codecompanion.adapters").extend("openai_compatible", {
            env = {
              url = "https://openrouter.ai/api",
              api_key = "OPENROUTER_API_KEY", -- Store securely via environment variable or similar
              chat_url = "/v1/chat/completions",
            },
            schema = {
              model = {
                default = "openai/gpt-oss-20b:free",
              },
            },
          })
        end,
      },
      strategies = {
        chat = { adapter = "openrouter_claude" },
        inline = { adapter = "openrouter_claude" },
      },
    },
  },
}
