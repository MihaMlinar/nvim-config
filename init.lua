require("config.options")
require("config.autocmd")
require("config.keymaps")

require("config.lazy")

local vue_language_server_path = vim.fn.expand("$MASON/packages")
	.. "/vue-language-server"
	.. "/node_modules/@vue/language-server"

local vue_plugin = {
	name = "@vue/typescript-plugin",
	location = vue_language_server_path,
	languages = { "vue" },
	configNamespace = "typescript",
}
-- todo: Figure out why this config setting can't be defined in a lsp/vtsls.lua folder
-- note: maybe the settings prop isn't understood?
vim.lsp.config("vtsls", {
	settings = {
		vtsls = {
			tsserver = {
				globalPlugins = {
					vue_plugin,
				},
			},
		},
	},
	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
})

vim.lsp.enable({ "lua_ls", "vtsls", "vue_ls" })

-- NOTES:
-- <Alt + o> can trigger new line in insert mode
-- <Shift + i> will put you in insert mode after visual mode selection. Use case would be multi-line editing.
-- <`.> returns to the last change, seems useful
-- Marking can be done with <m>. There is a difference between a Upper case and Lower case. Upper case defines the mark globally so we can jump between the filles.
-- Appending a text EOF can be done with >> just like on UNIX systems. NVIM syntax is :w >> file
-- z= opens spelling error suggestions, :spellr replaces all the words that were corrected with z=
