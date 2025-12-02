local opt = vim.opt
-- lines
opt.rnu = true
opt.scrolloff = 999
opt.sidescrolloff = 20
opt.wrap = false
opt.cursorline = true -- Highlight the line where the cursor is on

-- windows
opt.splitbelow = true
opt.splitright = true
opt.icm = "split" -- Shows changes in a new window

-- tabs
opt.et = true
opt.ts = 2
opt.sw = 2

-- searching
opt.ignorecase = true
opt.smartcase = true

-- What is the diffrence between vim.opt and vim.o

opt.ve = "block" -- <C + q> to use

-- opt.spell = true;
-- opt.spelllang = 'en_us';

vim.g.mapleader = " "

-- For compiling dotnet with :make
vim.g.dotnet_errors_only = false -- Shows compiler warnings
vim.g.dotnet_show_project_file = false -- Shortens the project path
