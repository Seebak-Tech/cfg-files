-- General settings (vim.o)
-- Global variables.(vim.g)
-- Local to window (vim.wo)
-- Local to buffer(vim.bo)
local g = vim.g
local o = vim.o
local wo = vim.wo
local bo = vim.bo


-- Set the color scheme
o.termguicolors = true
o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

-- Config map leader
g.mapleader = " "
o.mouse = 'a'

-- Better editor UI
o.number = true
o.cursorline = true
o.relativenumber = true
o.numberwidth = 5
o.clipboard = "unnamedplus"

-- Set highlight
vim.cmd([[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=700})
  augroup END
  ]]
)
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.expandtab = true

o.cursorline = true
o.signcolumn = 'yes'
o.sidescrolloff = 4
o.hlsearch = true
o.incsearch = true
o.splitbelow = true
o.splitright = true
o.undofile = true
g.neovide_transparency = 0.9


o.foldmethod = 'expr'
o.foldexpr = 'nvim_treesitter#foldexpr()'
wo.foldminlines = 2
