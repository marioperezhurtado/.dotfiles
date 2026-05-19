-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tabs and indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Line wrapping
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakat = [[\ \	;,!?]]
vim.opt.textwidth = 80

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Appearance
vim.opt.termguicolors = true
vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"

-- Scrolling
vim.opt.scrolloff = 8

-- Files, backups, and undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true
vim.opt.isfname:append("@-@")

-- Update timing
vim.opt.updatetime = 50

