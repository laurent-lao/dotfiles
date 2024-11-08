-- Plugin Manager
require("config.lazy")

-- Theme
vim.g.gruvbox_material_background = 'soft'
vim.g.gruvbox_material_foreground = 'material'
vim.cmd("colorscheme gruvbox-material")

-- Neovim UI
vim.o.termguicolors = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.wrap = false
vim.o.showmatch = true
vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.splitright = true
vim.o.splitbelow = true
