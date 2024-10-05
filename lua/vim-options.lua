-- vim-options.lua
--
-- この記事が参考になる
-- Vimの生産性を高める12の方法
-- https://postd.cc/how-to-boost-your-vim-productivity/

vim.cmd("set ruler")
vim.cmd("set number")
vim.cmd("set numberwidth=4")

vim.cmd("set noswapfile")
vim.cmd("set nobackup")

-- tab and indent
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.cmd("set incsearch")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.cmd("set hlsearch")

vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
