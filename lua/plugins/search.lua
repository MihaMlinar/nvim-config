return {
	{
		"ibhagwan/fzf-lua",
		enabled = true,
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- "nvim-mini/mini.icons"
		-- opts = {},
		config = function()
			require("fzf-lua").setup({
				"ivy",
				file_ignore_patterns = {
					"node_modules/",
					"dist/",
					".git/",
					".gitlab/",
					"build/",
					"target/",
					"package%-lock%.json",
					"pnpm%-lock%.yaml",
					"yarn%.lock",
					"__virtual%.cs$",
				},
			})
		end,
	},
}
