return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		enabled = false,
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			-- keymaps
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		end,
	},
	{
		"ibhagwan/fzf-lua",
		enabled = true,
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- "nvim-mini/mini.icons"
		-- opts = {},
		config = function()
			require("fzf-lua").setup({ { "ivy" } })
		end,
	},
}
