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
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set autoindent")
vim.cmd("set smartindent")

vim.cmd("set laststatus=2")

vim.cmd("set incsearch")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.cmd("set hlsearch")
