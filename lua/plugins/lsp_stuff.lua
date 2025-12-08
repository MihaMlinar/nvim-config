return {
	{
		"mason-org/mason.nvim",
		opts = {
			registries = {
				"github:mason-org/mason-registry",
				"github:Crashdummyy/mason-registry",
			},
		},
	},
	{
		"seblyng/roslyn.nvim",
		opts = {},
		-- ft = { "cs", "razor" },
		-- config = function()
		-- 	-- local mason_registry = require("mason-registry")
		--
		-- 	local cmd = {
		-- 		"roslyn",
		-- 		"--stdio",
		-- 		"--logLevel=Information",
		-- 		"--extensionLogDirectory=" .. vim.fs.dirname(vim.lsp.get_log_path()),
		-- 		"--razorSourceGenerator=" .. vim.fs.joinpath(rzls_path, "Microsoft.CodeAnalysis.Razor.Compiler.dll"),
		-- 		"--razorDesignTimePath="
		-- 			.. vim.fs.joinpath(rzls_path, "Targets", "Microsoft.NET.Sdk.Razor.DesignTime.targets"),
		-- 		"--extension",
		-- 		vim.fs.joinpath(rzls_path, "RazorExtension", "Microsoft.VisualStudioCode.RazorExtension.dll"),
		-- 	}
		--
		-- 	vim.lsp.config("roslyn", {
		-- 		cmd = cmd,
		-- 		on_attach = function()
		-- 			-- set compiler option when LSP is attached
		-- 			vim.cmd([[compiler dotnet]])
		-- 		end,
		-- 		handlers = require("rzls.roslyn_handlers"),
		-- 		settings = {
		-- 			["csharp|inlay_hints"] = {
		-- 				csharp_enable_inlay_hints_for_implicit_object_creation = true,
		-- 				csharp_enable_inlay_hints_for_implicit_variable_types = true,
		--
		-- 				csharp_enable_inlay_hints_for_lambda_parameter_types = true,
		-- 				csharp_enable_inlay_hints_for_types = true,
		-- 				dotnet_enable_inlay_hints_for_indexer_parameters = true,
		-- 				dotnet_enable_inlay_hints_for_literal_parameters = true,
		-- 				dotnet_enable_inlay_hints_for_object_creation_parameters = true,
		-- 				dotnet_enable_inlay_hints_for_other_parameters = true,
		-- 				dotnet_enable_inlay_hints_for_parameters = true,
		-- 				dotnet_suppress_inlay_hints_for_parameters_that_differ_only_by_suffix = true,
		-- 				dotnet_suppress_inlay_hints_for_parameters_that_match_argument_name = true,
		-- 				dotnet_suppress_inlay_hints_for_parameters_that_match_method_intent = true,
		-- 			},
		-- 			["csharp|code_lens"] = {
		-- 				dotnet_enable_references_code_lens = true,
		-- 			},
		-- 		},
		-- 	})
		--
		-- 	vim.lsp.enable("roslyn")
		-- end,
		-- init = function()
		-- 	-- add the Razor file types before the plugin loads.
		-- 	vim.filetype.add({
		--
		-- 		extension = {
		-- 			razor = "razor",
		-- 			cshtml = "razor",
		-- 		},
		-- 	})
		-- end,
	},
	-- LuaLS setup for easier updating Neovim config
	{
		"folke/lazydev.nvim",
		ft = "lua", -- only load on lua files
		opts = {
			library = {
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			},
		},
	},
}
