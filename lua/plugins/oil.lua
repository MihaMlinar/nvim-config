-- file explorer
return {
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {},
		-- Optional dependencies
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- or "nvim-mini/mini.icons"
		lazy = false, -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
		enabled = true,

		config = function()
			require("oil").setup()
		end,
	},
}
