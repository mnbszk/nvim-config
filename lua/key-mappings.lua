-- key mappings
vim.g.mapleader = " "

-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Resize with arrows
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>')
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>')
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>')

vim.keymap.set('n', '<S-l>', ':bnext<CR>')
vim.keymap.set('n', '<S-h>', ':bprevious<CR>')

-- indent and unindent
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')

-- Move selected text up and down
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', 'p', '_dP')

-- save a file
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '\\q', ':wqa<CR>')

-- "+ is the system clipboard register
vim.keymap.set('v', '<leader>y', '"+y', { remap = true })
vim.keymap.set('v', '<leader>d', '"+d', { remap = true })
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p', { remap = true })
vim.keymap.set({'n', 'v'}, '<leader>P', '"+P', { remap = true })

-- enter Visual line mode
vim.keymap.set('n', '<leader><leader>', 'V', { remap = true })
-- go to previous open buffer
vim.keymap.set('n', '<leader><Tab>', '<C-^>')
