return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			spec = {
				{ "<leader>f", group = "Find" },
				{ "<leader>l", group = "LSP" },
				{ "<leader>g", group = "Git" },
				{ "<leader>c", group = "Code" },
				{ "<leader>s", group = "Selection" },
				{ "<leader><tab>", group = "Tabs" },
			},
		},
	},
}
