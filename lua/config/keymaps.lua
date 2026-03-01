local map = vim.keymap.set

-- Clear highlights
map("n", "<Esc>", "<Cmd>nohlsearch<CR><Esc>", { silent = true })

-- File save
map({ "i", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Set break-points
map("i", ",", ",<c-g>u")
map("i", ".", ".<c-g>u")
map("i", ";", ";<c-g>u")

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Move Lines
map("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- Terminal
-- note: If <C-c> combination is used it can't stop running programs in terminal
map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

-- Tabs
map("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
map("n", "<leader><tab>o", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
map("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
map("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- Plugins mappings
-- Oil
map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- FzfLua (FIND)
map("n", "<leader>fh", "<CMD>FzfLua helptags<CR>", { desc = "Help tags" })
map("n", "<leader>fg", "<CMD>FzfLua live_grep<CR>", { desc = "Live grep" })
map("n", "<leader>fb", "<CMD>FzfLua buffers<CR>", { desc = "Find open buffers" })
map("n", "<leader>fr", "<CMD>FzfLua resume<CR>", { desc = "Resume last picker" })
map("n", "<leader>ff", "<CMD>FzfLua files<CR>", { desc = "Find files on a path" })
map("n", "<leader>fq", "<CMD>FzfLua quickfix<CR>", { desc = "Open quickfix list" })
map("n", "<leader>fd", "<CMD>FzfLua diagnostics_workspace<CR>", { desc = "Workspace diagnostics" })
map("n", "<leader>fo", "<CMD>FzfLua oldfiles<CR>", { desc = "Recent files" })
map("n", "<leader>fk", "<CMD>FzfLua keymaps<CR>", { desc = "Keymaps" })
map("n", "<leader>fw", "<CMD>FzfLua grep_cword<CR>", { desc = "Grep word under cursor" })
map("v", "<leader>fw", "<CMD>FzfLua grep_visual<CR>", { desc = "Grep visual selection" })
map("n", "<leader>fn", "<CMD>FzfLua files cwd=~/.config/nvim<CR>", { desc = "Find nvim config" })

-- FzfLua (GIT)
map("n", "<leader>gs", "<CMD>FzfLua git_status<CR>", { desc = "Git status" })
map("n", "<leader>gc", "<CMD>FzfLua git_commits<CR>", { desc = "Git commits" })
map("n", "<leader>gb", "<CMD>FzfLua git_branches<CR>", { desc = "Git branches" })

-- FzfLua (LSP)
map("n", "<leader>lr", "<CMD>FzfLua lsp_references<CR>", { desc = "LSP refrences" })
map("n", "<leader>ld", "<CMD>FzfLua lsp_definitions<CR>", { desc = "LSP definitions" })
map("n", "<leader>lt", "<CMD>FzfLua lsp_typedefs<CR>", { desc = "LSP type definitions" })
map("n", "<leader>li", "<CMD>FzfLua lsp_implementations<CR>", { desc = "LSP implementations" })
map("n", "<leader>ls", "<CMD>FzfLua lsp_document_symbols<CR>", { desc = "LSP document symbols" })
map("n", "<leader>lw", "<CMD>FzfLua lsp_live_workspace_symbols<CR>", { desc = "LSP workspace symbols" })

map("n", "<leader>lh", function()
	vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = "Toggle inlay hints" })

map({ "n", "v" }, "<leader>ca", "<CMD>FzfLua lsp_code_actions<CR>", { desc = "Code actions" })
