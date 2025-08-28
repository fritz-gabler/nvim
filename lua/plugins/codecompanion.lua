return {
	{
		"olimorris/codecompanion.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		opts = {
			adapters = {
				http = {
					openrouter_claude = function()
						return require("codecompanion.adapters").extend("openai_compatible", {
							env = {
								url = "https://openrouter.ai/api",
								api_key = "OPENROUTER_API_KEY",
								chat_url = "/v1/chat/completions",
							},
							schema = {
								model = {
									default = "mistralai/mistral-small-3.2-24b-instruct:free",
								},
							},
						})
					end,
					-- If you have adapter-wide options like proxy etc, also move those to `opts` here:
					-- opts = { proxy = "http://proxy:8080" },
				},
			},
			strategies = {
				chat = { adapter = "openrouter_claude" },
				inline = { adapter = "openrouter_claude" },
			},
		},
	},
}
