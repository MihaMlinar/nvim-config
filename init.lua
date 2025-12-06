require("config.options")
require("config.autocmd")
require("config.keymaps")

require("config.lazy")

vim.lsp.enable({ "lua_ls" })
-- Configure LSP diagnostic
vim.diagnostic.config({ virtual_lines = { current_line = true }, virtual_text = false })

-- NOTES:
-- <Alt + o> can trigger new line in insert mode
-- <Shift + i> will put you in insert mode after visual mode selection. Use case would be multi-line editing.
-- <`.> returns to the last change, seems useful
-- Marking can be done with <m>. There is a difference between a Upper case and Lower case. Upper case defines the mark globally so we can jump between the filles.
-- Appending a text EOF can be done with >> just like on UNIX systems. NVIM syntax is :w >> file
-- z= opens spelling error suggestions, :spellr replaces all the words that were corrected with z=
