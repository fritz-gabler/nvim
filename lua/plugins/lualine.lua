return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = "dracula",
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },
				lualine_c = { "filename" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = {
					function()
						-- This returns your system local time, which should be Berlin time if your OS is set to Berlin/CEST
						return os.date("%H:%M")
					end,
				},
			},
		})
	end,
}
